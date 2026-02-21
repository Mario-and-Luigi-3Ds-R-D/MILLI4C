PUSH            {R0-R11,LR}
SUB             SP, SP, #0xC
MOV             R6, R0
MOV             R8, R1
MOV             R7, R3
MOV             R11, #1
LDR             R4, [R0,#0xA4]
LDR             R5, =dword_6D22B0
MOV             R9, #0
CMP             R4, #0
BEQ             loc_1E98C8
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, R5
BEQ             loc_1E98CC
LDR             R0, [R0]
CMP             R0, #0
BNE             loc_1E98B4
MOV             R4, R9
LDR             R0, [R4,#0x228]
CMP             R0, #0
BEQ             loc_1E9920
LDR             R0, [R4,#0x28]
LDR             R2, [R4,#0x22C]
LDR             R10, =dword_6D22F0
LDR             R12, [R0,#0x1C]!
LDR             R3, [R0,#0xC]
MLA             R0, R2, R3, R7
LDR             R5, [R12,R0,LSL#2]
CMP             R5, #0
BEQ             loc_1E9920
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, R10
BEQ             loc_1E9924
LDR             R0, [R0]
CMP             R0, #0
BNE             loc_1E990C
MOV             R5, R9
CMP             R8, #0
ADD             R6, R6, R7,LSL#4
BEQ             loc_1E9980
CMP             R5, #0
BEQ             loc_1E9948
LDR             R0, [R5,#0x54]
LDR             R1, [R8]
CMP             R0, R1
BEQ             loc_1E9A0C
LDR             R5, [R6,#0xAC]
CMP             R5, #0
BEQ             loc_1E9A14
LDR             R1, [R8]
LDR             R0, [R5,#0x2C]
LDR             R2, [R1,#0x18]
BIC             R0, R0, #0xC0000000
CMP             R2, R0
BGT             loc_1E9A14
LDR             R0, [R5]
LDR             R2, [R0,#0x24]
MOV             R0, R5
BLX             R2
B               loc_1E9AB8
LDR             R5, [R6,#0xAC]
ADD             R8, R6, #0xAC
CMP             R5, #0
BEQ             loc_1E99B8
LDR             R0, [R5]
LDR             R1, [R0]
MOV             R0, R5
BLX             R1
LDR             R0, [R5,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R5
BLX             R2
STR             R9, [R8]
LDR             R0, [R4,#0x228]
MOV             R2, #0
CMP             R0, #0
BEQ             loc_1E9A08
LDR             R1, [R4,#0x28]!
LDR             R0, [R4,#0x204]
CMP             R0, #0
BLT             loc_1E9A08
LDR             R3, [R1,#0x10]
LDR             R12, [R1,#0xC]
SUB             R3, R3, R12
CMP             R0, R3,ASR#2
BGE             loc_1E9A08
CMP             R7, #0
LDRGE           R3, [R1,#0x28]
CMPGE           R3, R7
BLE             loc_1E9A08
MLA             R0, R0, R3, R7
LDR             R1, [R1,#0x1C]
STR             R2, [R1,R0,LSL#2]
STR             R9, [R6,#0xAC]
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
CMP             R5, #0
ADD             R10, R6, #0xAC
BEQ             loc_1E9A48
LDR             R0, [R5]
LDR             R1, [R0]
MOV             R0, R5
BLX             R1
LDR             R0, [R5,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R5
BLX             R2
STR             R9, [R10]
MOV             R0, #0xFFFFFFFF
STR             R0, [SP,#0x40+var_40]
STR             R0, [SP,#0x40+var_3C]
LDR             R1, [R8]
LDR             R0, [SP,#0x40+var_2C]
MOV             R3, #0
MOV             R2, R4
BL              sub_59C5B0
LDR             R1, [R4,#0x228]
MOV             R5, R0
CMP             R1, #0
BEQ             loc_1E9AB8
LDR             R1, [R4,#0x28]!
LDR             R0, [R4,#0x204]
CMP             R0, #0
BLT             loc_1E9AB8
LDR             R3, [R1,#0x10]
LDR             R12, [R1,#0xC]
SUB             R3, R3, R12
CMP             R0, R3,ASR#2
BGE             loc_1E9AB8
CMP             R7, #0
LDRGE           R3, [R1,#0x28]
CMPGE           R3, R7
BLE             loc_1E9AB8
MLA             R0, R0, R3, R7
LDR             R1, [R1,#0x1C]
STR             R5, [R1,R0,LSL#2]
VLDR            S0, =0.0
STR             R5, [R6,#0xAC]
VSTR            S0, [R5,#0x40]
STRB            R11, [R5,#0x58]
LDR             R1, [R5]
MOV             R0, R5
ADD             R4, R6, #0xAC
LDR             R1, [R1,#0x20]
BLX             R1
LDR             R0, [R4]
VLDR            S0, [R0,#0x48]
ADD             R0, R4, #4
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BL              sub_123C70
LDR             R1, =sub_4CCAE8
LDR             R0, [R5,#0x4C]
CMP             R0, R1
MOVEQ           R0, #1
MOVNE           R0, #0
STRH            R0, [R6,#0xB6]
ADD             SP, SP, #0x1C
ADD             R0, R6, #0xB0
POP             {R4-R11,LR}
MOV             R1, #0x200
B               sub_123CE8
