PUSH            {R4,R5}
MOV             R12, #0x10000000
LDR             R0, [SP,#8+arg_0]
AND             R2, R12, R2,LSL#28
MOV             R4, #4
MOV             R12, #0xE000
STR             R1, [R0,#0x7C]
LDR             R1, [R0,#0x70]
BIC             R1, R1, #0x10000000
ORR             R1, R1, R2
STR             R1, [R0,#0x70]
LDR             R2, [R3,#0x70]
BIC             R1, R1, #0xE000
MOV             R5, R2,LSL#25
CMP             R4, R5,LSR#29
BNE             loc_17C03C
AND             R2, R12, R2,LSL#3
ORR             R1, R1, R2
STR             R1, [R0,#0x70]
LDR             R1, [R3,#0x80]
LDRB            R1, [R1,#0xDC]
STRB            R1, [R0,#0x7A]
POP             {R4,R5}
BX              LR
AND             R3, R12, R2,LSL#9
ORR             R1, R1, R3
MOV             R2, #0xFF
STR             R1, [R0,#0x70]
STRB            R2, [R0,#0x7A]
POP             {R4,R5}
BX              LR
