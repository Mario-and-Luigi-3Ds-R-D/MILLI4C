PUSH            {R2-R6,LR}
MOVS            R4, R0
MOVS            R5, #0
LDR             R0, [R0]
LDR             R1, [R0,#0xC]
MOVS            R0, R4
BLX             R1
STRB            R0, [R4,#0x10]
LDR             R0, [R4]
LDR             R1, [R0,#0x10]
MOVS            R0, R4
BLX             R1
STRB            R0, [R4,#0x11]
LDR             R0, [R4]
MOVS            R1, R4
LDR             R2, [R0,#0x14]
ADD             R0, SP, #0x18+var_14
BLX             R2
MOVS            R0, R4
ADDS            R0, #0x14
ADD             R1, SP, #0x18+var_14
BL              sub_301684
ADD             R0, SP, #0x18+var_14
BL              sub_3015EC
LDR             R0, [R4]
MOVS            R1, R4
LDR             R2, [R0,#0x1C]
MOV             R0, SP
BLX             R2
MOVS            R0, R4
ADDS            R0, #0x1C
MOV             R1, SP
BL              sub_301684
MOV             R0, SP
BL              sub_3015EC
LDR             R0, [R4]
MOVS            R1, R4
LDR             R2, [R0,#0x18]
MOV             R0, SP
BLX             R2
MOVS            R0, R4
ADDS            R0, #0x18
MOV             R1, SP
BL              sub_301684
MOV             R0, SP
BL              sub_3015EC
ADDS            R4, #0x10
LDR             R0, [R4,#8]
STR             R0, [R4,#0x10]
MOVS            R0, #1
STR             R0, [R4,#0x14]
LDR             R0, [R4,#0xC]
STR             R5, [R4,#0x1C]
STR             R0, [R4,#0x18]
MOVS            R0, #2
STR             R0, [R4,#0x20]
MOVS            R0, R4
ADDS            R0, #0x10
STR             R0, [R4,#0x24]
POP             {R2-R6,PC}
