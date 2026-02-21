PUSH            {LR}
LDR             R1, [R0,#0xC78]
ADD             R2, R0, #0x400
SUB             SP, SP, #0xC
VLDR            S2, [R2,#0x34]
LDR             R1, [R1]
ADD             R0, R0, #4
VLDR            S0, [R1,#0x348]
VLDR            S1, [R1,#0x354]
VLDR            S3, [R1,#0x350]
VSUB.F32        S0, S2, S0
VSUB.F32        S3, S1, S3
VDIV.F32        S1, S0, S3
VSTR            S1, [R2,#0x38]
VLDR            S0, [R1,#0x350]
VLDR            S3, [R1,#0x354]
VSUB.F32        S3, S3, S0
VMLA.F32        S0, S3, S1
VSTR            S0, [R2,#0x30]
VLDR            S0, =1.0
VLDR            S3, [R1,#0x12C]
VLDR            S4, [R2]
MOV             R1, SP
VDIV.F32        S1, S0, S3
VMUL.F32        S0, S2, S4
VMUL.F32        S0, S1, S0
VSTR            S0, [SP,#0x10+var_10]
VSTR            S0, [SP,#0x10+var_C]
VSTR            S0, [SP,#0x10+var_8]
BL              sub_14EA04
ADD             SP, SP, #0xC
POP             {PC}
