PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
VLDM            R1, {S0-S7}
ADD             R1, R4, #0x18
ADD             R6, R4, #0x38 ; '8'
MOV             R0, #0
VSTM            R1, {S0-S7}
ADD             R1, R5, #0x20 ; ' '
LDM             R1, {R1-R3}
STM             R6, {R1-R3}
MOV             R3, #0x100
STRB            R0, [R4,#0x10]
STRB            R0, [R4,#0xF]
LDRB            R1, [R5]
LDR             R0, [R5,#4]
MOV             R2, #1
BL              sub_14C548
LDRB            R0, [R5,#0xC]
MOV             R3, #0x100
MOV             R2, #1
CMP             R0, #1
LDR             R0, [R4,#0x20]
MOVEQ           R1, #2
MOVNE           R1, #3
BL              sub_14C548
MOV             R0, #1
STRB            R0, [R4,#0x44]
POP             {R4-R6,PC}
