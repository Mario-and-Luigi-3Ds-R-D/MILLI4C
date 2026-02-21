MOV             R3, R0
LDR             R0, =dword_6E7CD0
MOV             R12, R1
PUSH            {R4,LR}
LDR             R1, [R0,#(dword_6E85EC - 0x6E7CD0)]
LDRH            R0, [R2,#2]
MOV             R2, R12
VMOV            S0, R1
MOV             R1, R3
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
