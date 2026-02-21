PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R0, #0
LDR             R1, =off_6CDF98
ADD             R7, R4, #0x400
VPUSH           {D8-D10}
SUB             SP, SP, #0x2C
MOV             R3, #0x100
MOV             R2, #1
LDR             R1, [R1]
LDR             R6, [R1,#0x124]
STRB            R0, [R4,#0x421]
LDRB            R0, [R4,#0x400]
ADD             R0, R0, #1
AND             R1, R0, #0xFF
MOV             R0, R4
BL              sub_14C548
ADD             R1, R6, #0x630
LDR             R0, =dword_6D1F40
ADD             R5, R6, #0x400
VLDM            R1, {S0-S1}
BL              sub_47EAA4
VLDR            S1, [R4,#0x3F8]
VLDR            S16, =0.0
VLDR            S18, =1.0
VSTR            S16, [SP,#0x58+var_58]
VSTR            S18, [SP,#0x58+var_54]
VNMUL.F32       S1, S1, S0
VSTR            S16, [SP,#0x58+var_50]
VLDR            S0, [R4,#0x28]
MOV             R2, SP
VLDR            S2, [R6,#0x190]
VNEG.F32        S0, S0
MOV             R1, #1
ADD             R0, R4, #0x1DC
BL              sub_5A290C
LDR             R0, [R4,#0x204]
MOV             R2, #0xFFFFFFFF
VLDR            S17, [R0,#0x38]
LDRB            R0, [R7]
ADD             R1, R0, #3
MOV             R0, R4
BL              sub_5C55C8
VMOV            S0, R0
VSTR            S16, [R4,#0x39C]
LDR             R0, =dword_6D1F40
VCVT.F32.S32    S0, S0
VSUB.F32        S0, S17, S0
VSTR            S0, [R4,#0x3A0]
BL              sub_546DB0
ADD             R1, R5, #0x10
MOV             R6, R0
VLDM            R1, {S0-S1}
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
ADD             R1, R5, #0x28 ; '('
VMOV.F32        S19, S0
VLDM            R1, {S0-S1}
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
VMOV.F32        S20, S0
MOV             R0, R6
BL              sub_4642E0
VMUL.F32        S19, S0, S19
MOV             R0, R6
BL              sub_464278
VMUL.F32        S0, S0, S20
VSTR            S19, [SP,#0x58+var_40]
VSTR            S16, [SP,#0x58+var_3C]
ADD             R2, SP, #0x58+var_40
MOV             R1, #0
ADD             R0, R4, #0x1DC
VSTR            S0, [SP,#0x58+var_38]
VMOV.F32        S0, S17
BL              sub_5A2B20
ADD             R1, R5, #0x18
LDR             R0, =dword_6D1F40
VLDM            R1, {S0-S1}
BL              sub_47EAA4
VMOV.F32        S19, S0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
TST             R0, #1
VLDREQ          S18, =-1.0
VSTR            S16, [SP,#0x58+var_4C]
VSTR            S16, [SP,#0x58+var_48]
VMUL.F32        S0, S18, S19
ADD             R1, SP, #0x58+var_4C
ADD             R0, R4, #0x100
VMOV.F32        S1, S0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMUL.F32        S1, S1, S17
VNEGCC.F32      S0, S0
VSTR            S1, [SP,#0x58+var_44]
BL              sub_5A3064
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x58+var_34
REV             R0, R0
STR             R0, [SP,#0x58+var_34]
VLDR            S0, [R5,#0x248]
ADD             R0, R4, #0x32C
VMUL.F32        S0, S0, S17
BL              sub_4E665C
MOV             R0, #1
STRB            R0, [R4,#0x3F4]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8-D10}
POP             {R4-R7,PC}
