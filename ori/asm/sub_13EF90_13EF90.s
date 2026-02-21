SUBS            R2, R1, #0
MOV             R3, #0
MOVLT           R2, R3
STR             R2, [R0,#0x18]
LDR             R0, [R0,#0x68]
NOP
CMP             R1, #0
MOV             R2, #0
MOVLT           R1, R2
LDRH            R2, [R0,#0x6C]
STR             R1, [R0,#0x20]
ORR             R2, R2, #2
STRH            R2, [R0,#0x6C]
BX              LR
