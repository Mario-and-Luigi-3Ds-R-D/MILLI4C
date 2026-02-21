PUSH            {R4,LR}
MOVS            R4, R0
BLX             sub_2FE5A4
LDR             R0, [R0]
LDRB            R0, [R0,R4]
LSLS            R0, R0, #0x1B
BPL             loc_100644
MOVS            R0, R4
ADDS            R0, #0x20 ; ' '
POP             {R4,PC}
MOVS            R0, R4
POP             {R4,PC}
