PUSH            {R4-R8,LR}
MOV             R6, R0
LDR             R0, [R0]
CMP             R0, #0
LDRNE           R5, [R0,#8]
CMPNE           R5, #0
BEQ             locret_2018E8
LDM             R5, {R0,R4,R7}
MOV             R1, R4
LDR             R2, [R0,#4]
MOV             R0, R5
BLX             R2
CMP             R0, #0
BEQ             loc_2018E0
CMP             R7, #0
STR             R7, [R4,#8]
STRNE           R4, [R7,#4]
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#4]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_2018BC
LDR             R0, [R4,#8]
STR             R0, [R5,#8]
STR             R4, [R5,#4]
LDR             R0, [R4,#8]
STR             R5, [R0,#4]
STR             R5, [R4,#8]
B               loc_2018E0
LDR             R0, [R6]
CMP             R0, R4
LDRNE           R4, [R4,#4]
BNE             loc_201884
STR             R4, [R5,#8]
LDR             R0, [R4,#4]
STR             R0, [R5,#4]
STR             R5, [R4,#4]
STR             R5, [R6]
MOVS            R5, R7
BNE             loc_20185C
POP             {R4-R8,PC}
