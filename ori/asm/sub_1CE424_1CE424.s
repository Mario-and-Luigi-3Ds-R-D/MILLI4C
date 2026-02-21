PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R6, R2
MOV             R8, R3
MOV             R1, #0
ADD             R4, R0, #4
ADD             R7, R0, #0xF4
CMP             R5, #0
BNE             loc_1CE484
LDRB            R0, [R4,#0x28]
CMP             R6, #0
BEQ             loc_1CE47C
CMP             R0, #0
BEQ             loc_1CE484
CMP             R0, #7
CMPNE           R0, #8
CMPNE           R0, #9
BNE             loc_1CE4C8
LDRH            R0, [R4,#0x30]
CMP             R0, #0x64 ; 'd'
BCC             loc_1CE4C8
B               loc_1CE484
CMP             R0, #0
BNE             loc_1CE4C8
LDRB            R0, [R4,#0x28]
CMP             R0, R5
BNE             loc_1CE4D8
CMP             R6, #0
BEQ             loc_1CE4C0
CMP             R0, #0
BEQ             loc_1CE4D8
CMP             R0, #7
CMPNE           R0, #8
CMPNE           R0, #9
BNE             loc_1CE4C8
LDRH            R0, [R4,#0x30]
CMP             R0, #0x64 ; 'd'
BCS             loc_1CE4D8
B               loc_1CE4C8
CMP             R0, #0
BEQ             loc_1CE4D8
MOV             R1, R8
MOV             R0, R4
BL              sub_1CD544
MOV             R1, #1
ADD             R4, R4, #0x3C ; '<'
CMP             R4, R7
BNE             loc_1CE440
MOV             R0, R1
POP             {R4-R8,PC}
