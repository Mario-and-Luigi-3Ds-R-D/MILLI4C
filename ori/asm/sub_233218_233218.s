LDRB            R0, [R2]
CMP             R1, #0
BIC             R0, R0, #0xF
STRB            R0, [R2]
BEQ             locret_233238
LDR             R0, [R2,#0x34]
LDR             R1, [R2,#0x20]
STR             R1, [R0]
BX              LR
