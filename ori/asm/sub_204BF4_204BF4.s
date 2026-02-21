PUSH            {R3-R7,LR}
MOV             R5, R1
MOV             R4, R2
LDR             R1, [R2,#8]!
MOV             R6, R0
LDR             R0, [R2,#4]
MOV             R2, #0
MOV             R3, R2
STR             R2, [SP,#0x18+var_18]
SXTB            R2, R0
LDR             R0, =off_6CE970
UXTH            R1, R1
LDR             R0, [R0]
BL              sub_52F54C
VMOV            S0, R0
LDRH            R3, [R4,#2]
CMP             R5, #0
ADDNE           R2, R5, #4
MOVEQ           R2, #0
MOV             R1, R6
VCVT.F32.S32    S0, S0
MOV             R0, R3
BL              sub_145730
MOV             R0, #0
POP             {R3-R7,PC}
