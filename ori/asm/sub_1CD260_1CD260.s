PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R3, #0
LDR             R0, =off_6CE970
LDRB            R2, [R5,#0x28]
LDR             R6, =off_6431C4
MOV             R7, #0
LDR             R0, [R0]
CMP             R2, #2
CMPNE           R2, #3
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
MOV             R2, R3
LDR             R1, [R0,#(loc_1063BC - 0x106000)]
MOV             R0, #0x20 ; ' '
BEQ             loc_1CD2C8
BL              sub_10A358
CMP             R0, #0
BEQ             locret_1CD2C4
MOV             R2, #0
MOV             R1, #1
BL              sub_1DFBC4
STR             R5, [R0,#0x18]
STR             R6, [R0]
STRB            R7, [R0,#0x1C]
POP             {R4-R8,PC}
NOP
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             locret_1CD2C4
MOV             R2, #0
MOV             R1, #1
BL              sub_1DFBC4
LDR             R1, =off_6431D8
STR             R5, [R0,#0x18]
STRB            R7, [R0,#0x1C]
MOV             R4, R0
STR             R1, [R0]
LDR             R0, [R5,#0x18]
LDR             R0, [R0]
LDRH            R0, [R0,#0x10]
BL              sub_47FF28
EOR             R1, R0, #1
MOV             R0, R4
STRB            R1, [R4,#0x1D]
POP             {R4-R8,PC}
