PUSH            {R4-R10,LR}
MOV             R6, R1
MOV             R5, R0
ADD             R0, R1, R6,LSL#3
LDR             R9, [SP,#0x20+arg_0]
ADD             R0, R5, R0,LSL#2
ADD             R4, R0, #0x1D0
MOV             R7, R2
LDR             R1, [R4,#0xC]
MOV             R8, R3
MOV             R0, R4
CMP             R1, #0
BLNE            sub_528B1C
STR             R7, [R4,#0x10]
LDM             R9, {R0-R2}
ADD             R3, R4, #0x14
STM             R3, {R0-R2}
MOV             R1, R4
ADD             R0, R7, #0xB8
STRB            R8, [R4,#0x20]
BL              sub_1CF9FC
LDRB            R0, [R5,#0x1B8]
MOV             R1, #1
ORR             R0, R0, R1,LSL R6
STRB            R0, [R5,#0x1B8]
POP             {R4-R10,PC}
