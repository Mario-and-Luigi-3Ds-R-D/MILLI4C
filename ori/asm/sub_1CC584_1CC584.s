PUSH            {R4,LR}
LDR             R4, [R0]
ADD             R0, R4, #0x14800
ADD             R0, R0, #0x284
STRB            R1, [R4,#0xF3]
BL              sub_4D3C84
LDR             R0, =0xFFFB43D4
SUB             R4, R4, R0
LDR             R0, [R4]
CMP             R0, #0
BEQ             locret_1CC5BC
BL              sub_533330
MOV             R0, #0
STR             R0, [R4]
POP             {R4,PC}
