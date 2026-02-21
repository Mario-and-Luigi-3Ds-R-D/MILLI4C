PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#0x104]
LDR             R4, [R5,#0x100]
CMP             R0, R4
MOVNE           R6, #0x24 ; '$'
BEQ             locret_26B26C
LDR             R0, [R4]
LDRB            R1, [R0,#0x3F4]
CMP             R1, #5
BEQ             loc_26B25C
LDRB            R1, [R0,#0x3F8]
MOV             R3, #0x100
MOV             R2, #0
ADD             R1, R6, R1,LSL#2
AND             R1, R1, #0xFF
BL              sub_14C548
LDR             R0, [R5,#0x104]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_26B234
POP             {R4-R6,PC}
