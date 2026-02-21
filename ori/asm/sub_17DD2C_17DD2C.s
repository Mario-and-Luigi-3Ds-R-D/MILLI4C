PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R0, [R0,#4]
MOV             R5, R2
MOV             R6, R3
ADD             R0, R0, #0x13000
ADD             R0, R0, #0xB10
LDR             R0, [R0]
BL              sub_5D7748
CMP             R0, #0
BEQ             locret_17DD6C
MOV             R2, R6
MOV             R1, R5
MOV             R0, R4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
