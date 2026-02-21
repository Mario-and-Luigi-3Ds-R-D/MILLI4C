PUSH            {R4-R6,LR}
MOV             R5, #0
LDR             R1, [R0,#4]
STRB            R5, [R1,#0x445]
LDR             R0, [R0,#4]
LDR             R4, [R0,#0x41C]
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             locret_19E5A0
BL              sub_533330
LDR             R0, [R4,#8]
CMP             R0, #0
STRNE           R5, [R0,#0x184]
STRNE           R5, [R4,#8]
POP             {R4-R6,PC}
