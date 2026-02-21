PUSH            {R3-R7,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
LDR             R5, [R0,#0x5C]
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x9C]
BL              sub_1A634C
MOV             R1, R0
LDR             R0, [R5]
MOV             R2, #0
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
LDR             R0, [R4,#4]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x2E ; '.'
LDR             R0, [R0,#0x5C]
BL              sub_14C548
MOV             R7, #0
STRB            R7, [R4,#8]
LDR             R0, [R4,#4]
ADD             R5, R4, #0xC
MOV             R3, #1
LDR             R1, [R0,#0x5C]
LDR             R0, =off_6CE970
ADD             R2, R1, #0x24 ; '$'
LDR             R1, =0x66F
LDR             R0, [R0]
STR             R7, [SP,#0x18+var_18]
BL              sub_52AEA8
MOV             R6, R0
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x184]
LDR             R0, [R4,#0x10]
ADD             R5, R4, #0x14
MOV             R2, #0
STRH            R7, [R0,#0xA]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x5C]
LDR             R0, =0x3074A
BL              sub_1A5284
MOV             R6, R0
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x64]
STRB            R7, [R4,#0x1C]
STRB            R7, [R4,#0x1D]
POP             {R3-R7,PC}
