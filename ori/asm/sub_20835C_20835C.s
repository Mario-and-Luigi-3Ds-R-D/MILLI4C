PUSH            {R4-R9,LR}
MOV             R6, R1
MOV             R7, R0
SUB             SP, SP, #0x14
LDR             R1, [R2,#8]
LDR             R0, [R2,#0xC]
LDR             R9, =off_6CE970
MOV             R4, R2
UXTH            R8, R1
UXTH            R5, R0
LDR             R0, [R9]
ADD             R2, R2, #0x70 ; 'p'
ADD             R1, SP, #0x30+var_2C
BL              sub_529034
LDR             R0, [R9]
MOV             R1, R5
BL              sub_528EB0
MOV             R2, R0
LDR             R0, [R9]
MOV             R5, #0
ADD             R3, SP, #0x30+var_2C
MOV             R1, R8
STR             R5, [SP,#0x30+var_30]
BL              sub_52B72C
LDRH            R2, [R4]
MOV             R1, R0
CMP             R2, #0x130
BNE             loc_2083DC
MOV             R3, R4
MOV             R2, R6
MOV             R0, R7
BL              sub_145674
ADD             SP, SP, #0x14
MOV             R0, R5
POP             {R4-R9,PC}
