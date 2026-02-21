PUSH            {R4,LR}
LDR             R0, [R1]
MOV             R4, R1
LDR             R1, =0x4003
LDR             R2, [R0,#0x348]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #0
LDR             R0, [R4]
MOV             R3, #1
MOV             R2, #0xFFFFFFFF
LDR             R12, [R0,#0x34C]
BEQ             loc_189E34
MOV             R1, #1
MOV             R0, R4
BLX             R12
LDR             R1, [R4,#0x4EC]
BIC             R1, R1, #0xF000
STR             R1, [R4,#0x4EC]
POP             {R4,PC}
MOV             R1, #0
MOV             R0, R4
BLX             R12
B               loc_189E24
