LDR             R0, [R0,#0x68]
NOP
PUSH            {R4-R6,LR}
MOV             R6, R0
ADD             R5, R0, #0x70 ; 'p'
MOV             R4, R1
MOV             R0, R5
BL              sub_13273C
LDR             R2, [R6,#0x30]
CMP             R2, #0
BEQ             loc_13F114
CMP             R2, R4
BNE             loc_13F108
LDRB            R0, [R4,#0x11]
CMP             R0, #3
BEQ             loc_13F114
LDRB            R0, [R6,#0x6F]
ORR             R0, R0, #1
STRB            R0, [R6,#0x6F]
MOV             R0, #4
STRB            R0, [R4,#0x11]
B               loc_13F114
LDR             R2, [R2,#0x14]
CMP             R2, #0
BNE             loc_13F0DC
MOV             R0, R5
POP             {R4-R6,LR}
B               sub_1327BC
