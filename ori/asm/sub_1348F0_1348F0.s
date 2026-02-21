PUSH            {R4,LR}
MOV             R4, R0
MOV             R3, #0
ADD             R0, R0, #0x2AC
BL              sub_140180
LDR             R0, [R4,#0x2C0]
ORR             R0, R0, #1
STR             R0, [R4,#0x2C0]
POP             {R4,PC}
