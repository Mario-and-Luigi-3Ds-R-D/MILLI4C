PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
MOV             R3, #0x810000
MOV             R2, #0
LDR             R0, [R0]
ADD             R1, R0, #8
MOV             R0, #0x1C
BL              sub_10A358
CMP             R0, #0
BEQ             locret_146E48
MOV             R2, #1
MOV             R1, R4
BL              sub_21B5C4
POP             {R4,PC}
