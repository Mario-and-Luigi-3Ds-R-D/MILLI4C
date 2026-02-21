LDRB            R0, [R1,#0x27]
LDR             R3, [R2,#8]
MOV             R2, R0,LSR#4
BIC             R0, R0, #0xF0
MOV             R12, R2,LSL#4
ADD             R12, R12, #0x10
AND             R12, R12, #0xF0
ORR             R0, R0, R12
ADD             R2, R1, R2,LSL#2
STRB            R0, [R1,#0x27]
MOV             R0, #0
STR             R3, [R2,#0x30]
BX              LR
