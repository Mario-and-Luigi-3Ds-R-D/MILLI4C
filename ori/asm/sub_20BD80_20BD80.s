LDR             R1, =off_6CE970
PUSH            {R4,LR}
LDR             R0, =0x120F78
LDR             R1, [R1]
ADD             R0, R0, R1
LDR             R1, [R2,#8]
LDR             R0, [R0]
LDR             R2, [R2,#0xC]
CMP             R0, #0
BEQ             locret_20BDB0
BL              sub_2E8A68
MOV             R0, #0
POP             {R4,PC}
