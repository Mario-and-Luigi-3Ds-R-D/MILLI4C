PUSH            {R3-R7,LR}
MOV             R4, R0
CMP             R1, #0x13
LDR             R0, [R0,#0x14]
BEQ             loc_1CE734
CMP             R0, #0
BEQ             locret_1CE778
LDR             R3, [R0]
LDR             R3, [R3,#8]
ADD             SP, SP, #4
POP             {R4-R7,LR}
BX              R3
LDR             R1, =off_6CDFD8
CMP             R0, #0
MOV             R6, SP
ADD             R5, R4, #0x40 ; '@'
LDR             R1, [R1]
LDR             R1, [R1,#0x118]
STR             R1, [SP,#0x18+var_18]
BEQ             loc_1CE760
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
STR             R5, [R4,#0x14]
LDR             R0, [R5]
MOV             R1, R6
LDR             R2, [R0,#0xC]
MOV             R0, R5
BLX             R2
POP             {R3-R7,PC}
