PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDR             R0, [R0,#8]
LDR             R2, [R4,#0x14]
MOV             R3, #0
MOV             R5, R0
LDR             R1, [R0]
LDR             R1, [R1,#0x18]
BLX             R1
MOV             R1, R0
LDR             R0, [R5,#0x1C]
BL              sub_11C858
CMP             R0, #0
BEQ             loc_21F688
MOV             R7, #0
STR             R7, [SP,#0x20+var_1C]
LDR             R0, [R4,#0x18]
LDR             R3, [R4,#0x10]
CMP             R3, R0
MOVHI           R5, R3
BHI             loc_21F690
LDR             R0, [R4,#8]
STR             R7, [SP,#0x20+var_20]
LDR             R2, [R4,#0xC]
MOV             R6, R0
LDR             R1, [R0]
LDR             R12, [R1,#0x34]
ADD             R1, SP, #0x20+var_1C
BLX             R12
MOV             R1, R0
LDR             R0, [R6,#0x1C]
BL              sub_11C858
CMP             R0, #0
LDRNE           R0, [SP,#0x20+var_1C]
BNE             loc_21F6E8
STR             R7, [SP,#0x20+var_1C]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
MOV             R3, R0
CMP             R5, R3
BHI             loc_21F734
LDR             R0, [R4,#8]
STR             R7, [SP,#0x20+var_20]
LDR             R2, [R4,#0xC]
MOV             R6, R0
LDR             R1, [R0]
MOV             R3, R5
LDR             R12, [R1,#0x34]
ADD             R1, SP, #0x20+var_18
BLX             R12
MOV             R1, R0
LDR             R0, [R6,#0x1C]
BL              sub_11C858
CMP             R0, #0
LDREQ           R0, [SP,#0x20+var_1C]
LDRNE           R0, [SP,#0x20+var_18]
LDR             R1, [SP,#0x20+var_1C]
RSBEQ           R0, R0, #0
ADD             R0, R0, R1
STR             R0, [SP,#0x20+var_1C]
CMP             R0, #0
BEQ             loc_21F688
LDR             R5, [R4,#8]
LDR             R0, [R5]
LDR             R1, [R0,#0x44]
MOV             R0, R5
BLX             R1
LDR             R2, [R5,#0x1C]
MOV             R1, R0
MOV             R0, R2
BL              sub_11C858
LDR             R0, [R5,#0x1C]
LDRH            R1, [R0,#0x26]
ORR             R1, R1, #4
STRH            R1, [R0,#0x26]
LDR             R0, [SP,#0x20+var_1C]
STR             R0, [R4,#0x10]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
LDR             R6, [R4,#8]
STR             R7, [SP,#0x20+var_20]
LDR             R2, [R4,#0xC]
ADD             R1, SP, #0x20+var_18
LDR             R0, [R6]
LDR             R12, [R0,#0x34]
MOV             R0, R6
BLX             R12
LDR             R2, [R6,#0x1C]
MOV             R1, R0
MOV             R0, R2
BL              sub_11C858
CMP             R0, #0
NOP
BEQ             loc_21F684
LDRD            R0, R1, [SP,#0x20+var_1C]
ADD             R0, R0, R1
STR             R0, [SP,#0x20+var_1C]
LDR             R0, [R4,#0x18]
SUB             R5, R5, R0
B               loc_21F690
