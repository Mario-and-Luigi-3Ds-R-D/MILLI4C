LDR             R0, =byte_69A35E
PUSH            {R3,LR}
LDR             R2, =0xA0002
MOV             R1, #1
LDRB            R0, [R0]
STRB            R0, [SP,#8+var_8]
MOV             R0, SP
BL              sub_1191B8
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDRB            R0, [SP,#8+var_8]
POP             {R3,PC}
