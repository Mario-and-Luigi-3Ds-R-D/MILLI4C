LDRB            R0, [R1,#0x27]
MOVS            R2, R0,LSR#4
BEQ             loc_1F4DE4
MOV             R2, R0,LSR#4
BIC             R0, R0, #0xF0
MOV             R2, R2,LSL#4
SUB             R2, R2, #0x10
AND             R2, R2, #0xF0
ORR             R2, R2, R0
STRB            R2, [R1,#0x27]
MOV             R0, R2,LSR#4
ADD             R0, R1, R0,LSL#2
LDR             R0, [R0,#0x30]
STR             R0, [R1]
MOV             R0, #0
BX              LR
MOV             R0, #0
STR             R0, [R1]
MOV             R0, #2
BX              LR
