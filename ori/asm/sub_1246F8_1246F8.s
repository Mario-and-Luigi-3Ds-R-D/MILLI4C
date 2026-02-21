PUSH            {R4-R6,LR}
ADD             R4, R0, #0x2C4
ADD             R5, R0, #0x2D4
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_12BA58
ADD             R4, R4, #4
CMP             R4, R5
BNE             loc_124704
POP             {R4-R6,PC}
