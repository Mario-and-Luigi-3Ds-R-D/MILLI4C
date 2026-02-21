PUSH            {R4-R6,LR}
MOV             R5, #1
STRB            R5, [R0,#4]
STRB            R5, [R0,#0x420]
LDR             R3, [R0,#0xC]
MOV             R4, R0
LDR             R0, =off_6CDF98
MOV             R2, #0
LDR             R0, [R0]
LDR             R1, [R0,#0x13C]
LDR             R0, [R3]
LDR             R12, [R0,#0x58]
MOV             R0, R3
BLX             R12
LDR             R0, [R4,#0xC]
MOV             R1, #1
BL              sub_14C450
LDR             R0, [R4,#0xC]
MOV             R1, #2
MOV             R2, #0
MOV             R3, #0x100
STRB            R1, [R0,#0xF1]
LDR             R0, [R4,#0xC]
MOV             R1, R2
BL              sub_14C548
LDR             R0, [R4,#0xC]
MOV             R1, #0
LDRB            R2, [R0,#0xF6]
STRB            R2, [R4,#0x1C]
STRB            R1, [R0,#0xF6]
LDR             R0, [R4,#0xC]
STRB            R5, [R0,#0xF2]
POP             {R4-R6,PC}
