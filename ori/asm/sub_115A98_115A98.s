LDR             R0, =off_6D2440
LDR             R1, [R0]
CMP             R1, #0
BXEQ            LR
PUSH            {R3-R11,LR}
MOV             R11, #0
LDR             R1, =off_6D48F8
LDR             R8, =off_6D242C
MOV             R10, R11
LDR             R1, [R1]
STR             R1, [SP,#0x28+var_28]
LDR             R0, =off_6D2440
LDR             R0, [R0]
ADD             R0, R0, R11,LSL#2
LDR             R6, [R0,#0x10]
CMP             R6, #0
BEQ             loc_115CC0
LDR             R3, [R6]
LDR             R9, [R6,#0xC]
CMP             R3, #0
BEQ             loc_115C98
LDR             R0, [R6,#4]
CMP             R0, #0
BEQ             loc_115B1C
CMP             R0, #1
MOVEQ           R4, R3
MOVEQ           R5, #0
BEQ             loc_115B44
CMP             R0, #2
BEQ             loc_115B7C
CMP             R0, #3
BNE             loc_115C98
B               loc_115B9C
MOV             R4, R3
ADD             R0, R3, #0x34 ; '4'
BL              sub_125808
LDR             R0, [R4,#0x2C]
ADD             R1, R4, #0x34 ; '4'
BL              sub_1271DC
LDR             R12, [R8]
CMP             R12, #0
BNE             loc_115C8C
B               loc_115C94
ADD             R0, R5, R5,LSL#4
ADD             R7, R4, R0,LSL#2
ADD             R0, R7, #0x34 ; '4'
BL              sub_125808
LDR             R0, [R4,#0x2C]
ADD             R1, R7, #0x34 ; '4'
BL              sub_1271DC
ADD             R5, R5, #1
CMP             R5, #6
BLT             loc_115B44
LDR             R12, [R8]
CMP             R12, #0
BNE             loc_115C8C
B               loc_115C94
LDR             R12, [R8]
CMP             R12, #0
BEQ             loc_115C94
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
B               loc_115C94
MOV             R4, R3
LDR             R3, [R3,#0x804]
CMP             R3, #0
BEQ             loc_115BC8
LDR             R12, [R8]
CMP             R12, #0
BEQ             loc_115BC8
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R3, [R4,#0x808]
CMP             R3, #0
LDRNE           R12, [R8]
CMPNE           R12, #0
BEQ             loc_115BEC
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R3, [R4,#0x80C]
CMP             R3, #0
LDRNE           R12, [R8]
CMPNE           R12, #0
BEQ             loc_115C10
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R3, [R4,#0x810]
CMP             R3, #0
LDRNE           R12, [R8]
CMPNE           R12, #0
BEQ             loc_115C34
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R3, [R4,#0x814]
CMP             R3, #0
LDRNE           R12, [R8]
CMPNE           R12, #0
BEQ             loc_115C58
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R3, [R4,#0x818]
CMP             R3, #0
BEQ             loc_115C80
LDR             R12, [R8]
CMP             R12, #0
BEQ             loc_115C94
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R12, [R8]
CMP             R12, #0
BEQ             loc_115C94
MOV             R3, R4
B               loc_115B88
STR             R10, [R6]
LDR             R12, [R8]
CMP             R12, #0
BEQ             loc_115CB8
MOV             R3, R6
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R6, R9
BNE             loc_115ADC
ADD             R11, R11, #1
CMP             R11, #0x200
BLT             loc_115AC4
LDR             R0, [SP,#0x28+var_28]
MOV             R1, #0x80
STR             R10, [R0,#0x5C]
LDR             R0, [SP,#0x28+var_28]
STR             R10, [R0,#0x68]
LDR             R0, [SP,#0x28+var_28]
STR             R10, [R0,#0x60]
LDR             R0, [SP,#0x28+var_28]
STR             R10, [R0,#0x6C]
LDR             R0, [SP,#0x28+var_28]
STR             R10, [R0,#0x64]
LDR             R0, [SP,#0x28+var_28]
STR             R10, [R0,#0x70]
LDR             R0, [SP,#0x28+var_28]
ADD             R0, R0, #0x74 ; 't'
BL              sub_2FFE8C
LDR             R0, [SP,#0x28+var_28]
LDR             R7, =off_6D2440
STR             R10, [R0,#0xF4]
LDR             R0, [R7]
LDR             R4, [R0]
ADD             R0, R4, #0x34 ; '4'
BL              sub_125808
LDR             R0, [R4,#0x2C]
ADD             R1, R4, #0x34 ; '4'
BL              sub_1271DC
LDR             R12, [R8]
CMP             R12, #0
BEQ             loc_115D54
MOV             R3, R4
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R0, [R7]
MOV             R4, #0
LDR             R5, [R0,#4]
ADD             R0, R4, R4,LSL#4
ADD             R6, R5, R0,LSL#2
ADD             R0, R6, #0x34 ; '4'
BL              sub_125808
LDR             R0, [R5,#0x2C]
ADD             R1, R6, #0x34 ; '4'
BL              sub_1271DC
ADD             R4, R4, #1
CMP             R4, #6
BLT             loc_115D60
LDR             R12, [R8]
CMP             R12, #0
BEQ             loc_115DA8
MOV             R3, R5
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R0, [R7]
LDR             R12, [R8]
LDR             R3, [R0,#8]
CMP             R12, #0
BEQ             loc_115DCC
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
STR             R10, [R7]
POP             {R3-R11,PC}
