PUSH            {R0-R7,LR}
SUB             SP, SP, #0x2C
LDR             R6, =dword_6E128C
LDR             R0, [R6]
CMP             R0, #0
BNE             loc_102968
ADR             R0, aRwstderr; "RWSTDERR"
MOVS            R0, #0
NOP
MOVS            R5, R0
BNE             loc_10289E
MOVS            R5, R6
ADDS            R5, #0xC
MOVS            R0, R5
MOVS            R1, #0x3A ; ':'
BL              sub_100B00
CMP             R0, #0
BEQ             loc_1028C8
MOVS            R1, #0
LDR             R2, =dword_6E128C
STRB            R1, [R0]
ADDS            R0, R0, #1
ADDS            R2, R2, #4
ADR             R1, aD_0; "%d"
BL              sub_100A44
CMP             R0, #1
BNE             loc_1028C4
LDR             R0, [R6,#(dword_6E1290 - 0x6E128C)]
CMP             R0, #0
BGT             loc_1028C8
MOVS            R0, #1
STR             R0, [R6,#(dword_6E1290 - 0x6E128C)]
LDR             R1, =dword_711E70
MOVS            R0, #0x14
STR             R1, [SP,#0x50+var_3C]
MOVS            R0, R1
NOP
MOVS            R7, R0
BEQ             loc_102914
MOVS            R1, #0x200
STR             R1, [R0,#(dword_711E74 - 0x711E70)]
MOVS            R1, #0
STR             R1, [R0,#(dword_711E78 - 0x711E70)]
STR             R1, [R0,#(dword_711E7C - 0x711E70)]
LDR             R1, =off_6C3C1C
MOVS            R0, R7
ADDS            R0, #0x10
STR             R1, [R7]
STR             R0, [SP,#0x50+var_38]
MOVS            R4, R7
ADD             R0, SP, #0x50+var_2C
NOP
NOP
MOVS            R2, R0
ADR             R1, dword_1029EC
ADD             R0, SP, #0x50+var_40
BL              sub_301578
MOVS            R1, R0
LDR             R0, [SP,#0x50+var_38]
BL              sub_3015B0
MOVS            R4, R0
SUBS            R4, #0x10
ADD             R0, SP, #0x50+var_40
BL              sub_3015EC
LDR             R0, =off_6C3D1C
STR             R0, [R4]
LDR             R4, =dword_711E70
ADD             R0, SP, #0x50+var_30
NOP
NOP
MOVS            R2, R0
MOVS            R1, R5
ADD             R0, SP, #0x50+var_4C
BL              sub_301578
MOVS            R7, R0
MOV             R0, SP
BL              sub_10358C
MOVS            R2, R0
LDR             R0, [R4]
MOVS            R1, R7
LDR             R3, [R0,#0xC]
MOVS            R0, R4
BLX             R3
STR             R0, [R6,#(dword_6E1294 - 0x6E128C)]
LDR             R4, [SP,#0x50+var_50]
CMP             R4, #0
BEQ             loc_102960
LDR             R0, [R4,#0x1C]
SUBS            R0, R0, #1
STR             R0, [R4,#0x1C]
BNE             loc_102960
LDR             R0, [R4,#0x18]
BLX             sub_2FF5D4
LDR             R0, [R4,#8]
BLX             sub_2FF5D4
MOVS            R0, R4
BL              sub_3015F8
BLX             sub_300FD4
ADD             R0, SP, #0x50+var_4C
BL              sub_3015EC
STR             R5, [R6]
LDR             R4, [R6,#(dword_6E1294 - 0x6E128C)]
ADDS            R0, R4, #1
BEQ             loc_1029C0
ADD             R0, SP, #0x50+var_48
STR             R0, [SP,#0x50+var_40]
LDR             R7, [R6,#(dword_6E1290 - 0x6E128C)]
LDR             R5, =dword_711E70
LDR             R6, [SP,#0x50+var_1C]
ADD             R0, SP, #0x50+var_34
NOP
NOP
MOVS            R2, R0
ADR             R1, (aRwstderr+8); ""
ADD             R0, SP, #0x50+var_44
BL              sub_301578
STR             R6, [SP,#0x50+var_50]
STR             R0, [SP,#0x50+var_4C]
LDR             R0, [R5]
MOVS            R3, R7
LDR             R6, [R0,#0x10]
MOVS            R2, R4
LDR             R0, [SP,#0x50+var_40]
MOVS            R1, R5
BLX             R6
ADD             R0, SP, #0x50+var_44
BL              sub_3015EC
LDR             R2, [SP,#0x50+var_48]
MOVS            R0, R2
SUBS            R0, #0xC
LDR             R0, [R0,#8]
CMP             R0, #0
BEQ             loc_1029C4
LDR             R3, [SP,#0x50+var_18]
LDR             R1, [SP,#0x50+var_20]
LDR             R0, [SP,#0x50+var_24]
BL              sub_30160C
MOVS            R4, R0
ADD             R0, SP, #0x50+var_48
BL              sub_3015EC
MOVS            R0, R4
ADD             SP, SP, #0x3C ; '<'
POP             {R4-R7,PC}
ADD             R0, SP, #0x50+var_48
BL              sub_3015EC
MOVS            R0, #0
B               loc_1029C0
