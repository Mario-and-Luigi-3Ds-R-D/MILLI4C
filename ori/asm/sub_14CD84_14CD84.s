PUSH            {R4-R8,LR}
MOV             R6, R0
SUB             SP, SP, #0x10
LDR             R1, [R0,#0xB4]
LDR             R0, =off_6ACD58
MOV             R7, #0
CMP             R1, #0
STR             R0, [R6]
BEQ             loc_14CDF0
LDR             R0, [R6,#0xAC]
CMP             R0, #0
SUBSNE          R0, R0, #0x188
MOVEQ           R0, #0
ADDNE           R0, R0, #0x188
CMP             R0, #0
LDRNE           R4, [R0,#8]
MOVEQ           R4, #0
BEQ             loc_14CDF0
CMP             R0, #0
SUBNE           R0, R0, #0x188
MOV             R1, R6
BL              sub_149BDC
MOVS            R0, R4
MOVEQ           R4, #0
LDRNE           R4, [R0,#8]
CMP             R0, R7
BNE             loc_14CDCC
LDR             R0, [R6,#0xC4]
CMP             R0, #0
BEQ             loc_14CE2C
LDR             R0, [R6,#0xBC]
CMP             R0, #0
LDRNE           R4, [R0,#8]
MOVEQ           R4, #0
BEQ             loc_14CE2C
MOV             R1, R6
BL              sub_2A2594
MOVS            R0, R4
MOVEQ           R4, #0
LDRNE           R4, [R0,#8]
CMP             R0, R7
BNE             loc_14CE10
LDR             R0, [R6,#0xD4]
CMP             R0, #0
BEQ             loc_14CE80
LDR             R0, [R6,#0xCC]
CMP             R0, #0
SUBSNE          R0, R0, #0x54 ; 'T'
MOVEQ           R0, #0
ADDNE           R0, R0, #0x54 ; 'T'
CMP             R0, #0
LDRNE           R4, [R0,#8]
MOVEQ           R4, #0
BEQ             loc_14CE80
CMP             R0, #0
SUBNE           R0, R0, #0x54 ; 'T'
MOV             R1, R6
BL              sub_15872C
MOVS            R0, R4
MOVEQ           R4, #0
LDRNE           R4, [R0,#8]
CMP             R0, R7
BNE             loc_14CE5C
LDR             R0, [R6,#0xE4]
CMP             R0, #0
BEQ             loc_14CF24
LDR             R0, [R6,#0xDC]
CMP             R0, #0
SUBSNE          R0, R0, #0x14
MOVEQ           R0, #0
ADDNE           R0, R0, #0x14
CMP             R0, #0
LDRNE           R5, [R0,#8]
MOVEQ           R5, #0
MOVNE           R8, R7
BEQ             loc_14CF24
CMP             R0, #0
MOVEQ           R4, #0
SUBNE           R4, R0, #0x14
LDR             R0, [R4,#0x20]
CMP             R0, #0
STREQ           R8, [R4,#0xEC]
BEQ             loc_14CF10
LDR             R0, [R4,#0xEC]
TST             R0, #0xFF00
BEQ             loc_14CF00
MOV             R2, #0
MOV             R1, SP
MOV             R0, R4
BL              sub_5C4198
LDR             R0, [R4]
MOV             R1, SP
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
ADD             R0, R4, #0x14
BL              sub_528B1C
STR             R8, [R4,#0xE8]
STR             R8, [R4,#0xEC]
MOVS            R0, R5
MOVEQ           R5, #0
LDRNE           R5, [R0,#8]
CMP             R0, R7
BNE             loc_14CEB4
LDR             R0, [R6,#0x20]
CMP             R0, #0
BEQ             loc_14CF40
ADD             R0, R6, #0x14
BL              sub_528B1C
STR             R7, [R6,#0xE8]
STR             R7, [R6,#0xEC]
LDR             R0, [R6,#0xC]
CMP             R0, #0
MOVNE           R0, R6
BLNE            sub_528B1C
LDR             R0, =off_6CE970
LDRH            R1, [R6,#0x10]
LDR             R0, [R0]
BL              sub_52B5C0
ADD             R0, R6, #0xD8
NOP
NOP
SUB             R0, R0, #0x10
NOP
NOP
SUB             R0, R0, #0x10
NOP
NOP
SUB             R0, R0, #0x10
NOP
NOP
LDR             R1, =off_6B521C
STR             R1, [R0,#-0xA8]!
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
