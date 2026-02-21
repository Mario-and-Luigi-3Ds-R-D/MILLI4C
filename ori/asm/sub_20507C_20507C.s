PUSH            {R4,LR}
MOV             R12, R0
LDR             R0, [R2,#8]
LDR             R3, [R1,#4]
CMP             R1, #0
ADDNE           R1, R1, #4
ADD             R3, R3, R0
LDRH            R0, [R2,#2]
BIC             R2, R3, #0xFF000000
VMOV            S0, R2
MOV             R2, R1
MOV             R1, R12
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
