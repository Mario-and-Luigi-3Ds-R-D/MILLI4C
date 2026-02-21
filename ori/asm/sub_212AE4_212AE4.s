MOV             R3, R0
LDR             R0, =off_6CE970
PUSH            {R4,LR}
CMP             R1, #0
ADDNE           R1, R1, #4
LDR             R0, [R0]
ADD             R12, R0, #0x100000
LDRH            R0, [R2,#2]
ADD             R12, R12, #0xD400
MOV             R2, R1
VLDR            S0, [R12,#0xA8]
MOV             R1, R3
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
