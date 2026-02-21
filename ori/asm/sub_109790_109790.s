MOV             R12, R0
PUSH            {R3-R5,LR}
MOV             R0, R1
MOV             R5, R2
MOV             R2, R0
LDR             R0, =off_6CED48
MOV             R4, R3
MOV             R3, R5
CMP             R12, #0x10000
LDR             R5, [R0]
MOV             R1, R12
MOV             R0, #0
BEQ             loc_1097EC
CMP             R1, #0x20000
BEQ             loc_109824
CMP             R1, #0x30000
BNE             locret_1097E8
STR             R4, [SP,#0x10+var_10]
LDR             R0, [R5,#0x134]
LDR             R12, [R0]
LDR             R12, [R12]
BLX             R12
POP             {R3-R5,PC}
MOV             R0, R2
BL              sub_10D540
LDR             R5, [R5,#0x12C]
MOV             R2, #0x10000
MOV             R1, #0
BL              sub_10D1B4
LDR             R1, [R5]
MOV             R2, R0
MOV             R0, R5
LDR             R3, [R1,#0xC]
ADD             SP, SP, #4
MOV             R1, R4
POP             {R4,R5,LR}
BX              R3
STR             R4, [SP,#0x10+var_10]
LDR             R0, [R5,#0x130]
LDR             R12, [R0]
LDR             R12, [R12]
BLX             R12
POP             {R3-R5,PC}
