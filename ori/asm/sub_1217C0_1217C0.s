LDRB            R3, [R0,#0xC]
CMP             R3, #0
BNE             loc_1217F0
CMP             R1, #0
BEQ             loc_1217F0
CMP             R2, #0
BEQ             loc_1217F0
LDR             R12, [R0]
MOV             R3, #0
CMP             R12, #0
BEQ             loc_1217F8
B               loc_12180C
MOV             R0, #0
BX              LR
CMP             R1, #0x14000000
ADD             R12, R1, R2
BCC             loc_12180C
CMP             R12, #0x1C000000
BCC             loc_121818
MOV             R1, R3
MOV             R0, R1
BX              LR
ADD             R12, R1, #0xC000000
STR             R2, [R0,#8]
STM             R0, {R1,R12}
MOV             R3, #1
MOV             R1, R3
STRB            R3, [R0,#0xC]
B               loc_121810
