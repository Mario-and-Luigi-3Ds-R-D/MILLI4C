LDR             R0, [R0,#0x68]
NOP
LDRH            R2, [R0,#0x1E]
AND             R1, R1, #3
BIC             R2, R2, #3
ORR             R1, R1, R2
STRH            R1, [R0,#0x1E]
BX              LR
