PUSH            {R4,LR}
MOVS            R4, R0
BLX             sub_2FE5A4
LDR             R0, [R0]
LDRB            R0, [R0,R4]
LSLS            R0, R0, #0x1F
LSRS            R0, R0, #0x1F
POP             {R4,PC}
