PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, R1
LDR             R1, [R4,#0xA4]
LDR             R2, [R0]
ADD             R1, R1, #0x4C ; 'L'
LDR             R3, [R2,#0xC]
LDR             R2, [R4,#0x170]
BLX             R3
LDR             R0, [R4,#0xA4]
LDR             R1, [R0,#0x88]
ORR             R1, R1, #0x800
STR             R1, [R0,#0x88]
POP             {R4,PC}
