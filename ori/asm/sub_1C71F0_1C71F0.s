PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R7, R1
LDR             R0, =0x44A58
MOV             R4, #0
ADD             R6, R5, R0
LDRB            R0, [R6]
CMP             R0, #0
BLE             locret_1C725C
LDR             R0, =0x1D07
LDR             R1, =0x2E9F0
MUL             R0, R4, R0
ADD             R0, R5, R0,LSL#2
LDR             R1, [R1,R0]
CMP             R1, #0x400
CMPNE           R1, #0x410
BNE             loc_1C724C
ADD             R1, R0, #0x2D000
ADD             R0, R0, #0x27400
VLDR            S0, [R1,#0x84]
ADD             R0, R0, #0x1D8
MOV             R1, R7
BL              sub_2C20F0
LDRB            R0, [R6]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1C7214
POP             {R4-R8,PC}
