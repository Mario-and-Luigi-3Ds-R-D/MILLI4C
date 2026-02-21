PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC4]
MOV             R5, R1
MOV             R6, R2
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
CMP             R0, R5
BNE             loc_1E3578
LDR             R1, [R0]
LDR             R1, [R1,#0x468]
BLX             R1
CMP             R0, #2
CMPNE           R0, #3
MOVEQ           R0, #0
BEQ             locret_1E35A0
CMP             R0, #1
BEQ             loc_1E358C
MOV             R2, R6
MOV             R1, R5
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_1EC30C
MOV             R2, R6
MOV             R1, R5
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_1E421C
POP             {R4-R6,PC}
