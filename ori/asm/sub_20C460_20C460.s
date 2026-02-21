LDR             R1, =off_6CE970
PUSH            {R4,LR}
LDR             R0, =0x120F78
VLDR            S0, [R2,#8]
LDR             R1, [R1]
VLDR            S1, [R2,#0xC]
LDR             R0, [R1,R0]
CMP             R0, #0
BEQ             locret_20C494
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
BL              sub_2E8A98
MOV             R0, #0
POP             {R4,PC}
