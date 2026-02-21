PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6CE970
VLDR            S1, =0.0039062
LDR             R0, [R6]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #0x104
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_4E625C
ADD             R1, R4, #0x12C
MOV             R0, #0x14C
VLDM            R1, {S0-S1}
MOV             R5, #0
LDRH            R1, [R0,R4]
LDR             R0, [R6]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R5, #1
BL              sub_52FACC
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
CMP             R0, #0
BEQ             loc_14D220
CMP             R5, #0
BEQ             locret_14D234
LDR             R1, [R4]
MOV             R0, R4
LDR             R1, [R1,#4]
POP             {R4-R6,LR}
BX              R1
POP             {R4-R6,PC}
