PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0]
CMP             R0, #0
BEQ             locret_119A60
LDR             R0, =byte_711DC4
BL              sub_12226C
MOV             R1, #0xFFFFFFFF
MOV             R0, #0
STR             R1, [R4,#0x4C]
STRB            R0, [R4]
POP             {R4,PC}
