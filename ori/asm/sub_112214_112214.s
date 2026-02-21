PUSH            {R4-R10,LR}
MOV             R5, R0
ADD             R0, SP, #0x20+arg_0
MOV             R8, R2
LDM             R0, {R4,R6}
MOV             R0, R2
MOV             R9, R3
MOV             R2, R3
LDR             R3, [R0]
LDR             R7, [SP,#0x20+arg_8]
MOV             R10, R1
LDR             R3, [R3,#0xC]
MOV             R1, R7
BLX             R3
MOV             R2, R0
MOV             R3, R7
MOV             R1, R10
MOV             R0, R5
BL              sub_11CA18
LDRH            R0, [R5,#0x26]
MOV             R1, #8
MOV             R3, R9
ORR             R0, R0, #1
STRH            R0, [R5,#0x26]
RSB             R0, R6, R6,LSL#4
MOV             R2, #0
ADD             R0, R1, R0,LSL#2
MOV             R1, R8
BL              sub_1143B4
CMP             R0, #0
BEQ             loc_1122B0
ADD             R0, R0, #8
SUB             R7, R0, #8
MOV             R1, #0x3C ; '<'
STM             R7, {R1,R6}
MOV             R2, R1
LDR             R1, =sub_11FF84
MOV             R3, R6
BLX             sub_1002F4
STR             R0, [R5,#0x40]
MOV             R0, #0x4C ; 'L'
MOV             R3, R9
MUL             R0, R4, R0
MOV             R2, #0
MOV             R1, R8
BL              sub_1143B4
CMP             R0, #0
NOP
BEQ             loc_1122E8
LDR             R1, =sub_116EBC
MOV             R3, R4
MOV             R2, #0x4C ; 'L'
BLX             sub_1002F4
ADD             R1, R4, R4,LSL#1
ADD             R1, R1, R4,LSL#4
ADD             R3, R5, #0x44 ; 'D'
ADD             R1, R0, R1,LSL#2
MOV             R2, #0
STR             R1, [R5,#0x4C]
STM             R3, {R0,R2}
CMP             R4, #0
BEQ             loc_11232C
LDR             R1, [R5,#0x48]
SUB             R3, R4, #1
MOV             R4, R3,LSL#16
STR             R1, [R0,#4]
STR             R0, [R5,#0x48]
MOVS            R4, R4,LSR#16
ADD             R0, R0, #0x4C ; 'L'
BNE             loc_11230C
STR             R6, [R5,#0x50]!
STR             R2, [R5,#0x14]
POP             {R4-R10,PC}
