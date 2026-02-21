PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R0, #2
STRB            R0, [R5,#0x108]
LDR             R0, [R5,#0x104]
LDR             R4, [R5,#0x100]
CMP             R0, R4
BEQ             locret_26AC18
LDR             R0, [R4]
BL              sub_27EC80
LDR             R0, [R5,#0x104]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_26AC00
POP             {R4-R6,PC}
