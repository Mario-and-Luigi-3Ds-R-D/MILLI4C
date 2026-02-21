PUSH            {R4-R10,LR}
MOV             R4, R2
MOV             R7, R0
MOV             R6, R1
LDRH            R0, [R2]
LDR             R8, =off_6CE970
LDR             R9, =0xFFE683CC
CMP             R0, #0x154
MOVEQ           R5, #1
MOVNE           R5, #0
CMP             R5, #0
LDRNE           R0, [R4,#0x10]
LDR             R1, [R4,#8]
VLDR            S0, [R4,#0x6C]
CMPNE           R0, #0
LDR             R0, [R8]
MOVEQ           R2, #0
MOVNE           R2, #1
SUB             R0, R0, R9
BL              sub_503414
CMP             R5, #0
BEQ             loc_213D5C
MOV             R1, R0
LDR             R0, [R8]
SUB             R0, R0, R9
BL              sub_5032AC
CMP             R6, #0
ADDNE           R2, R6, #4
MOVEQ           R2, #0
CMP             R0, #0xFF
MOVEQ           R1, #0
ORRNE           R1, R0, #0xF000
VMOV            S0, R1
LDRH            R0, [R4,#2]
MOV             R1, R7
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4-R10,PC}
