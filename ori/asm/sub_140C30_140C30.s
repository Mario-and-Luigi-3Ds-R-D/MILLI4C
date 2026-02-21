PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R6, R1
LDR             R0, [R1]
LDR             R1, [R4]
MOV             R7, #1
TST             R1, R7,LSL R0
BEQ             locret_140CE4
LDRB            R0, [R6,#4]
CMP             R0, #1
BEQ             loc_140C68
MOV             R1, #1
MOV             R0, R6
BL              sub_14121C
ADD             R0, R4, #0x10
MOV             R5, R0
BL              sub_13273C
LDRD            R0, R1, [R6,#0x24]
ORRS            R2, R0, R1
BEQ             loc_140CD4
CMP             R1, #0
BEQ             loc_140C94
CMP             R0, #0
STR             R0, [R1,#0x24]
STREQ           R1, [R4,#4]
CMP             R0, #0
BEQ             loc_140CAC
LDR             R1, [R6,#0x28]
CMP             R1, #0
STR             R1, [R0,#0x28]
STREQ           R0, [R4,#8]
LDR             R1, [R6]
LDR             R0, [R4]
BIC             R0, R0, R7,LSL R1
STR             R0, [R4]
LDRH            R0, [R4,#0xC]
SUB             R0, R0, #1
STRH            R0, [R4,#0xC]
MOV             R0, R5
POP             {R4-R8,LR}
B               sub_1327BC
MOV             R0, #0
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_140CAC
POP             {R4-R8,PC}
