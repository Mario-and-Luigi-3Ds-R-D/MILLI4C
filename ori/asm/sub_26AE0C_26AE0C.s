PUSH            {R4-R8,LR}
MOV             R6, R0
LDR             R0, [R0,#0x104]
LDR             R4, [R6,#0x100]
CMP             R0, R4
MOVNE           R7, #0x24 ; '$'
MOVNE           R8, #9
BEQ             locret_26AE70
LDR             R5, [R4]
LDRB            R0, [R5,#0x3F4]
CMP             R0, #5
BEQ             loc_26AE60
LDRB            R0, [R5,#0x3F8]
MOV             R3, #0x100
MOV             R2, #1
ADD             R0, R7, R0,LSL#2
ADD             R0, R0, #2
AND             R1, R0, #0xFF
MOV             R0, R5
BL              sub_14C548
STRB            R8, [R5,#0x3F4]
LDR             R0, [R6,#0x104]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_26AE2C
POP             {R4-R8,PC}
