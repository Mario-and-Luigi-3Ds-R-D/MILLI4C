PUSH            {R4-R6,LR}
MOVS            R4, R1
MOV             R5, R2
BEQ             loc_1B31A0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BNE             loc_1B31A0
LDRB            R0, [R4,#0xAAC]
CMP             R0, #5
BEQ             loc_1B3224
CMP             R4, #0
BEQ             loc_1B31CC
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BNE             loc_1B31CC
LDRB            R0, [R4,#0xAAC]
CMP             R0, #6
BEQ             loc_1B3224
CMP             R4, #0
BEQ             loc_1B31F8
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BNE             loc_1B31F8
LDRB            R0, [R4,#0xAAC]
CMP             R0, #7
BEQ             loc_1B3224
CMP             R4, #0
BEQ             loc_1B324C
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BNE             loc_1B324C
LDRB            R0, [R4,#0xAAC]
CMP             R0, #8
BNE             loc_1B324C
LDR             R0, [R4,#0xAA8]
MOV             R2, #0x188
LDRH            R1, [R0,#8]
LDRH            R2, [R2,R0]
AND             R1, R1, R2
TST             R1, #0x20
BEQ             loc_1B324C
LDR             R1, [R0]
LDR             R1, [R1,#0x6C]
BLX             R1
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R0, [R0,#4]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, R5
BGT             locret_1B328C
LDR             R1, [R4,#0x8F4]
MOV             R0, R4
TST             R1, #4
BEQ             locret_1B328C
POP             {R4-R6,LR}
B               sub_593DDC
POP             {R4-R6,PC}
