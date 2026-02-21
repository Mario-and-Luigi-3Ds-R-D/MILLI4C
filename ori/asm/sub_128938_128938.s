LDR             R12, [R0]
LDRH            R2, [R0,#0xA]
MOV             R3, #0
CMP             R12, #0
ADD             R2, R2, R1
BEQ             loc_128980
LDR             R12, [R0,#4]
STR             R3, [R2,#4]
STR             R12, [R2]
LDR             R2, [R0,#4]
LDRH            R3, [R0,#0xA]
ADD             R2, R2, R3
STR             R1, [R2,#4]
STR             R1, [R0,#4]
LDRH            R1, [R0,#8]
ADD             R1, R1, #1
STRH            R1, [R0,#8]
BX              LR
STR             R3, [R2,#4]
STR             R3, [R2]
STR             R1, [R0]
STR             R1, [R0,#4]
LDRH            R1, [R0,#8]
ADD             R1, R1, #1
STRH            R1, [R0,#8]
BX              LR
