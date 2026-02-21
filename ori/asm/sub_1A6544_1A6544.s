PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R0, #0
LDR             R7, =off_6CE970
MOV             R4, #0xA000
ADD             R8, R4, #4
STRB            R0, [R5]
SUB             R0, R4, #0xA000
CMP             R0, #4
ADD             R1, R5, #4
BCC             loc_1A6574
BL              sub_2FE484
ADD             R6, R1, R0,LSL#2
UXTH            R1, R4
LDR             R0, [R7]
BL              sub_52FACC
ADD             R4, R4, #1
CMP             R4, R8
STR             R0, [R6]
BCC             loc_1A6560
MOV             R0, R5
POP             {R4-R8,PC}
