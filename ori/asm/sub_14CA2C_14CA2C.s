PUSH            {R4-R7,LR}
SUB             SP, SP, #0x1C
MOV             R4, R0
LDR             R0, [SP,#0x30+arg_0]
MOV             R5, #0
STRB            R1, [SP,#0x30+var_20]
STRB            R0, [SP,#0x30+var_1F]
STRH            R2, [SP,#0x30+var_1C]
STRB            R5, [SP,#0x30+var_1E]
STRH            R3, [SP,#0x30+var_1A]
STR             R5, [SP,#0x30+var_18]
LDRH            R0, [R4,#0x10]
BL              sub_47FF54
CMP             R0, #0
BEQ             loc_14CAA4
LDR             R7, =off_6CE970
LDRH            R1, [R4,#0x10]
LDR             R0, [R7]
BL              sub_52F508
MOV             R6, R0
BL              sub_5ED1C4
CMP             R0, #0
BEQ             loc_14CAA4
MOV             R0, R6
BL              sub_5ED1C4
MOV             R1, R0
LDR             R0, [R7]
BL              sub_52F508
LDR             R0, [R0,#0x18]
STR             R0, [SP,#0x30+var_18]
LDR             R0, [R4,#0x20]
CMP             R0, #0
LDREQ           R1, [R4,#0xE4]
CMPEQ           R1, #0
BEQ             loc_14CB68
LDR             R1, [R4,#0xEC]
TST             R1, #0x10000
BEQ             loc_14CB68
CMP             R0, #0
SUBNE           R0, R0, #0xD8
BEQ             loc_14CB58
BL              sub_14C2A0
LDR             R1, [SP,#0x30+var_18]
ADD             R6, SP, #0x30+var_2C
MOV             R4, R0
CMP             R1, #0
ADD             R1, SP, #0x30+var_20
STREQ           R0, [SP,#0x30+var_18]
STR             R1, [SP,#0x30+var_2C]
LDR             R2, [R0,#0xEC]
TST             R2, #0x10000
BEQ             loc_14CB08
LDR             R2, [R0]
LDR             R2, [R2,#0x48]
BLX             R2
LDR             R0, [R4,#0xE4]
CMP             R0, #0
BEQ             loc_14CB50
LDR             R0, [R4,#0xDC]
CMP             R0, #0
SUBSNE          R0, R0, #0x14
MOVEQ           R4, #0
ADDNE           R4, R0, #0x14
CMP             R4, #0
BEQ             loc_14CB50
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x14
MOV             R1, R6
BL              sub_61E1D4
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_14CB30
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
LDR             R0, [R4,#0xE4]
CMP             R0, #0
MOVNE           R0, R4
B               loc_14CAD4
LDR             R0, [R4]
ADD             R1, SP, #0x30+var_20
LDR             R2, [R0,#0x48]
MOV             R0, R4
BLX             R2
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
