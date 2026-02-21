PUSH            {R4-R6,LR}
MOV             R5, R1
MOV             R1, R2
MOV             R4, R0
MOV             R2, R3
LDR             R3, [SP,#0x10+arg_0]
LDR             R0, [R0,#0x180]
BL              sub_58FE38
LDRB            R1, [R0,#0x110]
ADD             R2, R4, R5,LSL#2
ADD             R1, R1, #1
STRB            R1, [R0,#0x110]
STR             R0, [R2,#0x1C8]
LDRB            R2, [R4,#0x1B7]
MOV             R1, #1
ORR             R1, R2, R1,LSL R5
STRB            R1, [R4,#0x1B7]
LDR             R0, [R0,#0x68]
ADD             R1, R4, #0x10
ADD             R1, R1, R5,LSL#2
STR             R0, [R1,#0x30]
POP             {R4-R6,PC}
