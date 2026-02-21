LDR             R0, [R0,#0x68]
NOP
LDRH            R2, [R0,#0x1E]
BIC             R2, R2, #0x10
ORR             R1, R2, R1,LSL#4
STRH            R1, [R0,#0x1E]
BX              LR
