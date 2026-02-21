PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R0, [R0,#4]
LDRNE           R0, [R0,#8]
LDR             R5, [R0,#4]
LDR             R0, [R5]
LDR             R1, [R0,#0x3C]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             locret_1EA5A4
ADD             R5, R5, #0x10000
ADD             R5, R5, #0x3D40
LDR             R0, [R5]
TST             R0, #1
BEQ             loc_1EA580
TST             R0, #4
TSTNE           R0, #2
BEQ             locret_1EA5A4
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x14]
TST             R1, #1
BEQ             locret_1EA5A4
LDR             R1, [R0]
LDR             R2, [R1,#0x34]
POP             {R4-R6,LR}
MOV             R1, #0
BX              R2
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x20]
BLX             R1
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
POP             {R4-R6,LR}
BX              R1
POP             {R4-R6,PC}
