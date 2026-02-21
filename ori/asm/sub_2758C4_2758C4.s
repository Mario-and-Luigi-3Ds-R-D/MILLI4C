PUSH            {LR}
SUB             SP, SP, #0x3C
VLDR            S1, =1.0
VLDR            S0, =0.0
VSTR            S1, [SP,#0x40+var_34]
VSTR            S0, [SP,#0x40+var_30]
VSTR            S0, [SP,#0x40+var_2C]
ADD             R2, SP, #0x40+var_28
VSTM            R2, {S0-S1}
ADD             R2, SP, #0x40+var_18
VSTR            S0, [SP,#0x40+var_20]
VSTR            S0, [SP,#0x40+var_1C]
VSTM            R2, {S0-S1}
VLDR            S3, [R1]
VLDR            S5, [R1,#0xC]
VLDR            S2, [R1,#4]
VLDR            S4, [R1,#0x10]
VLDR            S0, [R1,#8]
VLDR            S1, [R1,#0x14]
VADD.F32        S3, S3, S5
VADD.F32        S2, S2, S4
VADD.F32        S1, S0, S1
VLDR            S0, =0.5
VMUL.F32        S3, S3, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S1, S1, S0
VSTR            S3, [SP,#0x40+var_40]
VSTR            S2, [SP,#0x40+var_3C]
VSTR            S1, [SP,#0x40+var_38]
VLDR            S3, [R1,#0xC]
VLDR            S6, [R1]
VLDR            S2, [R1,#0x10]
VLDR            S5, [R1,#4]
VLDR            S1, [R1,#0x14]
VLDR            S4, [R1,#8]
VSUB.F32        S3, S3, S6
VSUB.F32        S2, S2, S5
VSUB.F32        S1, S1, S4
MOV             R1, SP
VMUL.F32        S3, S3, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S1, S0
VSTR            S3, [SP,#0x40+var_10]
VSTR            S2, [SP,#0x40+var_C]
VSTR            S0, [SP,#0x40+var_8]
BL              sub_275368
ADD             SP, SP, #0x3C ; '<'
POP             {PC}
