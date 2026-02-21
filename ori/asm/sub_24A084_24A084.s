PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, =off_6CDD80
LDR             R5, =off_6CE970
SUB             SP, SP, #0x14
VLDM            R1, {S0-S2}
MOV             R3, #1
LDR             R2, [R0]
LDR             R12, [R5]
LDR             R1, =0x16E
LDR             R0, [R2,#0xC]
ADD             R0, R0, #0x40 ; '@'
VLDM            R0, {S3-S5}
LDR             R0, [R2,#0xC]
ADD             R2, SP, #0x20+var_1C
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S4
VADD.F32        S2, S2, S5
ADD             R0, R0, #0xC
VLDM            R0!, {S5}
VLDM            R0, {S3-S4}
MOV             R0, #0
VADD.F32        S0, S0, S5
VADD.F32        S3, S1, S3
VADD.F32        S1, S2, S4
VSTR            S0, [SP,#0x20+var_1C]
VSTR            S3, [SP,#0x20+var_18]
VSTR            S1, [SP,#0x20+var_14]
STR             R0, [SP,#0x20+var_20]
MOV             R0, R12
BL              sub_52AEA8
LDR             R0, [R5]
LDR             R3, =0xFFE683CC
LDR             R1, =0x30205
MOV             R2, #0
VLDR            S0, =0.0
SUB             R0, R0, R3
BL              sub_503414
MOV             R0, R4
BL              sub_249408
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
