PUSH            {R4-R10,LR}
ADD             R6, R0, #0x10
MOV             R8, R0
MOV             R9, #0
LDR             R0, [R0,#0x18]
LDR             R5, [R0,#4]
CMP             R5, R0
MOVSNE          R4, R5
BEQ             loc_221884
LDR             R0, [R4,#8]
BL              sub_21F59C
LDR             R0, [R4,#8]
LDR             R1, [R0,#8]
CMP             R1, #0
LDRNE           R1, [R0,#0x14]
CMPNE           R1, #0
ADDNE           R7, R0, #0x14
BEQ             loc_22181C
MOV             R0, R1
BL              sub_110D10
STR             R9, [R7]
LDR             R0, [R4,#8]
CMP             R5, #0
LDR             R0, [R0,#0x28]
LDRB            R1, [R0,#4]
BIC             R1, R1, #4
STRB            R1, [R0,#4]
LDR             R0, [R4,#8]
STR             R9, [R0,#0x28]
LDR             R1, [R5]
BEQ             loc_221870
LDR             R2, [R5,#4]
STR             R1, [R2]
LDM             R5, {R0,R2}
STR             R2, [R0,#4]
LDR             R0, [R6,#4]
LDR             R2, [R0]
STR             R2, [R5]
LDR             R2, [R0]
STR             R5, [R2,#4]
STR             R0, [R5,#4]
STR             R5, [R0]
LDR             R0, [R6,#8]
LDR             R4, [R1,#4]
CMP             R4, R0
MOVSNE          R5, R4
BNE             loc_2217EC
MOV             R0, #2
STRB            R0, [R8,#0x38]
POP             {R4-R10,PC}
