PUSH            {R4-R6,LR}
MOV             R4, R0
BL              sub_14F550
LDRB            R0, [R4,#0x18]
CMP             R0, #0
BEQ             loc_14FDA0
CMP             R0, #1
BNE             loc_14FDA0
LDR             R0, [R4,#0x20]
CMP             R0, #0
BNE             loc_14FDA0
LDR             R1, =off_6CE970
LDR             R0, =0x10D4D8
LDR             R1, [R1]
ADD             R5, R1, R0; loc_10D4D8
MOV             R0, R5
BL              sub_5711E4
MOV             R0, R5
BL              sub_571348
MOV             R0, #2
STRB            R0, [R4,#0x18]
LDR             R1, [R4,#0xC]
CMP             R1, #0
BNE             loc_14FDC0
LDR             R0, [R4,#0x10]
TST             R0, #1
BEQ             loc_14FE08
CMP             R0, #0
BEQ             loc_14FE08
LDR             R0, [R4,#0x10]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
BEQ             loc_14FDD8
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BLX             R1
LDR             R0, [R4,#0xC]
CMP             R0, #0
BNE             loc_14FE00
LDR             R0, [R4,#0x10]
TST             R0, #1
BEQ             loc_14FE08
CMP             R0, #0
BEQ             loc_14FE08
MOV             R0, #1
POP             {R4-R6,PC}
MOV             R0, #0
POP             {R4-R6,PC}
