LDR             R0, [R0,#0x3AC]
CMP             R0, #0
BEQ             locret_14D744
LDRH            R2, [R0,#0x1A]
BIC             R2, R2, #2
ORR             R1, R2, R1,LSL#1
STRH            R1, [R0,#0x1A]
BX              LR
