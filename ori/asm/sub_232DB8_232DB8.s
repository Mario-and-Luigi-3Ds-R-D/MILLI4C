PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_232E04
LDR             R0, [R4,#0x38]
CMP             R0, #0
BEQ             loc_232DF8
ADD             R0, R4, #0x38 ; '8'
BL              sub_4BE0F8
MOV             R0, #0
STR             R0, [R4,#0x38]
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_232E04
LDR             R0, [R4]
BL              sub_2FF5D4
STR             R5, [R4]
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             loc_232E18
BL              sub_2FF5D4
STR             R5, [R4,#8]
LDR             R0, =0xFFFFF
STR             R0, [R4,#0x10]!
STR             R5, [R4,#0x2C]
POP             {R4-R6,PC}
