PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, =off_6CE970
MOV             R4, R1
LDR             R1, =0x10C51C
MOV             R6, R2
LDR             R0, [R0]
ADD             R0, R0, R1
BL              sub_5F1964
CMP             R0, #0
BEQ             locret_20B284
CMP             R4, #0
ADDNE           R1, R4, #4
MOVEQ           R1, #0
MOV             R2, R6
MOV             R0, R5
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
