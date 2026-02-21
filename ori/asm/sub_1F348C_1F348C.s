PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R7, =0x402
MOV             R0, R7
BL              sub_6121AC
LDR             R1, [R4,#0x40]
CMP             R1, R0
LDREQ           R5, =0x15D1A
MOVEQ           R6, #0
BNE             locret_1F34D8
MOV             R1, R6
MOV             R0, R5
BL              sub_121140
MOV             R0, R7
NOP
BL              sub_6121AC
LDR             R1, [R4,#0x40]
CMP             R1, R0
BEQ             loc_1F34B4
POP             {R4-R8,PC}
