PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R4, R2
LDR             R1, [R2,#8]!
MOV             R7, R0
LDR             R0, [R2,#4]
UXTH            R1, R1
AND             R6, R0, #0xFF
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F538
MOV             R1, R6
BL              sub_5ED8B8
VMOV            S0, R0
LDRH            R3, [R4,#2]
CMP             R5, #0
ADDNE           R2, R5, #4
MOVEQ           R2, #0
MOV             R1, R7
VCVT.F32.U32    S0, S0
MOV             R0, R3
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
