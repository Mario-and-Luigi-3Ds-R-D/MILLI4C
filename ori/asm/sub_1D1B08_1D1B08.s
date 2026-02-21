PUSH            {R4-R10,LR}
MOV             R7, #0
MOV             R9, R0
LDR             R0, =0x10645C
VPUSH           {D8}
ADD             R0, R0, R9
SUB             SP, SP, #0x10
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
LDRNE           R5, [R4,#8]
MOVEQ           R5, #0
BEQ             loc_1D1C48
LDR             R10, =off_6CE970
VLDR            S16, =80.0
VLDR            S17, =0.5
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_1D1C34
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
LDR             R6, [R0,#0x18]
CMP             R6, #0
BEQ             loc_1D1C34
LDR             R0, [R6]
MOV             R2, #0
MOV             R1, SP
LDR             R3, [R0,#0x24]
MOV             R0, R6
BLX             R3
VLDR            S0, [SP,#0x38+var_38]
MOV             R2, SP
MOV             R3, #1
VADD.F32        S0, S0, S16
MOV             R1, R2
VSTR            S0, [SP,#0x38+var_38]
LDR             R0, [R10]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_5F1314
MOV             R0, #0x400
NOP
BL              sub_11C418
RSB             R0, R0, #0
VMOV            S1, R0
VLDR            S0, [SP,#0x38+var_38]
ADD             R0, R6, #0x1DC
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S17
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVLE           R8, #0
MOVGT           R8, #1
BL              sub_5F19B8
BICS            R0, R0, R8
NOP
BNE             loc_1D1C60
MOVS            R0, R4
SUBNE           R0, R4, #0x1AC
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_1D1C34
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_4F1DA0
MOVS            R4, R5
MOVEQ           R5, #0
LDRNE           R5, [R4,#8]
CMP             R4, R7
BNE             loc_1D1B54
LDR             R2, =unk_653FC0
ADD             R0, R9, #0x1A0000
ADD             R0, R0, #0x5C ; '\'
LDR             R1, [R2,#(off_654054 - 0x653FC0)]; sub_1D2E50
LDR             R2, [R2,#(dword_654058 - 0x653FC0)]
STM             R0, {R1,R2}
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R10,PC}
