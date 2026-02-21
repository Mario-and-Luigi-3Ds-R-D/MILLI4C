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
BEQ             loc_18AA44
LDR             R12, [R0,#0x184]
MOV             R3, #2
MOV             R0, R4
BLX             R12
CMP             R0, #0
BNE             locret_18AA7C
B               loc_18AA5C
LDR             R12, [R0,#0x160]
MOV             R3, #2
MOV             R0, R4
BLX             R12
CMP             R0, #0
BNE             locret_18AA7C
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DD6C
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4,LR}
BX              R12
POP             {R4,PC}
