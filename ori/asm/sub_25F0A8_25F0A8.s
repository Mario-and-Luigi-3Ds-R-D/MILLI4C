PUSH            {R4-R7,LR}
MOV             R4, R0
ADD             R7, R0, #0x400
ADD             R7, R7, #0x44 ; 'D'
VPUSH           {D8-D11}
VMOV.F32        S18, S0
VMOV.F32        S17, S1
VMOV.F32        S16, S2
VMOV.F32        S19, S3
LDR             R5, [R0,#0x444]
SUB             SP, SP, #0x1C
MOV             R0, R5
BL              sub_5A26D0
ADD             R0, R4, #0x28 ; '('
ADD             R3, R5, #0x1C
LDM             R0, {R0-R2}
ADD             R5, R5, #4
ADD             R6, R4, #0x440
STM             R3, {R0-R2}
STM             R5, {R0-R2}
LDR             R5, [R4,#0x440]
MOV             R0, R5
BL              sub_5A26D0
ADD             R0, R4, #0x28 ; '('
ADD             R3, R5, #0x1C
LDM             R0, {R0-R2}
ADD             R5, R5, #4
STM             R3, {R0-R2}
STM             R5, {R0-R2}
ADD             R0, R4, #0x400
VLDR            S1, [R4,#0x28]
VLDR            S0, [R4,#0x2C]
VLDR            S2, [R0,#0x3C]
VSUB.F32        S17, S17, S1
VSUB.F32        S21, S16, S0
VSUB.F32        S20, S2, S0
VLDR            S16, =0.0
VMOV.F32        S0, S18
MOV             R2, SP
MOV             R1, #0
VSTR            S17, [SP,#0x50+var_50]
VSTR            S16, [SP,#0x50+var_4C]
VSTR            S16, [SP,#0x50+var_48]
LDR             R0, [R7]
BL              sub_5A2B20
VLDR            S22, =1.0
VSTR            S16, [SP,#0x50+var_44]
VSTR            S22, [SP,#0x50+var_40]
VMOV.F32        S2, S20
VMOV.F32        S1, S18
VMOV.F32        S0, S21
VSTR            S16, [SP,#0x50+var_3C]
LDR             R0, [R7]
ADD             R2, SP, #0x50+var_44
MOV             R1, #1
BL              sub_5A28C4
VLDR            S0, [R4,#0x2C]
VSTR            S17, [SP,#0x50+var_50]
VSTR            S16, [SP,#0x50+var_4C]
VSUB.F32        S19, S19, S0
VMOV.F32        S0, S18
VSTR            S16, [SP,#0x50+var_48]
LDR             R0, [R6]
MOV             R2, SP
MOV             R1, #0
BL              sub_5A2B20
VSTR            S16, [SP,#0x50+var_44]
VSTR            S22, [SP,#0x50+var_40]
VMOV.F32        S2, S20
VMOV.F32        S1, S18
VMOV.F32        S0, S19
VSTR            S16, [SP,#0x50+var_3C]
LDR             R0, [R6]
ADD             R2, SP, #0x50+var_44
MOV             R1, #1
BL              sub_5A28C4
LDR             R0, [R4,#0xC6C]
VSTR            S16, [R0]
VSTR            S18, [R0,#4]
ADD             R0, R4, #0xC30
BL              sub_5A18EC
ADD             R0, R4, #0xC00
VSTR            S16, [R0,#0x3C]
VSTR            S16, [R0,#0x34]
ADD             SP, SP, #0x1C
VPOP            {D8-D11}
POP             {R4-R7,PC}
