MOV             R3, R0
PUSH            {R4,LR}
LDR             R0, [R2,#8]
MOV             R12, R1
CMP             R0, #0
MOVEQ           R1, #1
MOVNE           R1, #0
VMOV            S0, R1
LDRH            R0, [R2,#2]
MOV             R2, R12
MOV             R1, R3
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
