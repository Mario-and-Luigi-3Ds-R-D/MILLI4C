PUSH            {R4,LR}
LDR             R0, =unk_711E8C
MOVS            R1, #0x50 ; 'P'
BLX             sub_2FFE8C
LDR             R0, =unk_711EDC
MOVS            R1, #0x50 ; 'P'
BLX             sub_2FFE8C
LDR             R0, =unk_711F2C
MOVS            R1, #0x50 ; 'P'
BLX             sub_2FFE8C
LDR             R0, =dword_6E12A4
LDR             R1, =unk_711E8C
LDR             R3, =unk_711EDC
LDR             R2, =dword_6E12AC
STR             R1, [R0]
LDR             R0, =dword_6E12A8
STR             R3, [R0]
LDR             R0, =unk_711F2C
STR             R0, [R2]
ADDS            R2, R3, #1
STR             R2, [R1,#(dword_711ED8 - 0x711E8C)]
ADDS            R1, R0, #1
STR             R1, [R3,#(dword_711F28 - 0x711EDC)]
MOVS            R1, #1
STR             R1, [R0,#(dword_711F78 - 0x711F2C)]
LDR             R0, =(unk_6982B4 - 0x10130A)
LDR             R2, =unk_711E8C
ADR             R1, dword_1013F0
ADD             R0, PC; unk_6982B4
BL              sub_2FFEE0
CMP             R0, #0
BNE             loc_10131A
LDR             R0, =(unk_6982B4 - 0x10130A)
ADD             R0, PC; unk_6982C0
SUBS            R0, #0xC
BL              sub_2FFFC8
LDR             R0, =(unk_6982B5 - 0x101324)
LDR             R2, =unk_711EDC
ADR             R1, dword_1013F8
ADD             R0, PC; unk_6982B5
BL              sub_2FFEE0
CMP             R0, #0
BNE             loc_101334
LDR             R0, =(unk_6982B5 - 0x101324)
ADD             R0, PC; unk_6982C1
SUBS            R0, #0xC
BL              sub_2FFFC8
LDR             R0, =(unk_6982B6 - 0x10133E)
LDR             R2, =unk_711F2C
ADR             R1, dword_1013F8
ADD             R0, PC; unk_6982B6
BL              sub_2FFEE0
CMP             R0, #0
BNE             loc_10134E
LDR             R0, =(unk_6982B6 - 0x10133E)
ADD             R0, PC; unk_6982C2
SUBS            R0, #0xC
BL              sub_2FFFC8
MOVS            R3, #0x40 ; '@'
LDR             R0, =unk_711E8C
LSLS            R4, R3, #3
MOVS            R2, R4
MOVS            R1, #0
BL              sub_2FFFD4
CMP             R0, #0
BEQ             loc_10136A
LDR             R0, =(unk_6982B4 - 0x10130A)
ADD             R0, PC; unk_698310
SUBS            R0, #0x5C ; '\'
BL              sub_2FFFC8
LDR             R0, =unk_711EDC
MOVS            R3, #0x40 ; '@'
MOVS            R2, R4
MOVS            R1, #0
BL              sub_2FFFD4
CMP             R0, #0
BEQ             loc_101384
LDR             R0, =(unk_6982B5 - 0x101324)
ADD             R0, PC; unk_698311
SUBS            R0, #0x5C ; '\'
BL              sub_2FFFC8
LDR             R0, =unk_711F2C
MOVS            R3, #0x10
MOVS            R2, R4
MOVS            R1, #0
BL              sub_2FFFD4
CMP             R0, #0
BEQ             locret_10139E
LDR             R0, =(unk_6982B6 - 0x10133E)
ADD             R0, PC; unk_698312
SUBS            R0, #0x5C ; '\'
BL              sub_2FFFC8
POP             {R4,PC}
