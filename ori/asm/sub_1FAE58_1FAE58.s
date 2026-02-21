PUSH            {R4-R12,LR}
MOV             R4, R0
LDR             R11, =off_6CDC90
LDR             R0, [R11]
BL              sub_1FB500
LDR             R0, [R4,#4]
LDR             R2, =0x2AAAAAAB
ADD             R1, R0, #0x12400
ADD             R1, R1, #0x308
LDR             R3, [R1,#0x10]
LDR             R12, [R1,#0xC]
LDR             R1, [R1,#0x14]
SUB             R3, R3, R12
SMULL           R3, R2, R2, R3
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
CMP             R2, R1
BLNE            sub_1F9E90
LDR             R4, [R11]
LDR             R0, =0x126D8
LDR             R9, =off_6CE970
LDR             R10, =0x41C
LDR             R6, =off_6BB814
LDR             R0, [R0,R4]
MOV             R8, #0
LDRB            R0, [R0,#0xD]
CMP             R0, #4
BNE             loc_1FAF50
LDR             R0, =0x126DC
LDR             R0, [R0,R4]
LDRB            R0, [R0,#0xD]
CMP             R0, #4
BNE             loc_1FAF50
LDR             R0, [R9]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, R10
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_1FAF1C
LDR             R1, [R11]
STR             R6, [R0],#4
STR             R1, [R0],#0x20
BL              sub_14F198
STRB            R8, [R0,#-0x18]!
SUB             R5, R0, #0xC
STRB            R8, [R0,#0x40C]
LDR             R0, [R4,#0xC]
MOV             R7, #0
CMP             R0, #0
BEQ             loc_1FAF38
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R5, [R4,#0xC]
LDR             R0, [R5]
MOV             R1, R7
LDR             R2, [R0,#8]
MOV             R0, R5
BLX             R2
LDR             R5, [R11]
LDR             R0, =0x12794
LDRB            R0, [R0,R5]
CMP             R0, #0
BEQ             locret_1FAFF4
ADD             R0, R5, #0x12000
ADD             R0, R0, #0x6E0
LDR             R1, [R0,#0x18]
LDR             R0, [R0,#0x1C]
CMP             R1, R0
BNE             locret_1FAFF4
LDR             R0, [R9]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, R10
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_1FAFBC
LDR             R1, [R11]
STR             R6, [R0],#4
STR             R1, [R0],#0x20
BL              sub_14F198
STRB            R8, [R0,#-0x18]!
SUB             R4, R0, #0xC
STRB            R8, [R0,#0x40C]
LDR             R0, [R5,#0xC]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_1FAFD8
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R4, [R5,#0xC]
LDR             R0, [R4]
MOV             R1, R6
LDR             R2, [R0,#8]
MOV             R0, R4
POP             {R4-R12,LR}
BX              R2
POP             {R4-R12,PC}
