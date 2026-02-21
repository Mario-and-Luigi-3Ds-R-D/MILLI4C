PUSH            {R4-R8,LR}
ADD             R4, R0, #0x1A0000
ADD             R8, R0, #0x1A0000
ADD             R8, R8, #0x64 ; 'd'
VPUSH           {D8}
MOV             R5, R0
LDR             R1, [R8]
LDR             R6, [R4,#0x60]
LDR             R7, [R4,#0x5C]
SUB             SP, SP, #8
LDR             R0, [R1,#0xC]
LDR             R1, [R1,#8]
TST             R0, #1
ADD             R0, R5, R0,ASR#1
BEQ             loc_1D32DC
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BLX             R1
LDR             R0, [R4,#0x5C]
CMP             R0, R7
BNE             loc_1D3314
CMP             R0, #0
BNE             loc_1D3308
LDR             R1, [R4,#0x60]
ORR             R1, R1, R6
TST             R1, #1
BEQ             loc_1D3360
LDR             R1, [R4,#0x60]
CMP             R1, R6
BEQ             loc_1D3360
LDR             R1, [R8]
LDR             R2, [R4,#0x60]
ADD             R1, R1, #8
STM             R1, {R0,R2}
LDR             R0, [R4,#0x64]
LDR             R1, [R0,#8]
LDR             R0, [R0,#0xC]
CMP             R1, #0
BNE             loc_1D3348
TST             R0, #1
BEQ             loc_1D3354
CMP             R0, #0
BEQ             loc_1D3354
STR             R6, [R4,#0x60]
STR             R7, [R4,#0x5C]
B               loc_1D3360
LDR             R1, =unk_653FC0
LDRD            R0, R1, [R1,#(dword_65400C - 0x653FC0)]
STRD            R0, R1, [R4,#0x5C]
MOV             R1, #0
MOV             R0, #0x200
BL              sub_4802F8
MOVS            R6, R0
MOVNE           R0, #0
BEQ             loc_1D3434
ORRS            R0, R0, R6
BEQ             loc_1D3428
LDR             R1, =off_6540D4
VLDR            S16, =30.0
LDM             R1, {R0,R1}
STRD            R0, R1, [R4,#0x5C]
LDR             R0, =0x19DFB0
ADD             R4, R5, R0
MOV             R0, #0
REV             R0, R0
STR             R0, [SP,#0x28+var_28]
MOV             R0, R4
BL              sub_4E63E0
LDR             R0, [SP,#0x28+var_28]
VMOV.F32        S0, S16
ADD             R1, SP, #0x28+var_24
STR             R0, [R4,#4]
STR             R0, [R4]
MOV             R0, #0xFF
REV             R0, R0
STR             R0, [SP,#0x28+var_24]
MOV             R0, R4
BL              sub_4E665C
LDR             R0, =0x19DF78
ADD             R4, R5, R0
MOV             R0, #0
REV             R0, R0
STR             R0, [SP,#0x28+var_28]
MOV             R0, R4
BL              sub_4E63E0
LDR             R0, [SP,#0x28+var_28]
VMOV.F32        S0, S16
MOV             R1, SP
STR             R0, [R4,#4]
STR             R0, [R4]
MOV             R0, #0xFF
REV             R0, R0
STR             R0, [SP,#0x28+var_28]
MOV             R0, R4
BL              sub_4E665C
LDR             R0, =0xFFE683CC
MOV             R1, #0x1E
SUB             R0, R5, R0
BL              sub_503664
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R8,PC}
MOV             R1, #0
MOV             R0, #8
BL              sub_4802F8
CMP             R0, #0
NOP
BEQ             loc_1D3378
LDR             R2, =dword_6E2378
MOV             R1, #3
MOV             R0, #1
STRB            R1, [R2,#(byte_6E238B - 0x6E2378)]
B               loc_1D3378
