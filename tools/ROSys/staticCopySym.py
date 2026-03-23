import struct, csv
from pathlib import Path

AXF = Path("build/US_1.0/MILLI4C.axf")
OUT = Path("data/Version/US_1.0/static_symbols_candidate.csv")

data = AXF.read_bytes()

e_shoff     = struct.unpack_from("<I", data, 0x20)[0]
e_shentsize = struct.unpack_from("<H", data, 0x2E)[0]
e_shnum     = struct.unpack_from("<H", data, 0x30)[0]
e_shstrndx  = struct.unpack_from("<H", data, 0x32)[0]

def raw_sh(i):
    b = e_shoff + i * e_shentsize
    return struct.unpack_from("<IIIIIIIIII", data, b)

raw = [raw_sh(i) for i in range(e_shnum)]
shstrtab = data[raw[e_shstrndx][4] : raw[e_shstrndx][4] + raw[e_shstrndx][5]]

def cstr(d, o):
    end = d.index(b"\x00", o)
    return d[o:end].decode("ascii", errors="replace")

TEXT_VA   = 0x100000
SHF_WRITE = 0x1
SHF_ALLOC = 0x2
SHF_EXEC  = 0x4

symbols = []
for i, r in enumerate(raw):
    if r[1] != 2:
        continue
    strtab = data[raw[r[6]][4] : raw[r[6]][4] + raw[r[6]][5]]
    esz = r[9] or 16
    for j in range(0, r[5], esz):
        st_name, st_value, st_size, st_info, _, st_shndx = struct.unpack_from("<IIIBBH", data[r[4]:], j)
        bind  = (st_info >> 4) & 0xF
        stype = st_info & 0xF
        if bind not in (1, 2): continue
        if st_shndx == 0: continue
        name = cstr(strtab, st_name)
        if not name: continue

        if st_shndx < len(raw):
            sec = raw[st_shndx]
            flags = sec[2]
            if flags & SHF_EXEC:
                seg = 0
            elif flags & SHF_WRITE:
                seg = 2
            else:
                seg = 1
        else:
            seg = 0

        symbols.append((name, seg, st_value))

symbols.sort(key=lambda x: x[0])

OUT.parent.mkdir(parents=True, exist_ok=True)
with open(OUT, "w", newline="") as f:
    w = csv.writer(f)
    w.writerow(["symbol_name", "segment_index", "offset"])
    for name, seg, va in symbols:
        w.writerow([name, seg, hex(va)])

print(f"Wrote {len(symbols)} symbols to {OUT}")