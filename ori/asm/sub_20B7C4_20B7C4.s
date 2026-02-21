PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, =off_6CE970
MOV             R4, R1
MOV             R6, R2
LDR             R0, [R0]
ADD             R0, R0, #0x120000
ADD             R0, R0, #0xF70
LDR             R0, [R0]
CMP             R0, #0
BEQ             locret_20B814
BL              sub_5CE5A0
CMP             R0, #0
BEQ             locret_20B814
MOVS            R1, R4
ADDNE           R1, R4, #4
MOV             R2, R6
MOV             R0, R5
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
