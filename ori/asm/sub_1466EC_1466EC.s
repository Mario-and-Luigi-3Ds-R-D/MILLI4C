PUSH            {R3-R7,LR}
MOV             R5, R0
MOV             R0, #0x810000
MOV             R4, R0
MOV             R0, R5
BL              sub_4F264C
MOV             R1, R0
MOV             R3, R4
MOV             R2, #0
MOV             R0, #0x10
BL              sub_10A358
CMP             R0, #0
BEQ             locret_146794
MOV             R1, #1
STRB            R1, [R0,#4]
LDR             R1, =off_6B2C70
MOV             R6, #0
MOV             R4, R0
STR             R1, [R0]
STR             R5, [R0,#8]
STRB            R6, [R0,#0xC]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_5EE958
EOR             R1, R0, #1
STRB            R1, [R4,#0xD]
STR             R6, [SP,#0x18+var_18]
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x24 ; '$'
BL              sub_4E3CA0
LDRB            R0, [R4,#0xD]
CMP             R0, #0
BEQ             loc_146790
LDR             R0, [R4,#8]
MOV             R1, #1
LDR             R0, [R0,#0x18]
BL              sub_14D728
MOV             R0, #0xA
STRB            R0, [R4,#0xC]
MOV             R0, R4
POP             {R3-R7,PC}
