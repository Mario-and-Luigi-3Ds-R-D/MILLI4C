ADD             R0, R2, #8
PUSH            {R4-R6,LR}
MOV             R4, R1
LDM             R0, {R0,R1,R3}
LDR             R5, [R2,#0x14]
AND             R1, R1, #0xFF
CMP             R3, #0
UXTH            R0, R0
MOVNE           R6, #1
MOVEQ           R6, #0
CMP             R0, #0
MOVEQ           R0, #0x1A4
LDRHEQ          R0, [R0,R4]
CMP             R1, #0
LDRBEQ          R1, [R4,#0x1A6]
BL              sub_20FED4
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
MOVEQ           R0, #0
MOVNE           R0, #1
CMP             R0, R6
BNE             loc_2128C4
LDR             R0, [R4,#4]
ADD             R0, R0, R5
STR             R0, [R4,#4]
MOV             R0, #0
POP             {R4-R6,PC}
