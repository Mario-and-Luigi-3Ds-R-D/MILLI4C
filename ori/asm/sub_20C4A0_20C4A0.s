PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R1, =off_6CE970
MOV             R6, R0
LDR             R0, =0x120F78
MOV             R5, R2
LDR             R1, [R1]
LDR             R0, [R1,R0]
CMP             R0, #0
BEQ             locret_20C4F4
BL              sub_5CF41C
CMP             R0, #0
VLDREQ          S0, =0.0
VLDRNE          S0, =1.0
CMP             R4, #0
LDRH            R0, [R5,#2]
ADDNE           R2, R4, #4
MOVEQ           R2, #0
MOV             R1, R6
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
