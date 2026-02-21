import idaapi
import idc
import struct

#This loader is designed to better support .cro files, CRO untested CRS works good.

CRO_SIGNATURE     = b"CRO0"
CRO_FORMAT_NAME   = "CRO (CTR relocatable object)"

def accept_file(li, n):
    """Check if file is a CRO."""
    if n > 0:
        return 0
    li.seek(0x80)
    if li.read(4) == CRO_SIGNATURE:
        return CRO_FORMAT_NAME
    return 0

def DecodeTag(segmentTable, tag):
    target_segment = tag & 0xF
    target_rel_offset = tag >> 4
    return segmentTable[target_segment] + target_rel_offset

def do_import_name(ea, name):
    idc.set_name(ea, "_import_" + name, idc.SN_CHECK)
    if idc.get_wide_dword(ea - 4) == 0xE51FF004:
        idc.set_name(ea - 4, name, idc.SN_CHECK)

def do_import_batch(li, segmentTable, batchOffset, name):
    li.seek(batchOffset)
    while True:
        buf = li.read(12)
        if len(buf) < 12:
            break
        target, patch_type, is_end, is_resolved, _, shift = struct.unpack("<IBBBBI", buf)
        target_offset = DecodeTag(segmentTable, target)
        do_import_name(target_offset, name)
        if is_end != 0:
            break

def load_cro(li, is_crs):
    base = 0 if is_crs else 0x00100000

    li.seek(0x80)
    header_data = li.read(0x138 - 0x80)
    header = struct.unpack("<IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII", header_data)
    (
        Magic, NameOffset, NextCRO, PreviousCRO, FileSize, BssSize, FixedSize, UnknownZero,
        UnkSegmentTag, OnLoadSegmentTag, OnExitSegmentTag, OnUnresolvedSegmentTag,
        CodeOffset, CodeSize, DataOffset, DataSize, ModuleNameOffset, ModuleNameSize,
        SegmentTableOffset, SegmentNum, ExportNamedSymbolTableOffset, ExportNamedSymbolNum,
        ExportIndexedSymbolTableOffset, ExportIndexedSymbolNum, ExportStringsOffset, ExportStringsSize,
        ExportTreeTableOffset, ExportTreeNum, ImportModuleTableOffset, ImportModuleNum,
        ExternalPatchTableOffset, ExternalPatchNum, ImportNamedSymbolTableOffset, ImportNamedSymbolNum,
        ImportIndexedSymbolTableOffset, ImportIndexedSymbolNum, ImportAnonymousSymbolTableOffset,
        ImportAnonymousSymbolNum, ImportStringsOffset, ImportStringsSize, StaticAnonymousSymbolTableOffset,
        StaticAnonymousSymbolNum, InternalPatchTableOffset, InternalPatchNum, StaticPatchTableOffset, StaticPatchNum
    ) = header

    if not is_crs:
        li.file2base(0, base, base + FileSize, 0)
        idaapi.add_segm(0, base, base + 0x80, "header", "RODATA")
        idaapi.add_segm(0, base + SegmentTableOffset, base + DataOffset, "tables", "RODATA")

    li.seek(SegmentTableOffset)
    segmentDic = [
        ("CODE", ".text"),
        ("DATA", ".rodata"),
        ("DATA", ".data"),
        ("BSS", ".bss")
    ]
    segmentAddress = []
    for i in range(SegmentNum):
        buf = li.read(12)
        if len(buf) < 12:
            break
        SegmentOffset, SegmentSize, SegmentType = struct.unpack("<III", buf)
        if SegmentType == 3:
            SegmentOffset = 0x08000000
            idaapi.enable_flags(base + SegmentOffset, base + SegmentOffset + SegmentSize, idaapi.STT_VA)
        segmentAddress.append(base + SegmentOffset)
        if SegmentSize:
            idaapi.add_segm(0, segmentAddress[i], segmentAddress[i] + SegmentSize,
                            segmentDic[SegmentType][1], segmentDic[SegmentType][0])

    li.seek(InternalPatchTableOffset)
    for _ in range(InternalPatchNum):
        buf = li.read(12)
        if len(buf) < 12:
            break
        target, patch_type, source, _, _, shift = struct.unpack("<IBBBBI", buf)
        target_offset = DecodeTag(segmentAddress, target)
        source_offset = segmentAddress[source] + shift
        if patch_type == 2:
            value = source_offset
        elif patch_type == 3:
            rel = source_offset - target_offset
            if rel < 0:
                rel += 0x100000000
            value = rel
        idc.patch_dword(target_offset, value)
        f = idaapi.fixup_data_t()
        f.type = idaapi.FIXUP_OFF32
        f.off = value
        idaapi.set_fixup(target_offset, f)

    li.seek(ImportNamedSymbolTableOffset)
    importNamedSymbolTable = [struct.unpack('<II', li.read(8)) for _ in range(ImportNamedSymbolNum)]

    for nameOffset, batchOffset in importNamedSymbolTable:
        li.seek(nameOffset)
        name_bytes = b""
        while True:
            c = li.read(1)
            if c == b'\0' or c == b'':
                break
            name_bytes += c
        name = name_bytes.decode('utf-8')
        do_import_batch(li, segmentAddress, batchOffset, name)

    li.seek(ImportModuleTableOffset)
    modules = [struct.unpack('<IIIII', li.read(20)) for _ in range(ImportModuleNum)]

    for m in modules:
        moduleNameOffset, indexed, indexedNum, anonymous, anonymousNum = m
        li.seek(moduleNameOffset)
        mname_bytes = b""
        while True:
            c = li.read(1)
            if c == b'\0' or c == b'':
                break
            mname_bytes += c
        mname = mname_bytes.decode('utf-8')

        li.seek(indexed)
        indexeds = [struct.unpack('<II', li.read(8)) for _ in range(indexedNum)]

        li.seek(anonymous)
        anonymouses = [struct.unpack('<II', li.read(8)) for _ in range(anonymousNum)]

        for index, batchOffset in indexeds:
            do_import_batch(li, segmentAddress, batchOffset, f"{mname}_{index}")

        for tag, batchOffset in anonymouses:
            do_import_batch(li, segmentAddress, batchOffset, f"{mname}_{tag:08X}")

    li.seek(ExportNamedSymbolTableOffset)
    exportNamedSymbolTable = [struct.unpack('<II', li.read(8)) for _ in range(ExportNamedSymbolNum)]

    for nameOffset, target in exportNamedSymbolTable:
        target_offset = DecodeTag(segmentAddress, target)
        li.seek(nameOffset)
        name_bytes = b""
        while True:
            c = li.read(1)
            if c == b'\0' or c == b'':
                break
            name_bytes += c
        name = name_bytes.decode('utf-8')

        seg = idaapi.getseg(target_offset)
        if seg and seg.type == idaapi.SEG_CODE:
            target_offset &= ~1

        idaapi.add_entry(target_offset, target_offset, name, seg and seg.type == idaapi.SEG_CODE)
        idc.set_name(target_offset, name, idc.SN_PUBLIC)

    li.seek(ExportIndexedSymbolTableOffset)
    for i in range(ExportIndexedSymbolNum):
        target, = struct.unpack('<I', li.read(4))
        target_offset = DecodeTag(segmentAddress, target)
        seg = idaapi.getseg(target_offset)
        if seg and seg.type == idaapi.SEG_CODE:
            target_offset &= ~1
        idaapi.add_entry(i, target_offset, f"indexedExport_{i}", seg and seg.type == idaapi.SEG_CODE)
        idc.set_name(target_offset, f"indexedExport_{i}", idc.SN_PUBLIC)

def load_file(li, neflags, format):
    if format == CRO_FORMAT_NAME:
        idaapi.set_processor_type("arm", idaapi.SETPROC_ALL | idaapi.SETPROC_FATAL)
        load_cro(li, False)
        print("Load OK")
        return 1
    return 0

def load_crs(name):
    with open(name, "rb") as f:
        load_cro(f, True)
