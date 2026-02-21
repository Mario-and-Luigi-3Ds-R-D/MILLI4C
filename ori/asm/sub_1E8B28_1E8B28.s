PUSH            {R4-R8,LR}
MOV             R6, R2
MOV             R8, R1
MOV             R7, R3
MOV             R5, R0
BL              sub_234B48
LDRB            R0, [R5,#0x4C]
MOV             R4, #0
CMP             R0, #0
BLE             loc_1E8B80
LDR             R0, [R5,#0x38]
RSB             R1, R4, R4,LSL#3
ADD             R1, R1, R4,LSL#6
LDR             R2, [R0,R1,LSL#2]
ADD             R0, R0, R1,LSL#2
MOV             R1, R8
LDR             R2, [R2,#0xC]
BLX             R2
LDRB            R0, [R5,#0x4C]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1E8B50
MOV             R1, #1
MOV             R0, #0
STRB            R1, [R5,#0x4F]
STRB            R0, [R5,#0x4D]
STRB            R6, [R5,#0x4E]
LDM             R7, {R1,R2}
STR             R0, [R5,#0x3C]!
ADD             R5, R5, #4
STM             R5, {R0-R2}
POP             {R4-R8,PC}
