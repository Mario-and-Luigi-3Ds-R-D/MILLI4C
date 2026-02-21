PUSH            {R4,LR}
LDR             R4, [R0]
ADD             R0, R4, #0x13C00
ADD             R0, R0, #0x1C
BL              sub_4DC824
MOV             R0, #1
STRB            R0, [R4,#0xF1]
POP             {R4,PC}
