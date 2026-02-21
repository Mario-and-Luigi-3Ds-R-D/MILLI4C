PUSH            {R4-R6,LR}
MOV             R5, R0
ADD             R0, R0, #0x2C ; ','
MOV             R3, #0
MOV             R12, #1
STM             R0, {R3,R12}
STR             R3, [R0,#8]
STR             R3, [R0,#0xC]
STR             R3, [R0,#0x10]
STR             R3, [R0,#0x14]
MOV             R0, R5
BL              sub_2986A8
LDR             R0, [R5,#0x3C]
LDR             R4, [R5,#0x38]
CMP             R0, R4
BEQ             loc_29A57C
LDR             R0, [R4]
LDRB            R1, [R0,#6]
CMP             R1, #2
CMPNE           R1, #9
BLNE            sub_299900
LDR             R0, [R5,#0x3C]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_29A558
MOV             R0, R5
POP             {R4-R6,PC}
