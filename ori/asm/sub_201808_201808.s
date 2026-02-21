PUSH            {R4,LR}
ADD             R4, R0, #4
LDR             R0, [R0,#4]
LDR             R1, [R4,#4]
MOV             R2, R0
CMP             R0, R1
BEQ             loc_201830
ADD             R0, R0, #0xC
CMP             R0, R1
BNE             loc_201824
MOVS            R0, R2
BLNE            sub_110D10
SUB             R0, R4, #4
POP             {R4,PC}
