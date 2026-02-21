PUSH            {R4-R6,LR}
LDRD            R4, R5, [R0,#0x38]
CMP             R4, R5
BEQ             locret_299628
LDR             R0, [R4]
LDRB            R1, [R0,#6]
CMP             R1, #2
CMPNE           R1, #9
BLNE            sub_299900
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_299608
POP             {R4-R6,PC}
