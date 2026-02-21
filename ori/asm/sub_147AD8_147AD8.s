PUSH            {R3-R9,LR}
MOV             R5, R0
MOV             R7, R0
MOV             R0, #0x810000
MOV             R4, R0
MOV             R0, R5
BL              sub_4F264C
MOV             R1, R0
MOV             R3, R4
MOV             R2, #0
MOV             R0, #0x10
BL              sub_10A358
CMP             R0, #0
BEQ             locret_147BD8
MOV             R1, #1
STRB            R1, [R0,#4]
LDR             R1, =off_6B7838
MOV             R9, #0
MOV             R4, R0
STR             R1, [R0]
STR             R5, [R0,#8]
STRB            R9, [R0,#0xC]
LDR             R0, [R5,#0x7C]
LDR             R8, [R5,#0x18]
ADD             R6, R5, #0x44 ; 'D'
CMP             R0, #0
BEQ             loc_147B58
BL              sub_533330
LDR             R0, [R6,#0x38]
CMP             R0, #0
STRNE           R9, [R0,#0x184]
STRNE           R9, [R6,#0x38]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x2A ; '*'
MOV             R0, R5
STR             R9, [SP,#0x20+var_20]
BL              sub_4E3CA0
MOV             R2, #0xFFFFFFFF
MOV             R1, R2
MOV             R0, R8
BL              sub_5C55C8
VMOV            S0, R0
MOV             R1, #1
ADD             R0, R8, #0x1DC
VCVT.F32.S32    S0, S0
BL              sub_5A2708
LDRB            R1, [R6,#0x27]
CMP             R1, #2
LDRB            R1, [R7,#0x495]
BEQ             loc_147BDC
LDR             R2, =0x30024
CMP             R1, #0
ORR             R0, R2, R2,ASR#17
BEQ             loc_147BB8
MOV             R2, R0
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDRH            R1, [R5,#0x10]
MOV             R3, #0
LDR             R12, [R12]
SUB             R0, R12, R0
BL              sub_503808
MOV             R0, R4
POP             {R3-R9,PC}
LDR             R2, =0x30022
CMP             R1, #0
ORR             R0, R2, R2,ASR#16
BEQ             loc_147BB8
B               loc_147BB4
