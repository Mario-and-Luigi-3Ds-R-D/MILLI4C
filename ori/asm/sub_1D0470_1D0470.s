PUSH            {R3-R11,LR}
MOV             R7, R0
BL              sub_528E64
LDR             R1, =sub_10640C
LDR             R10, =0xC004
MOV             R4, R0
LDR             R0, [R0,#0x2A8]
ORR             R11, R10, R1,ASR#20
ADD             R1, R1, R7
CMP             R0, #0
ADD             R9, R7, #0x1A0000
STR             R1, [SP,#0x28+var_28]
BEQ             loc_1D04B0
BL              sub_5EC344
CMP             R0, #0
BEQ             loc_1D04E4
LDR             R0, =0x10645C
MOV             R6, #0
ADD             R0, R0, R7
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
LDRNE           R5, [R4,#8]
MOVEQ           R5, #0
BNE             loc_1D0550
B               loc_1D05E0
MOV             R0, R4
BL              sub_148688
STR             R0, [R4,#0x140]
LDRB            R2, [R4,#0x495]
MOV             R1, R10
MOV             R0, R7
CMP             R2, #0
ADD             R5, R4, #0x400
MOVNE           R1, R11
BL              sub_52FACC
LDRB            R2, [R5,#0x95]
LDR             R1, =0xC0049
MOV             R4, R0
CMP             R2, #0
ADD             R0, R1, #1
MOVNE           R1, R0
MOV             R3, #0
MOV             R2, #0x10000
MOV             R0, R4
BL              sub_572670
LDR             R0, [SP,#0x28+var_28]
MOV             R1, R4
BL              sub_1CF9FC
LDR             R1, =unk_653FC0
LDR             R0, [R1,#(off_65414C - 0x653FC0)]; sub_1D34E0
LDR             R1, [R1,#(dword_654150 - 0x653FC0)]
B               loc_1D05EC
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_1D05CC
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
MOV             R1, R10
LDRB            R0, [R0,#0x495]
CMP             R0, #0
MOVNE           R1, R11
MOV             R0, R7
BL              sub_52FACC
CMP             R4, #0
MOV             R8, R0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
MOV             R3, #0
LDRB            R0, [R0,#0x495]
MOV             R2, #0x10000
CMP             R0, #0
LDREQ           R1, =0xC0047
LDRNE           R1, =0xC0048
MOV             R0, R8
BL              sub_572670
LDR             R0, [SP,#0x28+var_28]
MOV             R1, R8
BL              sub_1CF9FC
MOVS            R4, R5
MOVEQ           R5, #0
LDRNE           R5, [R4,#8]
CMP             R4, R6
BNE             loc_1D0550
LDR             R1, =unk_653FC0
LDR             R0, [R1,#(off_654154 - 0x653FC0)]; sub_1D3AA8
LDR             R1, [R1,#(dword_654158 - 0x653FC0)]
STRD            R0, R1, [R9,#0x5C]
POP             {R3-R11,PC}
