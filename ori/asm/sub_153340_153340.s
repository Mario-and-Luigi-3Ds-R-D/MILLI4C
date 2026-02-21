PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R1, [R0,#8]
MOV             R6, #0
CMP             R1, #0
LDRNE           R0, [R1,#0x38]
CMPNE           R0, #0
BEQ             loc_153380
LDRB            R2, [R0,#0xF2]
CMP             R2, #0
ADDNE           R5, R1, #0x38 ; '8'
BEQ             loc_153380
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R6, [R5]
LDR             R0, [R4,#4]
CMP             R0, #0
STRNE           R6, [R0,#0x184]
STRNE           R6, [R4,#4]
POP             {R4-R6,PC}
