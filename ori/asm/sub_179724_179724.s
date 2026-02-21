LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x78]
BLX             R1
MOV             R0, #0
POP             {R4,PC}
