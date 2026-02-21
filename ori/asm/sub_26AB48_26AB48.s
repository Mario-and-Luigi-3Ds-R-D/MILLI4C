PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R0, #1
STRB            R0, [R6,#0x108]
LDR             R0, [R6,#0x104]
LDR             R4, [R6,#0x100]
CMP             R0, R4
LDRNE           R8, =off_6CDF98
MOVNE           R7, #0
BEQ             locret_26AB9C
LDR             R0, [R8]
LDR             R5, [R4]
MOV             R2, #0
LDR             R1, [R0,#0x138]
MOV             R0, R5
BL              sub_14E6E0
STRB            R7, [R5,#0x3F4]
LDR             R0, [R6,#0x104]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_26AB70
POP             {R4-R8,PC}
