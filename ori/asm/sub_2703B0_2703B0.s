PUSH            {R0,R1}
MOV             R3, #1
LDRB            R1, [SP,#8+var_4]
STRB            R1, [R0,#0x5A8]
STR             R3, [R0,#0x5AC]
LDR             R0, [R0,#0xC4]
CMP             R0, #0
BEQ             loc_2703E0
LDR             R2, [R0]
LDR             R2, [R2,#8]
ADD             SP, SP, #8
BX              R2
ADD             SP, SP, #8
BX              LR
