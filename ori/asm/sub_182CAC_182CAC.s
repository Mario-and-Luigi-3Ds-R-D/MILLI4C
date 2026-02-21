PUSH            {R4,LR}
LDR             R0, [R0,#4]
LDR             R1, [R3,#8]
LDR             R2, [R0]
LDR             R2, [R2,#0x1C4]
BLX             R2
MOV             R0, #0
POP             {R4,PC}
