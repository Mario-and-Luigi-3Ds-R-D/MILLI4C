CMP             R0, #0
LDR             R0, =byte_6D2498
PUSH            {R4,LR}
MOV             R1, #0
MOVNE           R4, #0
STRB            R1, [R0]
BEQ             locret_10F2B4
MOV             R0, #3
BL              sub_11A198
MOV             R0, R4
POP             {R4,LR}
B               sub_11B290
POP             {R4,PC}
