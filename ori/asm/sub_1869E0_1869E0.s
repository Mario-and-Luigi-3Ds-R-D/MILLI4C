PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
LDR             R2, =0x14287
ADD             R1, R4, #0x13C00
ADD             R1, R1, #0x94
LDR             R3, [R0]
LDR             R0, [R4]
ADD             R2, R2, R4
LDR             R3, [R3,#0xC8]
TST             R3, #7
BEQ             loc_186A2C
LDR             R12, [R0,#0x17C]
MOV             R3, #2
MOV             R0, R4
BLX             R12
CMP             R0, #0
BNE             locret_186A64
B               loc_186A44
LDR             R12, [R0,#0x158]
MOV             R3, #2
MOV             R0, R4
BLX             R12
CMP             R0, #0
BNE             locret_186A64
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DB14
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4,LR}
BX              R12
POP             {R4,PC}
