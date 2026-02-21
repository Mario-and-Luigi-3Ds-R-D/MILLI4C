PUSH            {R4-R6,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R4, R3, #8
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
MOV             R5, R0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
LDR             R1, [R4,#4]
AND             R2, R1, #0xFF
MOV             R1, R5
BL              sub_16085C
MOV             R0, #0
POP             {R4-R6,PC}
