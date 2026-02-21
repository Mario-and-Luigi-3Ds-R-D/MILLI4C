PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #7
VPUSH           {D8}
SUB             SP, SP, #8
STRB            R0, [R4,#0xB0]
LDR             R0, [R4,#0xAC]
BL              sub_5C5590
MOV             R5, R0
LDR             R0, [R4,#0xAC]
LDR             R6, =off_6CDD80
LDR             R2, [R0]
LDR             R1, [R6]
LDR             R3, [R2,#0x58]
LDR             R1, [R1,#0xF44]
MOV             R2, #0
BLX             R3
LDR             R0, [R6]
MOV             R2, #0xFFFFFFFF
MOV             R1, #0
LDR             R0, [R0,#8]
LDR             R0, [R0,#0x558]
VMOV            S16, R0
STR             R0, [SP,#0x20+var_20]
LDR             R0, [R4,#0xAC]
BL              sub_5C55C8
VMOV            S0, R0
LDR             R0, [R4,#0xAC]
LDR             R1, [R6]
LDR             R2, [R0]
VCVT.F32.S32    S0, S0
LDR             R1, [R1,#0xF48]
LDR             R3, [R2,#0x58]
MOV             R2, #0
VSUB.F32        S16, S16, S0
BLX             R3
LDR             R0, [R4,#0xAC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #8
BL              sub_14C548
LDR             R0, [R4,#0xAC]
MOV             R1, R5
BL              sub_14F01C
LDR             R0, [R4,#0xAC]
VLDR            S0, =0.0
ADD             R0, R0, #0x39C
VSTR            S0, [R0]
VSTR            S16, [R0,#4]
MOV             R0, #0
STRB            R0, [R4,#0xB1]
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R6,PC}
