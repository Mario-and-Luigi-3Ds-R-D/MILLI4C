PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #4
VPUSH           {D8}
SUB             SP, SP, #0x18
STRB            R0, [R4,#0x410]
ADD             R0, R4, #0x1DC
BL              sub_5A26D0
LDR             R0, =dword_6D1F40
ADD             R5, R4, #0x400
BL              sub_546DB0
ADD             R0, R0, R0,LSL#1
MOV             R3, #0x100
MOV             R0, R0,LSR#16
ADD             R1, R0, #0x22 ; '"'
MOV             R2, #0
MOV             R0, R4
BL              sub_14C430
VLDR            S16, =0.0
LDR             R6, =off_6CE118
VLDR            S0, =1.0
VSTR            S16, [SP,#0x30+var_30]
VSTR            S0, [SP,#0x30+var_2C]
VSTR            S16, [SP,#0x30+var_28]
LDR             R0, [R6]
VLDR            S0, [R4,#0x28]
MOV             R2, SP
MOV             R1, #1
LDR             R0, [R0,#8]
VNEG.F32        S0, S0
VLDR            S2, [R0,#0x36C]
VLDR            S1, [R0,#0x374]
ADD             R0, R4, #0x1DC
BL              sub_5A290C
LDR             R0, [R4,#0x204]
ADD             R2, R4, #0x39C
ADD             R1, SP, #0x30+var_24
VLDR            S17, [R0,#0x38]
MOV             R0, #0xFFFFFFFF
VSTM            R2, {S16-S17}
REV             R0, R0
STR             R0, [SP,#0x30+var_24]
MOV             R0, R4
BL              sub_14D778
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x30+var_20
REV             R0, R0
STR             R0, [SP,#0x30+var_20]
LDR             R0, [R6]
LDR             R0, [R0,#8]
VLDR            S0, [R0,#0x370]
ADD             R0, R4, #0x32C
VMUL.F32        S0, S0, S17
BL              sub_4E665C
LDR             R0, [R4,#0x4A4]
CMP             R0, #0
BEQ             loc_1C4BA4
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x30+var_1C
REV             R0, R0
STR             R0, [SP,#0x30+var_1C]
LDR             R0, [R6]
LDR             R0, [R0,#8]
VLDR            S0, [R0,#0x370]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x3C4
VMUL.F32        S0, S0, S17
BL              sub_4E665C
LDR             R0, [R6]
VLDR            S1, =0.017453
LDR             R0, [R0,#8]
VLDR            S0, [R0,#0xA0]
VMUL.F32        S0, S0, S1
VSTR            S0, [R5,#0x14]
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1C4BD4
BL              sub_533330
MOV             R0, #0
STR             R0, [R5]
ADD             SP, SP, #0x18
VPOP            {D8}
POP             {R4-R6,PC}
