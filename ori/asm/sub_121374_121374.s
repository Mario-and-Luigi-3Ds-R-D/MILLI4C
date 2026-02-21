PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
BL              sub_119B9C
MOVS            R0, R0,LSR#31
BLNE            sub_128434
LDR             R0, [R4]
CMP             R0, #0
LDRNE           R0, =0xD8A103F9
BNE             locret_1213C4
MOV             R0, R5
BL              sub_300168
MOV             R2, R0
MOV             R3, #0
MOV             R1, R5
MOV             R0, R4
BL              sub_119C04
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRLT           R0, =0xD92103FB
POP             {R4-R6,PC}
