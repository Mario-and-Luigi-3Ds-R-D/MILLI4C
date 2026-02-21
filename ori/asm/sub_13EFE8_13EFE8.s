LDR             R0, [R0,#0x68]
NOP
MOV             R2, #0xC
AND             R1, R2, R1,LSL#2
LDRH            R2, [R0,#0x1E]
BIC             R2, R2, #0xC
ORR             R1, R1, R2
STRH            R1, [R0,#0x1E]
BX              LR
