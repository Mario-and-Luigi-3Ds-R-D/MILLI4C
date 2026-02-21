PUSH            {R4-R9,LR}
MOV             R6, R1
MOV             R1, R2
MOV             R4, R0
LDR             R2, [R0]
LDR             R0, [R3,#8]
ADD             R5, R3, #8
SUB             SP, SP, #0xC
LDR             R12, [R2,#0x9C]
SXTB            R3, R0
LDR             R2, [R4,#4]
MOV             R0, R4
BLX             R12
LDR             R7, [R5,#4]
CMN             R7, #1
BEQ             loc_182DF4
LDRB            R2, [R6,#0x14]
LDR             R3, =0x13C8C
LDR             R1, [R4,#4]
ADD             R2, R3, R2,LSL#2
LDR             R1, [R1,R2]
ADD             R1, R1, R7,LSL#1
LDRB            R7, [R1,#1]
LDR             R1, [R5,#0xC]
LDR             R9, [R5,#8]
LDR             R6, [R4,#4]
CMP             R1, #0
LDR             R1, [R0]
MOV             R8, R0
MOVNE           R5, #1
MOVEQ           R5, #0
LDR             R1, [R1,#0x3C]
BLX             R1
CMN             R9, #1
CMPNE           R5, #0
MOV             R1, R0
BEQ             loc_182E38
ADD             R0, R1, #0x100
LDRH            R2, [R0,#0x78]
STRH            R2, [R0,#0x7A]
LDR             R2, =byte_6EC430
CMN             R7, #1
BEQ             loc_182E7C
CMP             R5, #0
BEQ             loc_182E58
ADD             R0, R1, #0x100
LDRH            R3, [R0,#0x74]
STRH            R3, [R0,#0x76]
ADD             R0, R6, #0xCC
STMEA           SP, {R0,R2}
MOV             R3, R9
MOV             R2, R7
MOV             R0, R8
BL              sub_1E7C84
NOP
NOP
B               loc_182EAC
CMP             R5, #0
BEQ             loc_182E90
LDR             R3, =0x176
MOV             R0, #0xFFFFFFFF
STRH            R0, [R3,R1]
ADD             R0, R6, #0xCC
STMEA           SP, {R0,R2}
MOV             R0, #0x174
MOV             R3, R9
LDRSH           R2, [R0,R1]
MOV             R0, R8
BL              sub_1E7C84
LDR             R0, [R4,#4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x4300
LDRH            R1, [R0,#8]
ORR             R1, R1, #1
STRH            R1, [R0,#8]
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R9,PC}
