PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6CE970
LDR             R6, =0x19DEE8
VPUSH           {D8}
SUB             SP, SP, #8
LDR             R2, [R0,#0x8C]
LDR             R0, [R5]
VLDR            S1, [R4,#0x1C]
VLDR            S16, =0.0039062
ADD             R3, R0, R6; loc_19DEE8
LDR             R2, [R2,#0x500]
VLDR            S0, [R3]
VMOV            S2, R2
VCVT.F32.S32    S0, S0
VCVT.F32.U32    S2, S2
VNMLS.F32       S1, S0, S16
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_254DA0
MOV             R2, #0
STR             R2, [SP,#0x20+var_20]
MOV             R2, R1
LDR             R1, =0x16A
MOV             R3, #1
BL              sub_52AEA8
LDR             R0, [R5]
ADD             R0, R0, R6; loc_19DEE8
VLDR            S0, [R0]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VSTR            S0, [R4,#0x1C]
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R6,PC}
