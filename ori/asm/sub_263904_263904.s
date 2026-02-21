PUSH            {R4-R6,LR}
MOV             R5, R1
MOV             R6, R3
VPUSH           {D8-D9}
SUB             SP, SP, #0x18
STR             R2, [R0],#8
BL              sub_14F198
SUB             R4, R0, #8
MOV             R2, #0
MOV             R1, R6
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #5
ADD             R0, R4, #8
BL              sub_14C548
MOV             R1, R5
ADD             R0, R4, #8
BL              sub_14E984
MOV             R1, #1
ADD             R0, R4, #8
BL              sub_14C450
MOV             R0, #1
STRB            R0, [R4,#0xF9]
MOV             R1, #0
ADD             R0, R4, #8
BL              sub_14C3E8
LDR             R0, [R4]
LDR             R2, =dword_6D1F40
ADD             R0, R0, #0x290
LDM             R0, {R0,R1}
BL              sub_47EADC
VMOV            S0, R0
LDR             R0, [R4]
LDR             R2, =dword_6D1F40
ADD             R0, R0, #0x29C
VCVT.F32.S32    S19, S0
LDM             R0, {R0,R1}
BL              sub_47EADC
VMOV            S0, R0
LDR             R0, [R4]
LDR             R2, =dword_6D1F40
ADD             R0, R0, #0x288
VCVT.F32.S32    S16, S0
LDM             R0, {R0,R1}
BL              sub_47EADC
VMOV            S0, R0
VLDR            S1, [R5,#8]
VLDR            S17, =0.0
MOV             R2, SP
VSTR            S17, [SP,#0x38+var_38]
MOV             R1, #1
VCVT.F32.S32    S0, S0
VSUB.F32        S18, S0, S1
VLDR            S0, =1.0
VMOV.F32        S1, S19
VSTR            S0, [SP,#0x38+var_34]
VSTR            S17, [SP,#0x38+var_30]
LDR             R0, [R4]
VLDR            S0, [R5,#4]
VNEG.F32        S0, S0
VLDR            S2, [R0,#0x298]
ADD             R0, R4, #0x1E4
BL              sub_5A2954
LDR             R0, [R4,#0x20C]
ADD             R3, SP, #0x38+var_2C
ADD             R2, SP, #0x38+var_2C
MOV             R1, #0
VLDR            S0, [R0,#0x38]
ADD             R0, R4, #0x1E4
VSTM            R3, {S16-S18}
BL              sub_5A2B20
MOV             R0, #0
STRB            R0, [R4,#4]
ADD             SP, SP, #0x18
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R6,PC}
