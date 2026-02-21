PUSH            {R4-R6,LR}
MOV             R5, R0
LDRB            R0, [R0,#0xC]
MOV             R4, R1
CMP             R0, #0
BEQ             loc_128C10
LDRSB           R0, [R5,#0xD]
CMN             R0, #1
BEQ             loc_128C18
MOV             R0, #0
POP             {R4-R6,PC}
CMP             R4, #0
CMPNE           R4, #1
BNE             loc_128C10
BL              sub_129050
MOV             R2, R4
MOV             R1, #1
BL              sub_132E40
CMP             R0, #0
MOVNE           R0, #1
STRBNE          R4, [R5,#0xD]
POP             {R4-R6,PC}
