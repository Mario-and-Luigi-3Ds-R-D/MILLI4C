PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xE]
CMP             R0, #0
BEQ             loc_1C42EC
LDR             R0, [R4]
LDR             R1, [R0,#0x10]
MOV             R0, R4
BLX             R1
MOV             R1, #0
STRB            R1, [R4,#0xE]
LDRB            R0, [R4,#0x24]
LDR             R5, =off_6CE970
CMP             R0, #1
BEQ             loc_1C4380
CMP             R0, #2
BNE             locret_1C437C
LDR             R0, [R4,#0x14]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_1C437C
LDR             R0, [R4,#0x18]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_1C437C
LDR             R0, [R5]
BL              sub_5EE764
CMP             R0, #0
LDRBEQ          R0, [R4,#0x44]
CMPEQ           R0, #2
BNE             locret_1C437C
LDR             R0, [R4,#0x40]
MOV             R2, #0
MOV             R1, R2
STR             R0, [R4,#0x4C]
STR             R0, [R4,#0x48]
LDR             R0, =off_6CDD80
LDR             R0, [R0]
BL              sub_1C3848
MOV             R1, #3
MOV             R0, #1
STRB            R1, [R4,#0x24]
STRB            R0, [R4,#0xC]
POP             {R4-R6,PC}
LDR             R0, [R4,#0x10]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_1C437C
LDR             R0, [R4,#0x1C]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_1C437C
LDR             R0, [R5]
BL              sub_5EE764
CMP             R0, #0
NOP
BNE             locret_1C437C
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_1C43D8
