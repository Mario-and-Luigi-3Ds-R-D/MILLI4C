PUSH            {R4}
LDR             R0, [R2,#8]
CMP             R0, #1
BNE             loc_1F4EE8
LDRB            R0, [R1,#0x27]
LDR             R12, [R1]
MOV             R3, R0,LSR#4
BIC             R0, R0, #0xF0
MOV             R4, R3,LSL#4
ADD             R4, R4, #0x10
AND             R4, R4, #0xF0
ADD             R3, R1, R3,LSL#2
ORR             R0, R0, R4
STRB            R0, [R1,#0x27]
STR             R12, [R3,#0x30]
LDR             R0, [R2,#0xC]
LDR             R2, [R1]
ADD             R0, R0, R2
STR             R0, [R1]
POP             {R4}
MOV             R0, #0
BX              LR
