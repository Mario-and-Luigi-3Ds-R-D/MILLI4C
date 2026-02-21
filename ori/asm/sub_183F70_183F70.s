PUSH            {R4,LR}
LDR             R0, [R0,#4]
LDR             R1, [R3,#8]
LDR             R2, [R0]
AND             R1, R1, #0xFF
LDR             R2, [R2,#0x290]
BLX             R2
MOV             R0, #0
POP             {R4,PC}
