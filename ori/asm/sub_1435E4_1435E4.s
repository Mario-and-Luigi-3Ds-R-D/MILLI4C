ORR             R6, R6, R6,LSL#16
SUB             R3, R3, #0x3C00
MOV             R6, R6,LSR#16
ORR             R6, R6, R2,LSL#21
MOV             R2, R2,LSR#11
ORR             R2, R2, R1,LSL#21
PUSH            {R4,LR}
MOV             R1, R1,LSR#11
SUB             R3, R3, #1
BL              sub_13D5C0
BIC             R0, R0, #0x80000000
ADD             R12, R0, #1
AND             R7, R0, #0x80000000
ADD             R0, R1, R0,LSL#20
MOV             R1, R2
CMP             R12, #0x800
ORR             R0, R0, R7
POPCC           {R4,PC}
MOV             R1, #0
LDR             R0, =0x7FF00000
ORR             R0, R0, R7
POP             {R4,PC}
