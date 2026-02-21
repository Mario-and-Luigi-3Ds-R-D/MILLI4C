MOV             R12, R1
ADD             R1, R2, #8
PUSH            {R4,LR}
LDM             R1, {R1,R4}
MOV             R3, R0
LDRH            R0, [R2,#2]
MOV             R2, R12
EOR             R1, R1, R4
VMOV            S0, R1
MOV             R1, R3
VCVT.F32.S32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
