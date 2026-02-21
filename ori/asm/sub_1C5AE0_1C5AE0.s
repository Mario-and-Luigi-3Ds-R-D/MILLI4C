PUSH            {R4,R5,LR}
MOV             R4, R0
MOV             R1, #0xD
VPUSH           {D8}
SUB             SP, SP, #0x5C
MOV             R0, #0
STRB            R1, [R4]
STRB            R0, [R4,#0x42]
LDR             R0, [R4,#0x1C]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x28]
ADD             R1, SP, #0x70+var_6C
BLX             R3
LDR             R5, =off_6CE118
LDR             R0, [R5]
LDR             R0, [R0,#8]
BL              sub_5D785C
LDR             R0, [R5]
VMOV.F32        S17, S0
LDR             R0, [R0,#8]
BL              sub_5D7894
VMOV.F32        S1, S0
VLDR            S16, =0.0
VLDR            S0, =1.0
VSTR            S16, [SP,#0x70+var_54]
VSTR            S0, [SP,#0x70+var_50]
VSTR            S16, [SP,#0x70+var_4C]
VLDR            S0, [SP,#0x70+var_68]
LDR             R0, [R4,#0x1C]
VMOV.F32        S2, S17
VNEG.F32        S0, S0
ADD             R2, SP, #0x70+var_54
ADD             R0, R0, #0x1DC
MOV             R1, #1
BL              sub_5A299C
LDR             R0, [R4,#0x1C]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
ADD             R1, SP, #0x70+var_48
BLX             R3
VLDR            S0, =-264.0
MOV             R0, #1
VSTR            S0, [SP,#0x70+var_48]
STR             R0, [SP,#0x70+var_70]
LDR             R0, =off_6CE970
ADD             R3, SP, #0x70+var_48
ADD             R2, SP, #0x70+var_24
ADD             R1, SP, #0x70+var_30
LDR             R0, [R0]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_5F12C4
ADD             R1, SP, #0x70+var_30
ADD             R0, SP, #0x70+var_60
BL              sub_480160
VLDR            S1, [SP,#0x70+var_60]
VLDR            S3, [SP,#0x70+var_6C]
VLDR            S0, [SP,#0x70+var_58]
VLDR            S2, [SP,#0x70+var_64]
VSUB.F32        S1, S1, S3
ADD             R2, SP, #0x70+var_3C
VSUB.F32        S0, S0, S2
VSTR            S1, [SP,#0x70+var_3C]
VSTR            S0, [SP,#0x70+var_34]
VSTR            S16, [SP,#0x70+var_38]
LDR             R0, [R4,#0x1C]
LDR             R1, [R0,#0x204]
ADD             R0, R0, #0x1DC
VLDR            S0, [R1,#0x38]
MOV             R1, #0
BL              sub_5A2B20
ADD             SP, SP, #0x5C ; '\'
VPOP            {D8}
POP             {R4,R5,PC}
