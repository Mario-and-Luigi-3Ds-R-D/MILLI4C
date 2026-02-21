MOV             R1, R2
PUSH            {R4,LR}
LDR             R2, [R0]
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
LDR             R1, [R0]
ADD             R2, R0, #0x164
LDR             R3, [R1,#0xF0]
MOV             R1, #0
BLX             R3
MOV             R0, #0
POP             {R4,PC}
