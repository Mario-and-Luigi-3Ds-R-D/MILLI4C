PUSH            {R4-R10,LR}
MOV             R6, R0
ADD             R8, R6, #0x16000
ADD             R7, R6, #0x16800
LDR             R0, =off_6D1648
MOV             R9, #0
ADD             R8, R8, #0xAE0
ADD             R7, R7, #0x2E4
LDR             R0, [R0]
LDR             R0, [R0,#0xC8]
TST             R0, #7
BEQ             loc_165B0C
LDR             R0, [R7]
CMP             R0, #0
BEQ             loc_165A9C
LDR             R1, [R0]
LDR             R1, [R1,#0x28]
BLX             R1
LDR             R0, [R7]
LDR             R1, [R0,#4]
CMP             R1, #0
BNE             locret_165B40
LDR             R0, [R0,#8]
TST             R0, #1
CMPNE           R0, #0
STREQ           R9, [R7]
BNE             locret_165B40
LDRB            R4, [R8]
CMP             R4, #0x20 ; ' '
BGE             loc_165B00
ADD             R0, R6, R4,LSL#2
ADD             R0, R0, #0x15000
LDR             R5, [R0,#0x14C]
CMP             R5, #0
BEQ             loc_165AF4
LDR             R0, [R5]
LDR             R1, [R0,#0x14]
MOV             R0, R5
BLX             R1
ADD             R0, R4, #1
STR             R5, [R7]
STRB            R0, [R8]
LDR             R0, [R5,#4]
CMP             R0, #0
BNE             locret_165B40
LDR             R0, [R5,#8]
TST             R0, #1
CMPNE           R0, #0
BNE             locret_165B40
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
BLT             loc_165AA8
ADD             R0, R6, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19DBDC
ADD             R0, R6, #0x16C00
STRB            R9, [R8]
STR             R9, [R7]
STR             R9, [R0,#0x30]
STR             R9, [R0,#0x34]
LDR             R0, [R6]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_68E82C
LDM             R0, {R1,R2}
MOV             R0, R6
POP             {R4-R10,LR}
BX              R12
POP             {R4-R10,PC}
