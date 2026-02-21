PUSH            {R4,R5,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDR             R0, [R0,#0x10C]
CMP             R0, #0
MOVNE           R1, #0
STRNE           R1, [R0,#0x180]
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19B8D4
ADD             R0, R4, #0x18
VLDR            S0, [R4,#0x20]
VLDR            S3, [R4,#0xEC]
VLDR            S4, [R4,#0xE8]
VLDR            S5, [R4,#0xE4]
VADD.F32        S0, S0, S3
VLDM            R0, {S1-S2}
VLDR            S18, =0.0
VADD.F32        S1, S1, S5
VADD.F32        S2, S2, S4
VSTR            S0, [SP,#0x28+var_20]
VSTMEA          SP, {S1-S2}
LDR             R0, [R5]
LDR             R1, [R0,#0xC4]
LDR             R1, [R1,#4]
LDR             R1, [R1,#4]
ADD             R1, R1, #0x108
VLDM            R1, {S16-S17}
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
VLDR            S0, =1.0
BL              sub_19B970
VLDR            S2, [R0]
VLDR            S1, [R0,#4]
VLDR            S0, [R0,#8]
VADD.F32        S2, S16, S2
VADD.F32        S1, S17, S1
VADD.F32        S0, S18, S0
VLDR            S5, [SP,#0x28+var_28]
VLDR            S4, [SP,#0x28+var_24]
VLDR            S3, [SP,#0x28+var_20]
VMOV            R1, S4
VMOV            R2, S3
ADD             R0, R4, #0xF4
VSTR            S5, [R4,#0xF0]
VSUB.F32        S16, S2, S5
VSUB.F32        S17, S1, S4
VSUB.F32        S18, S0, S3
STM             R0, {R1,R2}
MOV             R0, R4
VLDR            S0, [SP,#0x28+var_24]
BL              sub_1F3BF4
VMOV.F32        S19, S0
VLDR            S0, [SP,#0x28+var_28]
