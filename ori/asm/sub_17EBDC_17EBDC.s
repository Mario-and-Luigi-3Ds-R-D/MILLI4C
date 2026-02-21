LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R1, [R3,#8]
LDR             R0, [R0]
LDR             R2, [R0]
LDR             R2, [R2,#0x44]
BLX             R2
MOV             R0, #3
POP             {R4,PC}
