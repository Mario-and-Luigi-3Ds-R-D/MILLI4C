PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R7, R1
LDR             R4, [R0]
LDR             R8, =off_6CE970
LDR             R9, =0xFFE683CC
LDR             R0, [R4,#0xC]
CMP             R0, #0
BNE             loc_1FF0B4
LDR             R0, [R4,#0x10]
LDR             R2, =0x300C6
MOV             R3, #0
ADD             R1, R0, #0x10
LDR             R0, [R8]
SUB             R0, R0, R9
BL              sub_503720
MOV             R6, R0
LDR             R0, [R4,#8]!
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R6, #0
STR             R6, [R4,#4]
STRNE           R4, [R6,#0x64]
MOV             R0, R5
BL              sub_1FE108
LDR             R1, =off_6CDC90
LDRB            R2, [R5,#0xC]
MOV             R0, #5
STRB            R0, [R5,#0xD]
LDR             R0, [R1]
CMP             R2, #0
LDRB            R2, [R5,#0x414]
ADDEQ           R0, R0, #0x12400
ADDEQ           R0, R0, #0x2DC
ADDNE           R0, R0, #0x12400
ADDNE           R0, R0, #0x2D8
CMP             R2, #0
LDR             R0, [R0]
MOV             R6, #0
BEQ             loc_1FF108
BL              sub_1FEBA8
NOP
NOP
B               loc_1FF198
CMP             R7, #0
BEQ             loc_1FF190
MOV             R4, R0
STRB            R6, [R0,#0x404]!
MOV             R2, #1
STR             R2, [R0,#4]
MOV             R2, #0xB
STRB            R2, [R4,#0xD]
LDRB            R0, [R4,#0xC]
MOV             R2, #0
CMP             R0, #0
LDR             R0, [R1]
LDREQ           R1, [R0,#0x50]
LDRNE           R1, [R0,#0x4C]
ADD             R0, R4, #0x10
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0
ADD             R0, R4, #0x10
BL              sub_14C548
STRB            R6, [R4,#0xE]
LDR             R0, [R8]
LDR             R2, =0x30060
MOV             R3, #0
ADD             R1, R4, #0x10
SUB             R0, R0, R9
BL              sub_503720
LDRB            R0, [R4,#0xC]
CMP             R0, #0
MOVEQ           R0, #1
MOVNE           R0, #0
STRB            R0, [R4,#0x103]
B               loc_1FF198
NOP
BL              sub_1FE23C
STRB            R6, [R5,#0x414]
POP             {R4-R10,PC}
