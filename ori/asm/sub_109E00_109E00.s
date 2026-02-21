LDR             R0, =dword_6CF94C
PUSH            {R4,LR}
BL              sub_118998
LDR             R1, =byte_6CF938
MOV             R0, #1
STRB            R0, [R1]
POP             {R4,PC}
