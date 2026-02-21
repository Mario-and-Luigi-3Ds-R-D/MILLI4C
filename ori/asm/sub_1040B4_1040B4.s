LDR             R1, =0x4000000
MOV             R0, #0
PUSH            {R4,LR}
NOP
LDR             R1, =0x4000026
MOV             R0, #0
NOP
BL              sub_2FEF5C
MOV             R4, R0
MOV             R1, #0
MOV             R0, R1
BL              sub_11FEF4
ADD             R0, R0, #1
MOV             R1, #0
STR             R0, [R4,#4]
MOV             R0, R1
BL              sub_11FF3C
STR             R0, [R4,#0xC]
POP             {R4,PC}
