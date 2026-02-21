PUSH            {R0-R2}
LDRD            R0, R1, [SP,#0xC+var_C]
CMP             R0, R1
BEQ             loc_1217B8
ADD             R1, R0, #4
STR             R1, [SP,#0xC+var_C]
STR             R2, [R0]
LDRD            R0, R1, [SP,#0xC+var_C]
CMP             R0, R1
BNE             loc_1217A0
ADD             SP, SP, #0xC
BX              LR
