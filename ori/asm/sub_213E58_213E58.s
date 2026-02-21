LDR             R12, =off_6CE970
MOV             R3, R0
PUSH            {R4,LR}
LDR             R0, =0x120F74
LDR             R12, [R12]
LDR             R0, [R12,R0]
CMP             R0, #0
BEQ             locret_213E98
CMP             R1, #0
VLDR            S0, [R0,#0x100]
LDRH            R0, [R2,#2]
ADDNE           R1, R1, #4
MOV             R2, R1
MOV             R1, R3
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
