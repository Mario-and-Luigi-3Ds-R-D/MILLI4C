PUSH            {R4-R6,LR}
MOV             R6, R0
LDR             R0, [R0,#0x18]
LDR             R0, [R0,#8]
ADD             R0, R0, #0x28 ; '('
BL              sub_13273C
LDR             R0, [R6,#0x18]
LDR             R0, [R0,#8]
LDR             R5, [R0,#4]
CMP             R5, #0
BEQ             loc_1DFEE8
LDM             R5, {R0,R4}
MOV             R2, #0xFFFFFF01
LDR             R1, =0x81000001
LDR             R3, [R0,#0xC]
MOV             R0, R5
BLX             R3
CMP             R0, #0
BEQ             loc_1DFE74
LDR             R0, [R5,#0x10]
CMP             R0, R6
BNE             loc_1DFE74
LDR             R0, [R6,#0x18]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
CMP             R0, #0
BEQ             loc_1DFE2C
LDRH            R0, [R5,#0x24]
ORR             R0, R0, #1
STRH            R0, [R5,#0x24]
B               loc_1DFE74
LDR             R0, [R6,#0x18]
MOV             R2, #0
MOV             R1, R5
LDR             R0, [R0,#8]
BL              sub_50F3BC
LDR             R0, [R5,#0x14]
CMP             R0, #0
BEQ             loc_1DFE64
LDR             R1, [R5,#8]
CMP             R1, #0
BEQ             loc_1DFE64
BL              sub_110D10
MOV             R0, #0
STR             R0, [R5,#0x14]
LDR             R0, [R6,#0x18]
MOV             R5, #0
LDR             R0, [R0,#8]
LDR             R4, [R0,#4]
CMP             R4, #0
BEQ             loc_1DFEE8
LDR             R0, [R4]
MOV             R2, #0xFFFFFF00
MOV             R1, #0x81000000
LDR             R3, [R0,#0xC]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BEQ             loc_1DFED8
LDR             R0, [R4,#0x10]
CMP             R0, R6
BNE             loc_1DFED8
LDR             R0, [R6,#0x18]
MOV             R2, R5
MOV             R1, R4
LDR             R0, [R0,#8]
BL              sub_50F3BC
CMP             R5, #0
LDRNE           R4, [R5,#4]
BNE             loc_1DFEE0
LDR             R0, [R6,#0x18]
LDR             R0, [R0,#8]
LDR             R4, [R0,#4]
B               loc_1DFEE0
MOV             R5, R4
LDR             R4, [R4,#4]
CMP             R4, #0
BNE             loc_1DFE7C
LDR             R0, [R6,#0x18]
LDR             R0, [R0,#8]
POP             {R4-R6,LR}
ADD             R0, R0, #0x28 ; '('
B               sub_1327BC
