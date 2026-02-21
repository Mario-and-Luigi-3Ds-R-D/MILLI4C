PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
ADD             R1, R4, #0x870
LDR             R2, [R0,#0xFC]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x164
LDR             R2, [R0,#0xFC]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x1AC
LDR             R2, [R0,#0x148]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x1F4
LDR             R2, [R0,#0x168]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
LDR             R1, [R0,#0x1D0]
MOV             R0, R4
BLX             R1
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x80000
BEQ             loc_1865CC
LDR             R1, [R0]
LDR             R1, [R1,#0xF0]
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x25C]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
ADD             R1, R4, #0x164
LDR             R2, [R0,#0x100]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x1AC
LDR             R2, [R0,#0x14C]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x1F4
LDR             R2, [R0,#0x16C]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x870
LDR             R2, [R0,#0x100]
MOV             R0, R4
POP             {R4,LR}
BX              R2
