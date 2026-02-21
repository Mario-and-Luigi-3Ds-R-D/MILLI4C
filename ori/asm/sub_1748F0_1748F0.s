MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
PUSH            {R4-R6,LR}
MOV             R4, R1
MOV             R1, R2
MOV             R5, R0
BL              sub_22DE78
LDR             R1, [R5,#0x464]
MOV             R0, #3
MOV             R1, R1,LSL#21
CMP             R0, R1,LSR#29
BNE             loc_174934
LDR             R0, [R4,#0xA4]
MOV             R1, #0
BL              sub_593084
LDR             R0, [R4,#0xA4]
MOV             R1, #0
STRH            R1, [R0,#0x16]
LDR             R0, [R4,#0xA4]
LDRH            R1, [R0,#0x1A]
BIC             R1, R1, #2
STRH            R1, [R0,#0x1A]
POP             {R4-R6,PC}
