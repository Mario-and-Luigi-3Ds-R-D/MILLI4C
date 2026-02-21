PUSH            {R3-R5,LR}
MOVS            R4, R0
MOVS            R5, R1
MOVS            R0, R1
BLX             sub_300168
CMP             R0, #0
BEQ             loc_103C1C
LDR             R1, [R4]
MOVS            R3, R5
SUBS            R1, #0xC
LDR             R2, [R1,#8]
STR             R0, [SP,#0x10+var_10]
MOVS            R1, #0
MOVS            R0, R4
BL              sub_302910
POP             {R3-R5,PC}
LDR             R0, [R4]
SUBS            R0, #0xC
LDR             R1, [R0]
ADDS            R1, R1, #1
CMP             R1, #1
BEQ             loc_103C36
MOVS            R0, R4
BL              sub_302828
LDR             R0, =unk_711F8C
STR             R0, [R4]
MOVS            R0, R4
POP             {R3-R5,PC}
MOVS            R1, #0
STR             R1, [R0,#8]
LDR             R0, [R4]
MOV             R2, SP
STRB            R1, [R2,#0x10+var_10]
STRB            R1, [R0]
B               loc_103C32
