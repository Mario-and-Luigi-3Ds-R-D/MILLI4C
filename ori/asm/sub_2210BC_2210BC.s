PUSH            {R4,LR}
LDR             R0, [R0,#4]
LDR             R0, [R0,#0xB10]
ANDS            R0, R0, #8
BEQ             locret_221198
LDR             R4, =off_6D1648
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #9
LDR             R0, [R4]
BEQ             loc_221110
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #0xB
BEQ             loc_221154
B               loc_22119C
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R4, [R0,#0x1CC]
LDR             R0, [R4]
LDR             R1, [R0,#0x5C]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             loc_22119C
LDR             R0, [R4]
LDR             R1, [R0,#0xDC]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             loc_221194
B               loc_22119C
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R4, [R0,#0x1CC]
LDR             R0, [R4]
LDR             R1, [R0,#0x5C]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             loc_22119C
LDR             R0, [R4]
LDR             R1, [R0,#0xDC]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_22119C
MOV             R0, #1
POP             {R4,PC}
MOV             R0, #0
POP             {R4,PC}
