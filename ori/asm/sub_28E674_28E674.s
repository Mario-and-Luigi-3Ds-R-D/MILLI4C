PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x24]
VLDR            S4, [R1,#4]
CMP             R0, #0
BEQ             loc_28E6C4
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x20]
ADD             R0, R4, #0x18
STM             R0, {R1,R2}
BL              sub_4635D8
LDR             R2, [R0]
LDR             R1, [R0,#4]
LDR             R0, [R0,#8]
STR             R2, [R4,#0xC]!
STR             R1, [R4,#4]
STR             R0, [R4,#8]
POP             {R4,PC}
ADD             R0, R1, #0x1C
VLDR            S0, [R4,#0x28]
ADD             R12, R4, #0x18
VLDM            R0, {S1-S3}
ADD             R0, R4, #0xC
LDM             R0, {R0,R2,R3}
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S3, S0
VNEG.F32        S0, S4
VMOV            S4, R0
STM             R12, {R0,R2,R3}
VMUL.F32        S4, S4, S0
VSTR            S4, [R4,#0x18]
VLDR            S4, [R4,#0x1C]
VMUL.F32        S4, S4, S0
VSTR            S4, [R4,#0x1C]
VLDR            S4, [R4,#0x20]
VMUL.F32        S0, S4, S0
VSTR            S0, [R4,#0x20]
VLDR            S0, [R4,#0x18]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x18]
VLDR            S0, [R4,#0x1C]
VADD.F32        S0, S0, S2
VSTR            S0, [R4,#0x1C]
VLDR            S0, [R4,#0x20]
VADD.F32        S0, S0, S3
VSTR            S0, [R4,#0x20]
VLDR            S0, [R4,#0x18]
VLDR            S1, [R1,#0x10]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x18]
VLDR            S0, [R4,#0x1C]
VLDR            S1, [R1,#0x14]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x1C]
VLDR            S0, [R4,#0x20]
VLDR            S1, [R1,#0x18]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x20]
POP             {R4,PC}
