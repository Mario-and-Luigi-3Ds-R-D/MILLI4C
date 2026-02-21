PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R0, SP, #0x18+arg_0
MOV             R5, R1
LDM             R0, {R7,R8}
MOV             R6, R2
MOV             R1, R3
ADD             R0, R4, #0x18
BL              sub_132D14
MOV             R1, R7
ADD             R0, R4, #0x18
BL              sub_132D24
MOV             R1, R8
ADD             R0, R4, #0x18
BL              sub_132D44
MOV             R2, R6
MOV             R1, R5
ADD             R0, R4, #0x18
BL              sub_132BB4
CMP             R0, #0
BEQ             locret_12883C
LDR             R1, [R4,#0x54]
ADD             R1, R1, #1
STR             R1, [R4,#0x54]
POP             {R4-R8,PC}
