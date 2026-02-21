PUSH            {R3-R7,LR}
MOV             R5, R0
MOV             R6, R1
LDR             R1, =dword_6ED9B8
LDR             R0, =0x758
MOV             R3, #0x800000
MOV             R2, #0
BL              sub_10A358
CMP             R0, #0
ADD             R4, R5, #0x14000
BEQ             loc_166274
MOV             R1, #1
STR             R1, [SP,#0x18+var_18]
LDRB            R2, [R4,#0x28D]
MOV             R3, R6
MOV             R1, R5
BL              sub_1E8098
LDRB            R1, [R4,#0x28D]
ADD             R1, R5, R1,LSL#2
ADD             R1, R1, #0x14000
STR             R0, [R1,#0x184]
LDRB            R1, [R4,#0x28D]
ADD             R1, R1, #1
STRB            R1, [R4,#0x28D]
POP             {R3-R7,PC}
