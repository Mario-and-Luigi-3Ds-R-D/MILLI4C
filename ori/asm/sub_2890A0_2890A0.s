PUSH            {R3-R5,LR}
MOV             R4, R0
ADD             R0, R0, #0x400
ADD             R0, R0, #0x1D8
BL              sub_5A2484
LDR             R0, [R4,#0x688]
ADD             R2, R4, #0x400
ADD             R1, R0, #0x108
LDR             R0, [R0,#0x110]
LDM             R1, {R1,R3}
STR             R0, [R4,#0x594]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x18C
STM             R0, {R1,R3}
MOV             R1, #0
LDR             R0, [R4,#0x560]
CMP             R0, #0
BLS             loc_289128
LDR             R5, [R4,#0x564]
LDR             R3, [R4,#0x560]
LDR             R12, [R4,#0x530]
SUB             R0, R5, #1
MLA             R0, R0, R3, R1
ADD             R1, R1, #1
ADD             R3, R0, R0,LSL#1
ADD             R0, R3, R0,LSL#3
ADD             R3, R2, #0x1E0
ADD             R0, R12, R0,LSL#2
VLDM            R3, {S0-S1}
ADD             R0, R0, #4
VSTM            R0, {S0-S1}
LDR             R0, [R4,#0x560]
CMP             R0, R1
BHI             loc_2890E8
ADD             R0, R4, #0x530
BL              sub_28E174
LDRB            R0, [R4,#0xC]
CMP             R0, #0
BNE             loc_28917C
ADD             R0, R4, #0x3AC
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_28917C
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x10+var_10]
LDR             R0, [R4,#0x688]
VLDR            S0, [R0,#0x124]
ADD             R0, R4, #0x33C
BL              sub_4E665C
LDRB            R0, [R4,#0xC]
ADD             R0, R0, #1
STRB            R0, [R4,#0xC]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x29C
LDM             R0, {R0,R1}
CMP             R0, R1
MOVEQ           R0, #4
STRBEQ          R0, [R4]
POP             {R3-R5,PC}
