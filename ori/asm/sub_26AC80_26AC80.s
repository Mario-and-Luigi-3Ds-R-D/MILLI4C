PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#0x104]
LDR             R4, [R5,#0x100]
CMP             R0, R4
MOVNE           R6, #3
BEQ             locret_26ACD8
LDR             R0, [R4]
LDRB            R1, [R0,#0x3F4]
CMP             R1, #5
BEQ             loc_26ACC8
CMP             R1, #2
STRBNE          R1, [R0,#0x3F5]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x24 ; '$'
STRB            R6, [R0,#0x3F4]
BL              sub_14C548
LDR             R0, [R5,#0x104]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_26AC9C
POP             {R4-R6,PC}
