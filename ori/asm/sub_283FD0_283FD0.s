PUSH            {R4,R5,LR}
MOV             R4, R0
ADD             R2, R0, #0x400
LDR             R0, [R0,#0x464]
VLDR            S0, [R1]
VLDR            S2, [R1,#4]
ADD             R2, R2, #0x64 ; 'd'
VLDR            S5, [R0,#0x6C]
VLDR            S3, [R0,#0x70]
VLDR            S1, [R1,#8]
VLDR            S4, [R0,#0x74]
VADD.F32        S0, S0, S5
LDR             R0, [R2]
VADD.F32        S2, S2, S3
VADD.F32        S1, S1, S4
ADD             R0, R0, #0x60 ; '`'
LDR             R5, =off_6CE970
SUB             SP, SP, #0x14
VLDM            R0, {S3-S5}
MOV             R0, #0
LDR             R12, [R5]
LDR             R1, =0x16E
VADD.F32        S0, S0, S3
VADD.F32        S2, S2, S4
VADD.F32        S1, S1, S5
ADD             R2, SP, #0x20+var_1C
MOV             R3, #1
VSTR            S0, [SP,#0x20+var_1C]
VSTR            S2, [SP,#0x20+var_18]
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
BL              sub_2837F8
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
