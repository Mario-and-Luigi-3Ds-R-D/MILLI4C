PUSH            {R4-R9,LR}
SUB             SP, SP, #0xC
MOV             R8, R0
LDR             R0, [R0,#8]
LDR             R9, [R8,#0xC]
LDR             R4, [R0,#8]
LDR             R0, [R8]
LDR             R1, [R0,#0x68]
MOV             R0, R8
BLX             R1
MOV             R7, #0
SUBS            R6, R0, #0
MOV             R5, R7
BLE             loc_126E8C
LDRH            R2, [R4,#0x12]
LDRH            R1, [R4,#0x10]
LDRH            R0, [R4,#0xA]
LDR             R3, [R4,#0x14]
STMEA           SP, {R0-R2}
ADD             R0, R5, R5,LSL#2
ADD             R3, R3, R7
ADD             R0, R9, R0,LSL#2
MOV             R2, R8
MOV             R1, #0
BL              sub_122814
LDR             R0, [R4,#4]
ADD             R5, R5, #1
CMP             R6, R5
ADD             R7, R7, R0
BGT             loc_126E4C
LDR             R0, [R4,#4]
MUL             R1, R0, R6
LDR             R0, [R4,#0x14]
ADD             SP, SP, #0xC
POP             {R4-R9,LR}
NOP
