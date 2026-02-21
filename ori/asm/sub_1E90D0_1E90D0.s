PUSH            {R4,LR}
LDR             R1, [R0]
LDR             R1, [R1,#0x10C]
BLX             R1
LDR             R1, [R0]
LDR             R1, [R1,#0x1C]
POP             {R4,LR}
BX              R1
