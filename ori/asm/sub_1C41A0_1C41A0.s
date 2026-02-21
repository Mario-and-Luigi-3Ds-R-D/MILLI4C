PUSH            {R3-R7,LR}
MOV             R4, R0
MOV             R6, R1
LDR             R0, =off_6CE970
LDR             R5, [R0]
BL              sub_4635D8
MOV             R7, #0
MOV             R3, R0
LDR             R1, =0x1B1
MOV             R2, R6
MOV             R0, R5
STR             R7, [SP,#0x18+var_18]
BL              sub_52C7A8
STR             R0, [R4,#0x54]
STRH            R7, [R0,#0xA]
POP             {R3-R7,PC}
