PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, =off_6D1648
CMP             R1, #0
ADD             R1, R5, #0x10000
ADD             R1, R1, #0x3D00
LDR             R2, [R0]
LDR             R0, [R0]
LDR             R3, [R2,#0xC4]
LDR             R2, [R0,#0xC4]
LDR             R0, [R3,#4]
LDR             R4, [R2,#4]
LDR             R0, [R0,#0x14]
AND             R0, R0, #0x400000
BEQ             loc_1927C4
CMP             R0, #0
LDRHNE          R2, [R1,#4]
LDR             R0, [R4,#8]
STRHNE          R2, [R4,#0x4C]
LDR             R3, [R4,#0x14]
LDR             R2, =0x8B8
ORR             R3, R3, #0x8000
STR             R3, [R4,#0x14]
LDRH            R1, [R1,#4]
STRH            R1, [R2,R0]
LDRB            R1, [R0,#0xDE]
ORR             R1, R1, #1
STRB            R1, [R0,#0xDE]
LDR             R1, [R0]
LDR             R2, [R1,#0x84]
POP             {R4-R6,LR}
MOV             R1, #1
BX              R2
CMP             R0, #0
LDRHEQ          R2, [R1,#4]
LDR             R0, [R4,#4]
STRHEQ          R2, [R4,#0x4C]
LDR             R3, [R4,#0x14]
LDR             R2, =0x8B8
ORR             R3, R3, #0x4000
STR             R3, [R4,#0x14]
LDRH            R1, [R1,#4]
STRH            R1, [R2,R0]
LDRB            R1, [R0,#0xDE]
ORR             R1, R1, #1
STRB            R1, [R0,#0xDE]
LDR             R1, [R0]
LDR             R2, [R1,#0x84]
MOV             R1, #1
BLX             R2
LDR             R0, [R4,#0x14]
TST             R0, #0x80000
BEQ             locret_19282C
LDR             R0, [R5]
MOV             R1, #1
LDR             R2, [R0,#0x290]
MOV             R0, R5
POP             {R4-R6,LR}
BX              R2
POP             {R4-R6,PC}
