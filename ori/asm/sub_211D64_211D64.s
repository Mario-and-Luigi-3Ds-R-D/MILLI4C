LDR             R1, [R2,#8]
MOV             R1, R1,LSL#20
MOV             R1, R1,LSR#20
ADD             R0, R0, R1,LSL#3
LDR             R0, [R0,#0x2B4]
CMP             R0, #0
BEQ             loc_211D8C
LDRH            R1, [R0,#0xE]
ORR             R1, R1, #2
STRH            R1, [R0,#0xE]
MOV             R0, #0
BX              LR
