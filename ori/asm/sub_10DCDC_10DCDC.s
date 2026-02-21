PUSH            {R4,LR}
MOV             R4, R0
MRC             p15, 0, R0,c13,c0, 3
LDR             R1, [R4,#4]
CMP             R0, R1
BEQ             loc_10DD0C
MOV             R0, R4
BL              sub_10DCAC
CMP             R0, #0
MRCNE           p15, 0, R0,c13,c0, 3
STRNE           R0, [R4,#4]
BEQ             locret_10DD1C
LDR             R0, [R4,#8]
ADD             R0, R0, #1
STR             R0, [R4,#8]
MOV             R0, #1
POP             {R4,PC}
