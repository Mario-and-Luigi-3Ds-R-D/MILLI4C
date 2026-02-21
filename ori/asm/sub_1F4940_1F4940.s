MOV             R3, R0
ADD             R0, R2, #0x68 ; 'h'
PUSH            {R4,LR}
VLDM            R0, {S0-S1}
LDRH            R0, [R2,#2]
MOV             R2, R1
MOV             R1, R3
VMUL.F32        S0, S0, S1
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
