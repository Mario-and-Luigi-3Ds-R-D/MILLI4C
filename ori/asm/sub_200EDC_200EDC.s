PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6B64FC
MOV             R5, #0
STR             R0, [R4]
LDRB            R0, [R4,#4]
CMP             R0, #0
STREQ           R5, [R4,#8]
BEQ             loc_200F24
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             loc_200F14
BL              sub_2FF5D4
STR             R5, [R4,#8]
LDR             R0, [R4,#0x10]
CMP             R0, #0
BEQ             loc_200F28
BL              sub_2FF5D4
STR             R5, [R4,#0x10]
MOV             R0, R4
POP             {R4-R6,PC}
