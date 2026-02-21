PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x258]
MOV             R5, R1
MOV             R6, #0
CMP             R0, #0
BEQ             loc_196A64
BL              sub_533330
STR             R6, [R4,#0x258]
LDR             R0, =off_6D1648
CMP             R5, #0
MOVNE           R5, #0xC6
MOVEQ           R5, #0xC5
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R2, #1
MOV             R1, R5
BL              sub_1681CC
STR             R0, [R4,#0x258]
STRH            R6, [R0,#0xA]
POP             {R4-R6,PC}
