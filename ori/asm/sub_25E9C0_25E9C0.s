PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8-D9}
VMOV.F32        S17, S1
ADD             R1, R4, #0x400
LDR             R0, [R0,#0xC78]
VLDR            S3, [R4,#0x28]
VLDR            S1, [R4,#0x2C]
VLDR            S4, [R1,#0x3C]
LDR             R0, [R0]
VSUB.F32        S0, S0, S3
VSUB.F32        S18, S4, S1
SUB             SP, SP, #0x18
VLDR            S2, [R0,#0x388]
VLDR            S16, =0.0
MOV             R2, SP
VSUB.F32        S19, S2, S1
MOV             R1, #0
ADD             R0, R4, #0x1E0
VSTR            S0, [SP,#0x30+var_30]
VMOV.F32        S0, S17
VSTR            S16, [SP,#0x30+var_2C]
VSTR            S16, [SP,#0x30+var_28]
BL              sub_5A2B20
VLDR            S0, =1.0
VSTR            S16, [SP,#0x30+var_24]
VSTR            S0, [SP,#0x30+var_20]
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VMOV.F32        S0, S19
ADD             R2, SP, #0x30+var_24
VSTR            S16, [SP,#0x30+var_1C]
MOV             R1, #1
ADD             R0, R4, #0x1E0
BL              sub_5A28C4
LDR             R0, [R4,#0xC6C]
VSTM            R0, {S16-S17}
LDR             R0, [R4,#0xC74]
CMP             R0, #0
MOVNE           R0, #0
STRNE           R0, [R4,#0xC74]
MOV             R0, #4
STRB            R0, [R4,#0x3F8]
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4,PC}
