LDR             R0, [R0,#0x68]
NOP
PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R1,#4]
MOV             R5, R1
CMP             R0, #0
MOVEQ           R0, #3
STRBEQ          R0, [R1,#0x11]
BEQ             locret_13F0AC
MOV             R0, #0
STR             R0, [R5,#0x14]
MOV             R0, #1
ADD             R6, R4, #0x70 ; 'p'
STRB            R0, [R5,#0x11]
MOV             R0, R6
BL              sub_13273C
LDR             R0, [R4,#0x30]
CMP             R0, #0
STREQ           R5, [R4,#0x30]
BEQ             loc_13F080
LDR             R1, [R0,#0x14]
CMP             R1, #0
BEQ             loc_13F07C
MOV             R0, R1
LDR             R1, [R1,#0x14]
CMP             R1, #0
BNE             loc_13F06C
STR             R5, [R0,#0x14]
LDRH            R0, [R4,#6]
CMP             R0, #0
MOVEQ           R0, #1
STRHEQ          R0, [R4,#6]
STRH            R0, [R5,#0x12]
LDRH            R0, [R4,#6]
ADD             R0, R0, #1
STRH            R0, [R4,#6]
MOV             R0, R6
POP             {R4-R6,LR}
B               sub_1327BC
POP             {R4-R6,PC}
