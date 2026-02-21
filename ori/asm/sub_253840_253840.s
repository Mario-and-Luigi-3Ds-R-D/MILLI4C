PUSH            {R4,R5,LR}
VPUSH           {D8}
SUB             SP, SP, #4
BL              sub_47527C
VLDR            S0, =75.0
MOV             R5, R0
VMOV            R1, S0
VSTR            S0, [SP,#0x18+var_18]
VLDR            S0, =86.5
STR             R1, [R0,#0x4C4]!
VMOV            R1, S0
VSTR            S0, [SP,#0x18+var_18]
VLDR            S1, =89.5
STR             R1, [R0,#4]
VMOV            R1, S1
VSTR            S1, [SP,#0x18+var_18]
VLDR            S1, =82.0
STR             R1, [R0,#8]
VMOV            R1, S1
VSTR            S1, [SP,#0x18+var_18]
VLDR            S1, =0.1
STR             R1, [R0,#0xC]
VMOV            R1, S0
VSTR            S0, [SP,#0x18+var_18]
VLDR            S0, =0.0
STR             R1, [R0,#0x10]
VMOV            R1, S0
VSTR            S0, [SP,#0x18+var_18]
VLDR            S16, =1.0
STR             R1, [R0,#0x14]
VMOV            R1, S1
VSTR            S1, [SP,#0x18+var_18]
VLDR            S1, =-154.0
STR             R1, [R0,#0x18]
VMOV            R1, S16
VSTR            S16, [SP,#0x18+var_18]
VMOV            R2, S1
STR             R1, [R0,#0x1C]
MOV             R1, #0xE
STR             R1, [R0,#0x20]
VSTR            S1, [SP,#0x18+var_18]
VLDR            S1, =0.37
STR             R2, [R0,#0x24]
VMOV            R2, S1
VSTR            S1, [SP,#0x18+var_18]
VLDR            S1, =200.0
STR             R2, [R0,#0x28]
VMOV            R2, S16
VSTR            S16, [SP,#0x18+var_18]
VLDR            S2, =-200.0
STR             R2, [R0,#0x2C]
ADD             R2, R0, #0x30 ; '0'
VSTM            R2, {S0-S2}
VLDR            S0, =0.4
STR             R1, [R0,#0x3C]
VMOV            R1, S0
VSTR            S0, [SP,#0x18+var_18]
VLDR            S0, =1.4
STR             R1, [R0,#0x40]
VMOV            R1, S0
VSTR            S0, [SP,#0x18+var_18]
STR             R1, [R0,#0x44]
MOV             R1, #7
STR             R1, [R0,#0x48]
LDR             R0, [R5,#0x7C]
CMP             R0, #0
MOVSNE          R0, R0,LSR#1
BEQ             loc_253958
SUBS            R0, R0, #1
BNE             loc_253950
MOV             R1, #0x64 ; 'd'
STR             R1, [R5,#0x520]
MOV             R1, #0x12C
STR             R1, [R5,#0x524]
ADD             R1, R1, #0xC9
STR             R1, [R5,#0x528]
MOV             R1, #0x2BC
MOV             R0, #0
STR             R1, [R5,#0x52C]
ADD             R0, R0, #1
CMP             R0, #5
BCC             loc_25397C
ADD             R4, R5, #0x400
VLDR            S17, =0.71111
VLDR            S0, [R4,#0xC4]
VMUL.F32        S0, S0, S17
BL              sub_464318
VSTR            S0, [R4,#0xC4]
VLDR            S0, [R4,#0xC8]
VMUL.F32        S0, S0, S17
BL              sub_464318
VLDR            S1, [R4,#0xC4]
VLDR            S2, [R4,#0xCC]
VLDR            S3, =0.017453
VSUB.F32        S1, S1, S0
VSTR            S0, [R4,#0xC8]
VMUL.F32        S2, S2, S3
VLDR            S0, [R4,#0xD0]
VMUL.F32        S0, S0, S17
VSTR            S1, [R4,#0x110]
VDIV.F32        S3, S16, S1
VSTR            S2, [R4,#0xCC]
VSTR            S3, [R4,#0x114]
BL              sub_464318
VSTR            S0, [R4,#0xD0]
VLDR            S0, [R4,#0xD4]
VMUL.F32        S0, S0, S17
BL              sub_464318
VLDR            S1, [R4,#0xD0]
VSTR            S0, [R4,#0xD4]
ADD             R4, R4, #0x118
VSUB.F32        S0, S1, S0
MOV             R0, R5
VDIV.F32        S1, S16, S0
VSTM            R4, {S0-S1}
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4,R5,PC}
