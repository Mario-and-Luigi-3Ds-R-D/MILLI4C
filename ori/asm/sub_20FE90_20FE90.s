PUSH            {R4-R6,LR}
ADD             R4, R0, #0x800
ADD             R5, R0, #0xC00
ADD             R4, R4, #0x2E4
ADD             R5, R5, #0x24 ; '$'
MOV             R6, #0
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_20FEBC
BL              sub_2FF5D4
STR             R6, [R4,#4]
STRH            R6, [R4]
STRH            R6, [R4,#2]
ADD             R4, R4, #8
CMP             R4, R5
BNE             loc_20FEA8
POP             {R4-R6,PC}
