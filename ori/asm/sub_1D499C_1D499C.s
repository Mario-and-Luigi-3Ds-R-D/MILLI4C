PUSH            {R4-R10,LR}
MOV             R5, R0
ADD             R0, R0, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R0, R0, #0x3D8
ADD             R7, R5, #0x1A0000
VLDM            R0, {S0-S1}
ADD             R7, R7, #0x64 ; 'd'
ADD             R4, R5, #0x1A0000
LDR             R1, [R7]
LDR             R6, [R4,#0x60]
VCMPE.F32       S0, S1
LDR             R8, [R4,#0x5C]
LDR             R0, [R1,#0xC]
LDR             R1, [R1,#8]
VMRS            APSR_nzcv, FPSCR
MOVGE           R9, #1
MOVLT           R9, #0
TST             R0, #1
ADD             R0, R5, R0,ASR#1
BEQ             loc_1D49F8
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BLX             R1
LDR             R0, [R4,#0x5C]
CMP             R0, R8
BNE             loc_1D4A30
CMP             R0, #0
BNE             loc_1D4A24
LDR             R1, [R4,#0x60]
ORR             R1, R1, R6
TST             R1, #1
BEQ             loc_1D4A7C
LDR             R1, [R4,#0x60]
CMP             R1, R6
BEQ             loc_1D4A7C
LDR             R1, [R7]
LDR             R2, [R4,#0x60]
ADD             R1, R1, #8
STM             R1, {R0,R2}
LDR             R0, [R4,#0x64]
LDR             R1, [R0,#8]
LDR             R0, [R0,#0xC]
CMP             R1, #0
BNE             loc_1D4A64
TST             R0, #1
BEQ             loc_1D4A70
CMP             R0, #0
BEQ             loc_1D4A70
STR             R6, [R4,#0x60]
STR             R8, [R4,#0x5C]
B               loc_1D4A7C
LDR             R1, =unk_653FC0
LDRD            R0, R1, [R1,#(dword_65400C - 0x653FC0)]
STRD            R0, R1, [R4,#0x5C]
CMP             R9, #0
BEQ             locret_1D4B10
LDR             R0, =dword_6E2378
LDRB            R0, [R0,#(byte_6E238B - 0x6E2378)]
CMP             R0, #3
LDR             R0, [R4,#0x58]
MOVEQ           R1, #2
MOVNE           R1, #1
STRB            R1, [R0,#0x10]
LDR             R0, [R7]
MOV             R1, #0
STR             R1, [R7]
CMP             R0, #0
BEQ             loc_1D4AE4
ADD             R0, R0, #0x800
ADD             R0, R0, #0xC
BL              sub_14F3EC
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
SUB             R0, R0, #0x3F8
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x10
NOP
BL              sub_300FD4
LDR             R1, =0x19B5C4
LDR             R0, =dword_6D1F40
VLDR            S0, =2.0
LDR             R1, [R1,R5]
STR             R1, [R0]
LDR             R0, =0x19DFB0
ADD             R0, R0, R5
BL              sub_4E64EC
LDR             R1, =off_6540DC
LDM             R1, {R0,R1}
STRD            R0, R1, [R4,#0x5C]
POP             {R4-R10,PC}
