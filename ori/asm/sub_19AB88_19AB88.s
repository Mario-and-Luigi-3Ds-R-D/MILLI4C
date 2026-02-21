PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R6, =off_6D1648
MOV             R4, R2
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #0
BEQ             loc_19AC9C
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #2
BEQ             loc_19ACBC
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #3
BEQ             loc_19ACEC
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #4
BEQ             loc_19ACEC
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #5
BEQ             loc_19ACEC
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #6
BEQ             loc_19ACEC
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #7
BEQ             loc_19ACEC
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #1
BNE             locret_19AD4C
CMP             R5, #0
BEQ             loc_19AD1C
CMP             R4, #0
BEQ             loc_19ACCC
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
POP             {R4-R6,LR}
MOV             R1, #1
B               sub_16283C
CMP             R5, #0
BEQ             loc_19ACB0
CMP             R4, #0
BNE             loc_19AC88
B               loc_19ACCC
CMP             R4, #0
BNE             loc_19AD24
B               loc_19AD38
CMP             R5, #0
BEQ             loc_19ACE0
CMP             R4, #0
BNE             loc_19AC88
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
POP             {R4-R6,LR}
MOV             R1, #0
B               sub_16283C
CMP             R4, #0
BNE             loc_19AD24
B               loc_19AD38
LDR             R0, [R6]
CMP             R5, #0
BEQ             loc_19AD08
LDR             R0, [R0,#0xBC]
POP             {R4-R6,LR}
NOP
B               sub_16656C
NOP
LDR             R0, [R0,#0xBC]
POP             {R4-R6,LR}
MOV             R1, #0xD
B               sub_166338
CMP             R4, #0
BEQ             loc_19AD38
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
POP             {R4-R6,LR}
MOV             R1, #1
B               sub_16468C
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
POP             {R4-R6,LR}
MOV             R1, #0
B               sub_16468C
POP             {R4-R6,PC}
