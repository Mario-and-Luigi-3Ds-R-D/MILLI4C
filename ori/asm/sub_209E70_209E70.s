PUSH            {R4-R6,LR}
MOV             R6, R1
LDR             R0, [R2,#8]
SUB             SP, SP, #0x28
MOV             R4, R2
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
MOV             R5, R0
MOV             R1, R6
MOV             R2, R4
MOV             R3, #1
MOV             R0, SP
BL              sub_47C3A0
LDRB            R2, [SP,#0x38+var_18]
VLDR            S0, [SP,#0x38+var_14]
MOV             R1, SP
MOV             R0, R5
BL              sub_14DE84
MOV             R1, #1
MOV             R0, R5
BL              sub_14DCB0
ADD             SP, SP, #0x28 ; '('
MOV             R0, #0
POP             {R4-R6,PC}
