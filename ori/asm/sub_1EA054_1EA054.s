LDR             R1, =off_6D1648
PUSH            {R4,LR}
LDR             R1, [R1]
LDR             R4, [R1,#0xBC]
LDR             R1, =0x13D40
LDR             R1, [R1,R4]
TST             R1, #1
BNE             locret_1EA0C8
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x80
BNE             locret_1EA0C8
LDR             R2, =sub_19261C
LDR             R1, [R4,#0x2BC]
CMP             R1, R2
LDREQ           R1, [R4,#0x2C0]
CMPEQ           R1, #0
BEQ             locret_1EA0C8
LDR             R1, [R0]
LDR             R1, [R1,#0x14C]
BLX             R1
MOVS            R1, R0
BEQ             locret_1EA0C8
LDR             R0, [R4]
MOV             R2, #1
LDR             R3, [R0,#0x284]
MOV             R0, R4
POP             {R4,LR}
BX              R3
POP             {R4,PC}
