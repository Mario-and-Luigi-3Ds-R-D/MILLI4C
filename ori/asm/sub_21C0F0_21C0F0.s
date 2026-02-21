PUSH            {R3-R11,LR}
MOV             R5, R0
MOV             R4, R1
MOV             R6, R2
MOV             R7, R3
LDR             R8, =off_6CE970
LDR             R0, [R8]
BL              sub_5EE458
LDR             R10, =0x1010
LDR             R9, =dword_6E30CC
CMP             R0, #0x1000
SUBNE           R1, R0, #0x1000
SUBSNE          R1, R1, #1
ORR             R11, R10, R10,ASR#12
BEQ             loc_21C14C
SUB             R1, R0, #0x1000
SUBS            R1, R1, #2
SUBNE           R1, R0, #0x1000
SUBSNE          R1, R1, #3
BEQ             loc_21C14C
CMP             R0, R10
CMPNE           R0, R11
BNE             loc_21C18C
LDRB            R1, [R4,#0x495]
LDR             R2, =0xE00B
LDR             R0, =dword_6E7CD0
BL              sub_5F1164
CMP             R0, #0
NOP
BEQ             loc_21C18C
LDR             R1, [R9,#(dword_6E30EC - 0x6E30CC)]
MOV             R0, R6
BL              sub_586854
LDR             R1, =0x270F
CMP             R0, R1
MOVGT           R0, R1
MOV             R1, R0
MOV             R0, R4
BL              sub_4E5AA0
LDR             R0, [R5,#0x1D4]
LDR             R2, =0xE00E
LDRB            R1, [R0,#0x495]
LDR             R0, =dword_6E7CD0
BL              sub_5F1164
CMP             R0, #0
NOP
BEQ             loc_21C1E0
LDR             R1, [R9,#(dword_6E30F8 - 0x6E30CC)]
MOV             R0, R6
BL              sub_586854
LDR             R5, =0x3E7
MOV             R6, R0
LDR             R1, [R9,#(dword_6E30F8 - 0x6E30CC)]
CMP             R0, R5
MOVGT           R6, R5
MOV             R0, R7
BL              sub_586854
CMP             R0, R5
MOV             R7, R0
MOVGT           R7, R5
LDR             R0, [R8]
BL              sub_5EE458
CMP             R0, R10
CMPNE           R0, R11
MOVEQ           R0, #1
MOVNE           R0, #0
EORS            R5, R0, #1
BNE             loc_21C21C
LDR             R0, =0xFFE683CC
LDR             R12, [R8]
LDR             R1, [R4,#0x18]
LDR             R2, =0x30064
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, #0
STR             R0, [SP,#0x28+var_28]
MOV             R3, R5
MOV             R2, R7
MOV             R1, R6
MOV             R0, R4
BL              sub_4F18FC
POP             {R3-R11,PC}
