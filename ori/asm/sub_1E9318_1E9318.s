PUSH            {R4,LR}
MOV             R4, R2
LDR             R2, [R0]
LDR             R2, [R2,#0x128]
BLX             R2
LDR             R1, [R0,#0xC]
STR             R1, [R4]
LDR             R1, [R0,#0x1C]
STR             R1, [R4,#4]
LDR             R0, [R0,#0x2C]
STR             R0, [R4,#8]
POP             {R4,PC}
