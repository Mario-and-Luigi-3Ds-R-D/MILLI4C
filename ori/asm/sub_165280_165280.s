PUSH            {R4-R9,LR}
ADD             R1, R0, R1,LSL#2
ADD             R6, R1, #0x15000
CMP             R2, #0
LDR             R9, =off_6D1648
LDR             R3, [R6,#0x14C]
ADD             R1, R0, #0x15000
ADD             R5, R0, #0x17800
LDR             R2, [R9]
LDRB            R7, [R3,#0xB4]
ADD             R4, R0, #0x14400
SUB             SP, SP, #0xC
MOV             R8, #0
ADD             R1, R1, #0x13C
ADD             R5, R5, #0x2C8
ADD             R4, R4, #8
BEQ             loc_165434
CMP             R7, #5
BEQ             loc_165394
LDRB            R0, [R5]
CMP             R0, #3
BCS             loc_165334
MOV             R7, #1
MOV             R0, R2
BL              sub_1E45C8
MOV             R5, R0
MOV             R2, #0
STR             R8, [SP,#0x28+var_28]
STR             R8, [SP,#0x28+var_24]
LDR             R0, [R4]
MOV             R3, #0x25 ; '%'
MOV             R1, R2
BL              sub_2FC388
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x198]
MOV             R0, R5
BLX             R3
LDR             R0, [R4]
MOV             R3, R7
MOV             R2, #0
MOV             R1, #1
BL              sub_59AD78
B               loc_165414
CMP             R7, #0xD
BNE             loc_165348
MOV             R0, R1
BL              sub_19A10C
MOV             R7, R0
LDR             R0, [R9]
BL              sub_1E45C8
LDRB            R1, [R5]
MOV             R4, R0
MOV             R2, R7
BL              sub_5354E8
LDR             R0, [R4]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x198]
MOV             R0, R4
BLX             R3
LDR             R0, [R4]
MOV             R2, #0
MOV             R1, #1
LDR             R3, [R0,#0x198]
MOV             R0, R4
BLX             R3
B               loc_165414
LDR             R0, [R4]
LDRB            R0, [R0,#0x62E]
CMP             R0, #0
BNE             loc_165414
MOV             R7, #1
MOV             R0, R2
BL              sub_1E45C8
MOV             R5, R0
MOV             R2, #0
STR             R8, [SP,#0x28+var_28]
STR             R8, [SP,#0x28+var_24]
LDR             R0, [R4]
MOV             R3, #6
MOV             R1, R2
BL              sub_2FC388
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x198]
MOV             R0, R5
BLX             R3
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, #1
LDR             R3, [R0,#0x198]
MOV             R0, R5
BLX             R3
MOV             R2, #1
LDR             R0, [R4]
MOV             R3, R7
MOV             R1, R2
BL              sub_59AD78
LDR             R0, [R6,#0x14C]
ADD             R2, R0, #0xA4
LDR             R1, [R0]
LDR             R3, [R1,#0x34]
ADD             SP, SP, #0xC
MOV             R1, #0
POP             {R4-R9,LR}
BX              R3
CMP             R7, #5
BEQ             loc_165508
LDRB            R0, [R5]
CMP             R0, #3
BCS             loc_1654A8
MOV             R0, R2
BL              sub_1E45C8
MOV             R7, R0
MOV             R2, #0
STR             R8, [SP,#0x28+var_28]
STR             R8, [SP,#0x28+var_24]
LDR             R0, [R4]
MOV             R3, #0x25 ; '%'
MOV             R1, R2
BL              sub_2FC388
LDR             R0, [R7]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x198]
MOV             R0, R7
BLX             R3
LDR             R0, [R4]
MOV             R3, R8
MOV             R2, #0
MOV             R1, #1
BL              sub_59AD78
NOP
NOP
B               loc_165584
CMP             R7, #0xD
BNE             loc_1654BC
MOV             R0, R1
BL              sub_19A10C
MOV             R7, R0
LDR             R0, [R9]
BL              sub_1E45C8
LDRB            R1, [R5]
MOV             R8, R0
MOV             R2, R7
BL              sub_5354E8
LDR             R0, [R8]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x198]
MOV             R0, R8
BLX             R3
LDR             R0, [R8]
MOV             R2, #0
MOV             R1, #1
LDR             R3, [R0,#0x198]
MOV             R0, R8
BLX             R3
B               loc_165584
LDR             R0, [R4]
LDRB            R0, [R0,#0x62E]
CMP             R0, #0
BNE             loc_165584
MOV             R0, R2
BL              sub_1E45C8
MOV             R7, R0
MOV             R2, #0
STR             R8, [SP,#0x28+var_28]
STR             R8, [SP,#0x28+var_24]
LDR             R0, [R4]
MOV             R3, #6
MOV             R1, R2
BL              sub_2FC388
LDR             R0, [R7]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x198]
MOV             R0, R7
BLX             R3
LDR             R0, [R7]
MOV             R2, #0
MOV             R1, #1
LDR             R3, [R0,#0x198]
MOV             R0, R7
BLX             R3
MOV             R2, #1
LDR             R0, [R4]
MOV             R3, R8
MOV             R1, R2
BL              sub_59AD78
LDRB            R0, [R5]
CMP             R0, #2
BNE             loc_1655A4
MOV             R3, #0
LDR             R0, [R4]
MOV             R2, #1
MOV             R1, R3
BL              sub_2FBB34
LDR             R0, [R6,#0x14C]
ADD             R2, R0, #0xA4
LDR             R1, [R0]
LDR             R3, [R1,#0x34]
ADD             SP, SP, #0xC
MOV             R1, #1
POP             {R4-R9,LR}
BX              R3
