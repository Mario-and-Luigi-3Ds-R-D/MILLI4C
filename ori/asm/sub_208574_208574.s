MOV             R12, R0
LDR             R0, =off_6CE970
PUSH            {R4,LR}
LDR             R3, [R2,#8]
VLDR            S0, =0.0
LDR             R0, [R0]
ANDS            R3, R3, #0xFF
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xD000
VLDREQ          S0, [R0,#0x2F8]
BEQ             loc_2085A8
CMP             R3, #1
VLDREQ          S0, [R0,#0x2FC]
CMP             R1, #0
LDRH            R0, [R2,#2]
ADDNE           R1, R1, #4
MOV             R2, R1
MOV             R1, R12
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
