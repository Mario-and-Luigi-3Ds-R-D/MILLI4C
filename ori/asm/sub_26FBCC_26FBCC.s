ADD             R1, R0, #0x400
PUSH            {LR}
ADD             R1, R1, #0x198
VLDR            S0, [R0,#0xCC]
VLDR            S1, [R0,#0xD0]
VLDR            S2, [R0,#0xC8]
SUB             SP, SP, #0x14
VLDM            R1, {S3-S5}
ADD             R2, SP, #0x18+var_14
LDR             R0, =off_6CE970
MOV             R1, #0
VADD.F32        S2, S3, S2
VADD.F32        S0, S4, S0
VADD.F32        S1, S5, S1
VLDR            S3, =0.0
MOV             R3, #1
VSTR            S0, [SP,#0x18+var_10]
VSTR            S1, [SP,#0x18+var_C]
VSTM            R2, {S2-S3}
LDR             R0, [R0]
STR             R1, [SP,#0x18+var_18]
MOV             R1, #0x53 ; 'S'
BL              sub_52AEA8
ADD             SP, SP, #0x14
POP             {PC}
