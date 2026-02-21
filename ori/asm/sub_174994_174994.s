PUSH            {R4,LR}
MOV             R4, R0
BL              sub_22DE78
LDR             R1, [R4,#0x464]
MOV             R0, #3
MOV             R1, R1,LSL#21
CMP             R0, R1,LSR#29
BNE             loc_1749C0
LDR             R0, [R4,#0x7FC]
MOV             R1, #0
BL              sub_593084
LDR             R1, [R4,#0x7FC]
MOV             R0, #0
STRH            R0, [R1,#0x16]
LDR             R0, [R4,#0x7FC]
LDRH            R1, [R0,#0x1A]
BIC             R1, R1, #2
STRH            R1, [R0,#0x1A]
POP             {R4,PC}
