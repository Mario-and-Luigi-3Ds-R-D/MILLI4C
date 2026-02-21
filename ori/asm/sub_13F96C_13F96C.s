PUSH            {R4-R6,LR}
ADD             R4, R0, #0x1C4
ADD             R5, R0, #0x304
MOV             R0, R4
LDR             R0, [R0]
CMP             R0, #9
MOVNE           R0, R4
BLNE            sub_141390
ADD             R4, R4, #0x50 ; 'P'
CMP             R4, R5
BCC             loc_13F978
POP             {R4-R6,PC}
