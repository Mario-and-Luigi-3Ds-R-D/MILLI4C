PUSH            {R3-R9,LR}
MOV             R5, R1
MOV             R4, #0
LDR             R1, =off_6B2634
STR             R4, [R0,#4]
STR             R1, [R0]
STR             R4, [R0,#8]
STR             R4, [R0,#0xC]
STR             R4, [R0,#0x10]!
ADD             R0, R0, #4
BL              sub_572CF0
LDR             R2, =off_6B8AD4
SUB             R0, R0, #0x14
MOV             R8, #0xFFFFFFFF
STR             R2, [R0,#0x20]
STR             R4, [R0,#0x2C]
LDR             R1, =off_67E18C
STRB            R8, [R0,#0x3C]
STRB            R4, [R0,#0x3D]
STRB            R4, [R0,#0x3E]
STR             R8, [R0,#0x40]
LDR             R2, [R1,#(dword_67E3CC - 0x67E18C)]
LDR             R1, [R1,#(dword_67E3D0 - 0x67E18C)]
ADD             R3, R0, #0x50 ; 'P'
STR             R2, [R0,#0x4C]
STM             R3, {R1,R4}
STR             R4, [R0,#0x58]
STR             R4, [R0,#0x5C]
STR             R4, [R0,#0x60]
STRH            R4, [R0,#0x64]
STR             R4, [R0,#0x68]
STRH            R4, [R0,#0x6C]
STR             R4, [R0,#0x70]
STR             R4, [R0,#0x74]
STR             R4, [R0,#0x78]
STRH            R4, [R0,#0x7C]
STR             R4, [R0,#0x80]
STR             R4, [R0,#0x84]
STR             R4, [R0,#0x88]
STR             R4, [R0,#0x8C]
STR             R4, [R0,#0x94]
STR             R4, [R0,#0x9C]
STR             R4, [R0,#0xA0]
STR             R4, [R0,#0xA4]
STR             R4, [R0,#0xA8]
STR             R4, [R0,#0xAC]
STR             R4, [R0,#0xB0]
STR             R4, [R0,#0xB4]
LDRB            R2, [R0,#0xB8]
BIC             R2, R2, #1
STRB            R2, [R0,#0xB8]
STR             R4, [R0,#0xBC]
STR             R4, [R0,#0xC0]
STR             R4, [R0,#0xC4]
LDR             R2, [R0,#0xC8]
BIC             R2, R2, #0xFF
STR             R2, [R0,#0xC8]!
ADD             R0, R0, #4
BL              sub_4E60A0
SUB             R0, R0, #0xCC
VLDR            S0, =-20.0
ADD             R2, R0, #0x128
VSTR            S0, [R0,#0x124]
VLDR            S0, =0.0
VLDR            S1, =80.0
ADD             R1, R0, #0x124
VSTM            R2, {S0-S1}
ADD             R2, R0, #0x138
VLDR            S1, =190.0
VSTR            S1, [R0,#0x130]
VSTR            S0, [R0,#0x134]
VLDR            S0, =-80.0
VSTM            R2, {S0-S1}
MOV             R2, #0x1E
STRH            R2, [R1,#0x1C]
STR             R4, [R0,#0x144]
STR             R4, [R0,#0x148]
STRB            R4, [R0,#0x14C]
LDR             R2, [R0,#0x14C]
ADD             R1, R0, #0x4000
BIC             R2, R2, #0x3F00
ORR             R2, R2, #0x1400
STR             R2, [R0,#0x14C]
ADD             R0, R0, #0x4000
STR             R4, [R1,#0x178]
ADD             R0, R0, #0x180
STR             R4, [R1,#0x17C]
BL              sub_1E8750
ADD             R0, R0, #0xAC
BL              sub_2AAD7C
LDR             R6, =off_6D1648
SUB             R4, R0, #0x4000
SUB             R4, R4, #0x22C
STR             R4, [R6]
BL              sub_59B788
ADD             R0, R4, #0x4000
MOV             R2, #0x24 ; '$'
MOV             R1, R5
ADD             R0, R0, #0x22C
BL              sub_1103A4
MOV             R1, #0x4000
MOV             R0, SP
REV             R1, R1
STR             R1, [SP,#0x20+var_20]
BL              sub_11027C
MOV             R2, #8
MOV             R1, #0
ADD             R0, R4, #0xBC
BL              sub_110BE4
LDR             R0, =off_6CED48
LDR             R0, [R0]
LDRB            R1, [R0,#0x98]
STRB            R1, [R4,#0x174]
LDRB            R0, [R0,#0x124]
ADD             R1, R4, #0x34 ; '4'
STRB            R0, [R4,#0x175]
MOV             R0, #2
BL              sub_10B6DC
MOV             R5, #1
ADD             R0, R4, R5,LSL#2
LDR             R0, [R0,#0x34]
BL              sub_10AEA0
MOV             R1, #0x200
MOV             R0, #0x88000
BL              sub_10B110
SUBS            R5, R5, #1
NOP
BPL             loc_1F36C0
LDR             R0, =0x702
BL              sub_6126B8
LDR             R9, =0x70AC
MOV             R3, #0
LDR             R1, =dword_6ED9B8
MOV             R2, R3
MOV             R0, R9
BL              sub_10A358
MOVS            R5, R0
NOP
BEQ             loc_1F3784
MOV             R1, R9
BL              sub_2FFE8C
LDR             R2, [R5,#0x14]
LDR             R1, =nullsub_962
MOV             R3, #4
BIC             R2, R2, #0xFF
STR             R2, [R5,#0x14]
MOV             R2, #0x114
ADD             R0, R5, #0x16C
BLX             sub_1002F4
ADD             R0, R0, #0x400
LDR             R1, =nullsub_962
MOV             R3, #1
MOV             R2, #0x114
ADD             R0, R0, #0x1A4
BLX             sub_1002F4
LDR             R1, =nullsub_1039
MOV             R3, #0x3E ; '>'
MOV             R2, #0x114
ADD             R0, R0, #0x3D8
BLX             sub_1002F4
ADD             R0, R0, #0x4400
LDR             R1, =nullsub_1039
MOV             R3, #0x1E
MOV             R2, #0x114
ADD             R0, R0, #0x16C
BLX             sub_1002F4
SUB             R0, R0, #0x5000
SUB             R0, R0, #0x54 ; 'T'
ADD             R5, R4, #0x4000
MOV             R3, #0
STR             R0, [R5,#0x178]
LDR             R1, =dword_6ED9B8
MOV             R2, R3
MOV             R0, #0xA000
BL              sub_1143B4
LDR             R1, [R5,#0x230]
STR             R0, [R5,#0x17C]
TST             R1, #1
BEQ             loc_1F37BC
LDR             R0, [R4,#0xC8]
ORR             R0, R0, #8
STR             R0, [R4,#0xC8]
LDR             R0, =unk_6E8CD0
LDRB            R0, [R0,#(byte_6E8E74 - 0x6E8CD0)]
TST             R0, #4
BNE             loc_1F3830
LDR             R0, [R4,#0xC8]
TST             R0, #8
LDREQ           R1, [R6,#(off_6D164C - 0x6D1648)]
CMPEQ           R1, #0
BNE             loc_1F3830
ORR             R0, R0, #0x40 ; '@'
STR             R0, [R4,#0xC8]
LDR             R0, [R4,#0x14C]
ORR             R0, R0, #0x2000
STR             R0, [R4,#0x14C]
BL              sub_59B718
MOV             R6, R0
ADD             R7, R0, #0x7000
LDR             R0, [R5,#0x178]
ADD             R7, R7, #0xAC
MOV             R2, R9
MOV             R1, R6
BL              sub_1103A4
LDR             R2, [R6,#0xC]
LDR             R0, [R5,#0x17C]
MOV             R1, R7
BL              sub_1103A4
NOP
NOP
BL              sub_59B6F0
LDR             R0, [R4,#0xE0]
MOV             R2, #0xFFFFFF9C
BIC             R0, R0, #3
STR             R0, [R4,#0xE0]
STRH            R8, [R4,#0xE4]
STRH            R8, [R4,#0xE6]
STRH            R8, [R4,#0xE8]
STRH            R8, [R4,#0xEA]
LDR             R0, [R4,#0xEC]
BIC             R1, R0, #3
ADD             R0, R4, #0x4200
STR             R1, [R4,#0xEC]
STR             R2, [R4,#0x148]
LDRH            R1, [R0,#0x2C]
STR             R1, [R4,#0x154]
LDRSH           R0, [R0,#0x2E]
LDR             R1, =off_67E18C
STR             R0, [R4,#0x158]
LDRD            R0, R1, [R1]
STRD            R0, R1, [R4,#0x44]
MOV             R0, R4
POP             {R3-R9,PC}
