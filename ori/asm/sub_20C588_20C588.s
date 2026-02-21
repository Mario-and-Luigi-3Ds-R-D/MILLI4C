PUSH            {R4-R7,LR}
MOV             R6, R1
SUB             SP, SP, #0x2C
LDR             R0, [R2,#8]
MOV             R4, R2
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
MOV             R5, R0
LDR             R0, [R4,#0x14]
MOV             R1, R6
MOV             R2, R4
MOV             R3, #1
UXTH            R7, R0
MOV             R0, SP
BL              sub_47C3A0
LDRB            R2, [SP,#0x40+var_20]
VLDR            S0, [SP,#0x40+var_1C]
MOV             R1, SP
MOV             R0, R5
BL              sub_14DE84
MOV             R2, #1
MOV             R1, R7
MOV             R0, R5
BL              sub_14DBD8
ADD             SP, SP, #0x2C ; ','
MOV             R0, #0
POP             {R4-R7,PC}
