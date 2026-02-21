PUSH            {R4-R6,LR}
MOV             R5, R1
MOV             R1, #0
STR             R2, [R0]
STRB            R1, [R0,#4]
ADD             R0, R0, #8
BL              sub_14F198
SUB             R4, R0, #8
LDR             R0, [R0,#-8]
MOV             R2, #0
LDR             R1, [R0]
ADD             R0, R4, #8
BL              sub_14E6E0
MOV             R1, #1
ADD             R0, R4, #8
BL              sub_14C450
MOV             R0, #1
STRB            R0, [R4,#0xF9]
MOV             R1, R5
ADD             R0, R4, #8
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #8
BL              sub_14C3E8
MOV             R0, R4
POP             {R4-R6,PC}
