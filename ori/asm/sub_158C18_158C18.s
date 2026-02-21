PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R7, R1
LDR             R0, [R0,#0x18]
LDR             R0, [R0,#8]
ADD             R0, R0, #0x28 ; '('
BL              sub_13273C
LDR             R0, [R6,#0x18]
LDR             R0, [R0,#8]
LDR             R5, [R0,#4]
CMP             R5, #0
BEQ             loc_158D60
LDR             R0, [R5]
LDR             R8, =0x81000002
MOV             R2, #0xFFFFFF02
LDR             R3, [R0,#0xC]
MOV             R1, R8
MOV             R0, R5
BLX             R3
CMP             R0, #0
BEQ             loc_158CEC
LDR             R0, [R5,#0x10]
CMP             R0, R6
BNE             loc_158CEC
LDR             R0, [R5,#0x28]
CMP             R0, R7
BNE             loc_158CEC
LDR             R0, [R6,#0x18]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
CMP             R0, #0
BEQ             loc_158CB0
LDRH            R0, [R5,#0x24]
ORR             R0, R0, #1
STRH            R0, [R5,#0x24]
B               loc_158D60
LDR             R0, [R6,#0x18]
MOV             R2, #0
MOV             R1, R5
LDR             R0, [R0,#8]
BL              sub_50F3BC
LDR             R0, [R5,#0x14]
CMP             R0, #0
BEQ             loc_158D60
LDR             R1, [R5,#8]
CMP             R1, #0
BEQ             loc_158D60
BL              sub_110D10
MOV             R0, #0
STR             R0, [R5,#0x14]
B               loc_158D60
LDR             R4, [R5,#4]
CMP             R4, #0
BEQ             loc_158D60
LDR             R0, [R4]
MOV             R2, #0xFFFFFF02
MOV             R1, R8
LDR             R3, [R0,#0xC]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BEQ             loc_158D50
LDR             R0, [R4,#0x10]
CMP             R0, R6
BNE             loc_158D50
LDR             R0, [R4,#0x28]
CMP             R0, R7
BNE             loc_158D50
LDR             R0, [R6,#0x18]
MOV             R2, R5
MOV             R1, R4
LDR             R0, [R0,#8]
BL              sub_50F3BC
NOP
NOP
B               loc_158D60
MOV             R5, R4
LDR             R4, [R4,#4]
CMP             R4, #0
BNE             loc_158CF8
LDR             R0, [R6,#0x18]
LDR             R0, [R0,#8]
POP             {R4-R8,LR}
ADD             R0, R0, #0x28 ; '('
B               sub_1327BC
