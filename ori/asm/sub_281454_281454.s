PUSH            {LR}
LDR             R2, [R0,#4]!
SUB             SP, SP, #0xC
CMP             R2, #0
BEQ             loc_2814CC
ADD             R0, R0, #4
STR             R0, [SP,#0x10+var_C]
STR             R2, [SP,#0x10+var_10]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x10+var_C
STR             R2, [SP,#0x10+var_8]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x10+var_10]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, [SP,#0x10+var_8]
ADD             R0, SP, #0x10+var_C
CMP             R1, R0
BNE             loc_2814C0
LDR             R0, [SP,#0x10+var_10]
CMP             R0, #0
BEQ             loc_2814C0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x10+var_C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
POP             {PC}
