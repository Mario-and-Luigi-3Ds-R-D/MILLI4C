NOP
PUSH            {R4,R5,LR}
MOV             R4, R0
MOV             R0, #6
VPUSH           {D8-D9}
SUB             SP, SP, #0x34
MOV             R1, #0
STRB            R0, [R4,#0x4E8]
ADD             R0, R4, #0xEC
BL              sub_14C3E8
LDR             R5, =off_6CDD80
LDR             R1, [R5]
LDR             R0, [R1,#8]
ADD             R1, R1, #0xF90
LDR             R2, [R0,#0x558]
VMOV            S17, R2
STR             R2, [SP,#0x50+var_50]
LDR             R2, [R0,#0x55C]
ADD             R0, R0, #0x560
STR             R2, [SP,#0x50+var_4C]
VLDR            S2, [R1]
VLDR            S5, [R0]
VLDR            S1, [R1,#8]
VLDR            S4, [R0,#8]
VLDR            S0, [R1,#4]
VLDR            S3, [R0,#4]
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S4
VADD.F32        S0, S0, S3
VMOV            S18, R2
ADD             R2, SP, #0x50+var_44
ADD             R1, SP, #0x50+var_48
ADD             R0, R4, #0xEC
VSTR            S2, [SP,#0x50+var_48]
VSTM            R2, {S0-S1}
BL              sub_14E984
VLDR            S16, =0.0
VLDR            S0, =1.0
VSTR            S16, [SP,#0x50+var_3C]
VSTR            S0, [SP,#0x50+var_38]
VSTR            S16, [SP,#0x50+var_34]
VLDR            S0, [R4,#0x114]
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VNEG.F32        S0, S0
ADD             R2, SP, #0x50+var_3C
MOV             R1, #1
ADD             R0, R4, #0x2C8
BL              sub_5A28C4
LDR             R0, [R5]
ADD             R2, SP, #0x50+var_30
LDR             R0, [R0,#8]
LDR             R1, [R0,#0x94]
STR             R1, [SP,#0x50+var_4C]
LDR             R0, [R0,#0x9C]
VMOV            S1, R1
VLDR            S3, [R4,#0x110]
VMOV            S0, R0
STR             R0, [SP,#0x50+var_4C]
VLDR            S2, [R4,#0x118]
MOV             R1, #0
VSUB.F32        S1, S1, S3
ADD             R0, R4, #0x2C8
VSUB.F32        S0, S0, S2
VSTR            S1, [SP,#0x50+var_30]
VSTR            S16, [SP,#0x50+var_2C]
VSTR            S0, [SP,#0x50+var_28]
VMOV.F32        S0, S17
BL              sub_5A2B20
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D9}
POP             {R4,R5,PC}
