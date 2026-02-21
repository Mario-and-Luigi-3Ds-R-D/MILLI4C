PUSH            {R3-R11,LR}
MOV             R4, R0
MOV             R6, #0
MOV             R8, #1
LDR             R7, =off_6CE970
LDR             R1, [R4,#0x1D8]
LDR             R0, =0x10645C
LDR             R2, [R7]
LDRB            R3, [R1,#0x14]
ADD             R0, R0, R2; loc_10645C
CMP             R3, #4
BEQ             loc_21C3F4
BGE             loc_21C2C8
CMP             R3, #0
BEQ             loc_21C310
CMP             R3, #1
BNE             locret_21C38C
LDR             R0, [R0,#(loc_106460 - 0x10645C)]
LDRSH           R7, [R1,#0x16]
CMP             R0, #0
BEQ             loc_21C390
SUBS            R0, R0, #0x1AC
ADDNE           R5, R0, #0x1AC
BNE             loc_21C394
B               loc_21C390
CMP             R3, #5
BEQ             loc_21C498
CMP             R3, #0x11
BNE             locret_21C38C
LDRH            R1, [R1,#0x18]
MOV             R2, #0
MOV             R1, R1,LSL#21
MOV             R1, R1,LSR#28
STRB            R1, [SP,#0x28+var_28]
STRB            R2, [SP,#0x28+var_27]
STRB            R6, [SP,#0x28+var_26]
LDR             R0, [R0,#(loc_106460 - 0x10645C)]
CMP             R0, #0
BEQ             loc_21C4F8
SUBS            R0, R0, #0x1AC
ADDNE           R5, R0, #0x1AC
BNE             loc_21C4FC
B               loc_21C4F8
LDR             R0, [R0,#(loc_106460 - 0x10645C)]
LDRSH           R7, [R1,#0x16]
CMP             R0, #0
BEQ             loc_21C32C
SUBS            R0, R0, #0x1AC
ADDNE           R5, R0, #0x1AC
BNE             loc_21C330
MOV             R5, #0
CMP             R5, #0
BEQ             locret_21C38C
CMP             R5, #0
MOVEQ           R0, #0
SUBNE           R0, R5, #0x1AC
LDRB            R2, [R4,#0x1E1]
LDRB            R1, [R0,#0x495]
TST             R2, R8,LSL R1
BEQ             loc_21C380
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_21C380
CMP             R5, #0
MOVEQ           R1, #0
SUBNE           R1, R5, #0x1AC
MOV             R3, #0
MOV             R2, R7
MOV             R0, R4
BL              sub_21C0F0
LDR             R5, [R5,#8]
CMP             R5, R6
BNE             loc_21C338
POP             {R3-R11,PC}
MOV             R5, #0
CMP             R5, #0
BEQ             locret_21C38C
CMP             R5, #0
MOVEQ           R0, #0
SUBNE           R0, R5, #0x1AC
LDRB            R1, [R4,#0x1E1]
LDRB            R2, [R0,#0x495]
TST             R1, R8,LSL R2
BEQ             loc_21C3E4
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_21C3E4
CMP             R5, #0
MOVEQ           R1, #0
SUBNE           R1, R5, #0x1AC
MOV             R3, R7
MOV             R2, #0
MOV             R0, R4
BL              sub_21C0F0
LDR             R5, [R5,#8]
CMP             R5, R6
BNE             loc_21C39C
POP             {R3-R11,PC}
LDR             R0, [R0,#(loc_106460 - 0x10645C)]
CMP             R0, #0
BEQ             loc_21C40C
SUBS            R0, R0, #0x1AC
ADDNE           R5, R0, #0x1AC
BNE             loc_21C410
MOV             R5, #0
CMP             R5, #0
LDRNE           R10, =0x300AE
LDRNE           R9, =0xFFE683CC
BEQ             locret_21C38C
CMP             R5, #0
MOVEQ           R0, #0
SUBNE           R0, R5, #0x1AC
LDRB            R2, [R4,#0x1E1]
LDRB            R1, [R0,#0x495]
TST             R2, R8,LSL R1
BEQ             loc_21C488
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_21C488
CMP             R5, #0
MOVEQ           R0, #0
SUBNE           R0, R5, #0x1AC
MOV             R1, #1
ADD             R0, R0, #0x40 ; '@'
BL              sub_1CCF6C
CMP             R5, #0
MOVEQ           R0, #0
SUBNE           R0, R5, #0x1AC
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, [R7]
MOV             R2, R10
SUB             R0, R0, R9
BL              sub_503808
LDR             R5, [R5,#8]
CMP             R5, R6
BNE             loc_21C420
POP             {R3-R11,PC}
LDRSH           R8, [R1,#0x16]
MOV             R0, R2
BL              sub_52FB1C
ADD             R5, R0, #0x100
MOV             R7, R0
LDRSH           R0, [R5,#0x46]
MOV             R1, R8
BL              sub_586854
LDR             R9, =0x3E7
MOV             R1, R8
CMP             R0, R9
MOVGT           R0, R9
MOV             R6, R0
LDRSH           R0, [R5,#0x4A]
BL              sub_586854
CMP             R0, R9
MOVGT           R0, R9
MOV             R3, R0
ADD             SP, SP, #4
MOV             R2, R6
MOV             R1, R7
MOV             R0, R4
POP             {R4-R11,LR}
B               sub_21C0F0
MOV             R5, #0
CMP             R5, #0
BEQ             locret_21C38C
CMP             R5, #0
MOVEQ           R0, #0
SUBNE           R0, R5, #0x1AC
LDRB            R1, [R4,#0x1E1]
LDRB            R2, [R0,#0x495]
TST             R1, R8,LSL R2
BEQ             loc_21C56C
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_21C56C
CMP             R5, #0
MOVEQ           R0, #0
SUBNE           R0, R5, #0x1AC
LDR             R1, [R0]
LDR             R2, [R1,#0x34]
MOV             R1, SP
BLX             R2
CMP             R0, #0
BEQ             loc_21C56C
LDR             R1, [R4,#0x1D8]
CMP             R5, #0
MOVEQ           R0, #0
SUBNE           R0, R5, #0x1AC
LDRH            R1, [R1,#0x16]
BL              sub_4E4558
LDR             R5, [R5,#8]
CMP             R5, R6
BNE             loc_21C504
POP             {R3-R11,PC}
