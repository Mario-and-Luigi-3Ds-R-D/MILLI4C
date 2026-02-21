PUSH            {R4,LR}
LDR             R4, =byte_6D23B8
LDRB            R0, [R4]
CMP             R0, #0
BEQ             locret_109BB8
BL              sub_10EC74
BL              sub_10E17C
BL              sub_10E1AC
MOV             R0, #0
STRB            R0, [R4]
POP             {R4,PC}
