PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R4, R0
LDR             R8, =dword_6E9820
ADD             R1, R0, #4
SUB             SP, SP, #8
MOV             R7, R3
LDR             R0, [R8,#(dword_6E994C - 0x6E9820)]
STR             R1, [R8,#(dword_6E994C - 0x6E9820)]
MOV             R6, R2
STR             R0, [R4,#0x1C]
LDR             R1, [R0]
MOV             R2, #0x810000
LDR             R3, [R1,#0xC]
MOV             R1, R5
BLX             R3
MOV             R1, R0
STR             R0, [R4]
MOV             R2, R5
ADD             R0, R4, #4
BL              sub_108CA0
ADD             R1, R4, #0x18
MOV             R0, #1
BL              sub_10B6DC
LDR             R5, [R4,#0x18]
MOV             R0, #0
STR             R0, [SP,#0x20+var_20]
STRB            R0, [SP,#0x20+var_1C]
LDR             R0, =0x207
MOV             R1, SP
BL              sub_10B948
MOV             R0, R5
BL              sub_10AEA0
MOV             R0, #1
STRB            R0, [SP,#0x20+var_1C]
LDR             R0, [R4,#0x18]
BL              sub_10AEA0
MOV             R1, R7
MOV             R0, R6
BL              sub_10B110
LDRB            R0, [SP,#0x20+var_1C]
CMP             R0, #0
LDRNE           R0, [SP,#0x20+var_20]
BLNE            sub_10AEA0
LDR             R0, [R4,#0x1C]
STR             R0, [R8,#(dword_6E994C - 0x6E9820)]
ADD             SP, SP, #8
POP             {R4-R8,PC}
