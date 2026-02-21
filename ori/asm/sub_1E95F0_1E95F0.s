PUSH            {R0-R11,LR}
SUB             SP, SP, #0xC
MOV             R6, R0
MOV             R8, R1
MOV             R7, R3
MOV             R11, #1
LDR             R1, [R0,#0xA4]
MOV             R9, #0
LDR             R0, [R1,#0x148]
CMP             R0, #0
BEQ             loc_1E9664
LDR             R0, [R1,#0x28]
LDR             R1, [R1,#0x14C]
LDR             R5, =dword_6D2010
LDR             R3, [R0,#0x1C]!
LDR             R12, [R0,#0xC]
MLA             R0, R1, R12, R7
LDR             R4, [R3,R0,LSL#2]
CMP             R4, #0
BEQ             loc_1E9664
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, R5
BEQ             loc_1E9668
LDR             R0, [R0]
CMP             R0, #0
BNE             loc_1E9650
MOV             R4, R9
CMP             R8, #0
ADD             R5, R6, R7,LSL#4
BEQ             loc_1E96C4
CMP             R4, #0
BEQ             loc_1E968C
LDR             R0, [R4,#0x54]
LDR             R1, [R8]
CMP             R0, R1
BEQ             loc_1E9754
LDR             R4, [R5,#0xEC]
CMP             R4, #0
BEQ             loc_1E975C
LDR             R1, [R8]
LDR             R0, [R4,#0x2C]
LDR             R2, [R1,#0x18]
BIC             R0, R0, #0xC0000000
CMP             R2, R0
BGT             loc_1E975C
LDR             R0, [R4]
LDR             R2, [R0,#0x24]
MOV             R0, R4
BLX             R2
B               loc_1E9804
LDR             R4, [R5,#0xEC]
ADD             R8, R5, #0xEC
CMP             R4, #0
BEQ             loc_1E96FC
LDR             R0, [R4]
LDR             R1, [R0]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R4
BLX             R2
STR             R9, [R8]
LDR             R1, [R6,#0xA4]
MOV             R2, #0
LDR             R0, [R1,#0x148]
CMP             R0, #0
BEQ             loc_1E9750
LDR             R0, [R1,#0x28]
LDR             R1, [R1,#0x14C]
CMP             R1, #0
BLT             loc_1E9750
LDR             R3, [R0,#0x10]
LDR             R12, [R0,#0xC]
SUB             R3, R3, R12
CMP             R1, R3,ASR#2
BGE             loc_1E9750
CMP             R7, #0
LDRGE           R3, [R0,#0x28]
CMPGE           R3, R7
BLE             loc_1E9750
MLA             R1, R1, R3, R7
LDR             R0, [R0,#0x1C]
STR             R2, [R0,R1,LSL#2]
STR             R9, [R5,#0xEC]
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
CMP             R4, #0
ADD             R10, R5, #0xEC
BEQ             loc_1E9790
LDR             R0, [R4]
LDR             R1, [R0]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R4
BLX             R2
STR             R9, [R10]
MOV             R0, #0xFFFFFFFF
STR             R0, [SP,#0x40+var_40]
STR             R0, [SP,#0x40+var_3C]
LDR             R2, [R6,#0xA4]
LDR             R1, [R8]
LDR             R0, [SP,#0x40+var_2C]
MOV             R3, #0
BL              sub_59C3D8
LDR             R1, [R6,#0xA4]
MOV             R4, R0
LDR             R2, [R1,#0x148]
CMP             R2, #0
BEQ             loc_1E9804
LDR             R2, [R1,#0x28]!
LDR             R0, [R1,#0x124]
CMP             R0, #0
BLT             loc_1E9804
LDR             R1, [R2,#0x10]
LDR             R12, [R2,#0xC]
SUB             R1, R1, R12
CMP             R0, R1,ASR#2
BGE             loc_1E9804
CMP             R7, #0
LDRGE           R1, [R2,#0x28]
CMPGE           R1, R7
BLE             loc_1E9804
MLA             R0, R0, R1, R7
LDR             R1, [R2,#0x1C]
STR             R4, [R1,R0,LSL#2]
VLDR            S0, =0.0
STR             R4, [R5,#0xEC]
VSTR            S0, [R4,#0x40]
STRB            R11, [R4,#0x58]
LDR             R1, [R4]
MOV             R0, R4
ADD             R6, R5, #0xEC
LDR             R1, [R1,#0x20]
BLX             R1
LDR             R0, [R6]
VLDR            S0, [R0,#0x48]
ADD             R0, R6, #4
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BL              sub_123C70
LDR             R1, =sub_4CCAE8
LDR             R0, [R4,#0x4C]
CMP             R0, R1
MOVEQ           R0, #1
MOVNE           R0, #0
STRH            R0, [R5,#0xF6]
ADD             SP, SP, #0x1C
ADD             R0, R5, #0xF0
POP             {R4-R11,LR}
MOV             R1, #0x200
B               sub_123CE8
