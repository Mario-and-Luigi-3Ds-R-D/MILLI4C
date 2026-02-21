PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R8, R0
LDR             R0, [R2,#0x10]
ADD             R1, R2, #8
MOV             R4, R2
AND             R6, R0, #0xFF
LDM             R1, {R1,R2}
LDR             R0, =off_6CE970
AND             R7, R2, #0xFF
UXTH            R1, R1
LDR             R0, [R0]
BL              sub_528FF0
MOV             R2, R6
MOV             R1, R7
BL              sub_5ECC58
MOV             R6, R0
BL              sub_5F15C4
CMP             R0, #0
LDRBNE          R0, [R6,#0x13]
CMPNE           R0, #0
BEQ             loc_20A700
MOV             R0, R6
BL              sub_5F159C
CMP             R0, #0
BEQ             loc_20A700
MOVS            R1, R5
ADDNE           R1, R5, #4
MOV             R2, R4
MOV             R0, R8
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R8,PC}
MOV             R0, #0
POP             {R4-R8,PC}
