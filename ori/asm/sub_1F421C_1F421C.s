PUSH            {R4,LR}
MOV             R3, R0
LDR             R0, [R1]
LDR             R12, [R2,#8]
ADD             R0, R0, R12
LDRH            R0, [R0]
AND             R0, R0, #0xFF
VMOV            S0, R0
LDRH            R0, [R2,#2]
MOV             R2, R1
MOV             R1, R3
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
