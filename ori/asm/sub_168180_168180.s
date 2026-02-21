LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
MOV             R5, R2
MOV             R2, R1
LDR             R0, [R0]
MOV             R4, R3
MOV             R1, #0
LDR             R0, [R0,#0xA0]
BL              sub_2D3DF8
STRH            R4, [R0,#0xA]
ADD             R2, R0, #0x7C ; '|'
VLDM            R5, {S0-S7}
ADD             R5, R5, #0x20 ; ' '
ADD             R4, R0, #0x9C
VSTM            R2, {S0-S7}
LDM             R5, {R1-R3,R12}
STM             R4, {R1-R3,R12}
POP             {R4-R6,PC}
