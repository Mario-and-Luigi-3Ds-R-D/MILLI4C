PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x12C
MOV             R6, R1
VLDM            R0, {S0-S1}
MOV             R0, #0x14C
MOV             R5, #0
LDRH            R1, [R0,R4]
LDR             R0, =off_6CE970
VCMPE.F32       S0, S1
LDR             R0, [R0]
VMRS            APSR_nzcv, FPSCR
MOVGE           R5, #1
BL              sub_52FACC
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
CMP             R0, #0
BEQ             loc_14D004
CMP             R5, #0
BEQ             loc_14D018
LDR             R1, [R4]
MOV             R0, R4
LDR             R1, [R1,#4]
POP             {R4-R6,LR}
BX              R1
VLDR            S1, [R4,#0x100]
VLDR            S0, [R4,#0x12C]
LDR             R5, [R4,#0x40]
MOV             R3, #1
VMUL.F32        S0, S1, S0
MOV             R2, R3
MOV             R1, R6
VCVT.S32.F32    S0, S0
VMOV            R0, S0
ADD             R0, R0, R5
STR             R0, [R4,#0x40]
MOV             R0, R4
BL              sub_14B490
STR             R5, [R4,#0x40]
POP             {R4-R6,PC}
