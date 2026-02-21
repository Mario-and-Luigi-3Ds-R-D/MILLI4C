PUSH            {R4-R10,LR}
MOV             R5, R1
MOV             R7, R0
MOV             R4, R2
LDRH            R0, [R2]
LDR             R8, =off_6CE970
LDR             R9, =0xFFE683CC
SUB             R1, R0, #0x100
LDR             R0, [R4,#0xC]
SUBS            R1, R1, #0x56 ; 'V'
MOVEQ           R6, #1
MOVNE           R6, #0
UXTH            R1, R0
CMP             R6, #0
LDRNE           R0, [R4,#0x10]
LDR             R2, [R4,#8]
CMPNE           R0, #0
LDR             R0, [R8]
MOVEQ           R3, #0
MOVNE           R3, #1
SUB             R0, R0, R9
BL              sub_503808
CMP             R6, #0
BEQ             loc_206808
MOV             R1, R0
LDR             R0, [R8]
SUB             R0, R0, R9
BL              sub_5032AC
CMP             R5, #0
ADDNE           R2, R5, #4
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
