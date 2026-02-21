PUSH            {R4-R10,LR}
MOV             R4, R0
LDRB            R0, [R0,#8]
CMP             R0, #0
BEQ             locret_1A0770
LDR             R6, =off_6CE388
CMP             R0, #1
BEQ             loc_1A0600
CMP             R0, #2
BNE             locret_1A0770
LDRB            R0, [R4,#0x1C]
LDR             R7, =off_6CE970
LDR             R8, =0xFFE683CC
CMP             R0, #0
MOV             R5, #1
BNE             loc_1A06B4
B               loc_1A0670
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x5C]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             locret_1A0770
MOV             R0, #2
STRB            R0, [R4,#8]
LDR             R0, [R4,#4]
LDR             R5, [R0,#0x5C]
LDR             R0, [R6]
LDR             R0, [R0,#0x9C]
NOP
NOP
LDR             R0, [R0,#0xC]
MOV             R1, R0
LDR             R0, [R5]
MOV             R2, #0
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
LDR             R0, [R4,#4]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x14
LDR             R0, [R0,#0x5C]
POP             {R4-R10,LR}
B               sub_14C548
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x5C]
BL              sub_5C5590
MOV             R9, R0
LDR             R0, [R6]
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x6C0]
CMP             R9, R0
BNE             loc_1A06B4
LDR             R0, [R4,#4]
LDR             R2, =0x3074C
MOV             R3, #0
LDR             R1, [R0,#0x5C]
LDR             R0, [R7]
SUB             R0, R0, R8
BL              sub_503720
STRB            R5, [R4,#0x1C]
LDRB            R0, [R4,#0x1D]
CMP             R0, #0
BNE             loc_1A0704
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x5C]
BL              sub_5C5590
MOV             R9, R0
LDR             R0, [R6]
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x6C4]
CMP             R9, R0
BNE             loc_1A0704
LDR             R0, [R4,#4]
LDR             R2, =0x3074D
MOV             R3, #0
LDR             R1, [R0,#0x5C]
LDR             R0, [R7]
SUB             R0, R0, R8
BL              sub_503720
STRB            R5, [R4,#0x1D]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x5C]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             locret_1A0770
LDR             R0, [R4,#4]
LDR             R5, [R0,#0x5C]
LDR             R0, [R6]
LDR             R0, [R0,#0x9C]
NOP
NOP
LDR             R0, [R0,#8]
MOV             R1, R0
LDR             R0, [R5]
MOV             R2, #0
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
LDR             R0, [R4,#4]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #4
LDR             R0, [R0,#0x5C]
BL              sub_14C548
MOV             R0, #3
STRB            R0, [R4,#8]
POP             {R4-R10,PC}
