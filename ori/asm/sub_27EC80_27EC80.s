PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R0, #5
LDR             R1, =off_6CDF98
VPUSH           {D8-D10}
SUB             SP, SP, #0x2C
LDR             R1, [R1]
LDR             R5, [R1,#0x124]
STRB            R0, [R4,#0x3F4]
LDR             R0, [R4,#0x404]
BL              sub_26A474
VLDR            S17, =1.0
ADD             R1, SP, #0x58+var_4C
VSTR            S17, [R4,#0x3FC]
VSTR            S17, [SP,#0x58+var_4C]
VSTR            S17, [SP,#0x58+var_48]
VSTR            S17, [SP,#0x58+var_44]
MOV             R0, R4
BL              sub_14EA04
ADD             R1, R5, #0x410
LDR             R0, =dword_6D1F40
ADD             R6, R5, #0x400
VLDM            R1, {S0-S1}
BL              sub_47EAA4
ADD             R1, R6, #0x28 ; '('
VMOV.F32        S18, S0
VLDM            R1, {S0-S1}
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
LDR             R1, [R5,#0x420]
VMOV.F32        S19, S0
LDR             R0, =dword_6D1F40
UXTH            R7, R1
BL              sub_546DB0
LDR             R1, [R5,#0x420]
MUL             R0, R0, R7
VLDR            S2, =360.0
MOV             R1, R1,LSR#1
VMOV            S1, R1
MOV             R0, R0,LSR#16
VMOV            S0, R0
VCVT.F32.U32    S1, S1
VCVT.F32.U32    S3, S0
VDIV.F32        S0, S2, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S3
VMUL.F32        S20, S0, S1
VMOV.F32        S0, S20
BL              sub_464318
VMUL.F32        S18, S0, S18
VMOV.F32        S0, S20
VLDR            S16, =0.0
BL              sub_464380
VMUL.F32        S0, S0, S19
VSTR            S18, [SP,#0x58+var_58]
VSTR            S16, [SP,#0x58+var_54]
ADD             R1, R6, #0x18
LDR             R0, =dword_6D1F40
VSTR            S0, [SP,#0x58+var_50]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R5,#0x2C4]
VCVT.F32.U32    S1, S1
VSUBCC.F32      S0, S0, S1
VADDCS.F32      S0, S0, S1
VSTR            S0, [SP,#0x58+var_50]
VLDM            R1, {S0-S1}
BL              sub_47EAA4
LDR             R0, [R4,#0x404]
VMOV.F32        S18, S0
LDRB            R0, [R0,#0xD]
CMP             R0, #0
VNEGNE.F32      S18, S18
BEQ             loc_27EE64
ADD             R6, R6, #8
LDR             R0, =dword_6D1F40
VLDM            R6, {S0-S1}
BL              sub_47EAA4
ADD             R2, SP, #0x58+var_40
VMOV.F32        S1, S0
VSTM            R2, {S16-S17}
MOV             R1, #1
VSTR            S16, [SP,#0x58+var_38]
VLDR            S0, [R4,#0x28]
VLDR            S2, [R5,#0x190]
ADD             R0, R4, #0x1DC
VNEG.F32        S0, S0
BL              sub_5A290C
LDR             R0, [R4,#0x204]
MOV             R2, SP
MOV             R1, #0
VLDR            S17, [R0,#0x38]
ADD             R0, R4, #0x1DC
VMOV.F32        S0, S17
BL              sub_5A2B20
VMUL.F32        S0, S18, S17
VSTR            S16, [SP,#0x58+var_4C]
VSTR            S16, [SP,#0x58+var_48]
ADD             R1, SP, #0x58+var_4C
ADD             R0, R4, #0x100
VSTR            S0, [SP,#0x58+var_44]
VMOV.F32        S0, S17
BL              sub_5A367C
MOV             R0, #0xFFFFFF00
VMOV.F32        S0, S17
REV             R0, R0
ADD             R1, SP, #0x58+var_34
STR             R0, [SP,#0x58+var_34]
ADD             R0, R4, #0x32C
BL              sub_4E665C
LDRB            R0, [R4,#0x3F9]
MOV             R1, #4
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R1, R0,LSL#1
AND             R1, R0, #0xFF
MOV             R0, R4
BL              sub_14C548
ADD             SP, SP, #0x2C ; ','
VPOP            {D8-D10}
POP             {R4-R7,PC}
VLDR            S1, [SP,#0x58+var_58]
VLDR            S0, =-1.0
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x58+var_58]
VLDR            S1, [SP,#0x58+var_54]
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x58+var_54]
VLDR            S1, [SP,#0x58+var_50]
VMUL.F32        S0, S1, S0
VSTR            S0, [SP,#0x58+var_50]
B               loc_27EDA8
