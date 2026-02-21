PUSH            {LR}
LDR             R3, [R1],#4
SUB             SP, SP, #0xC
MOV             R2, SP
STR             R3, [SP,#0x10+var_10]
STR             R1, [SP,#0x10+var_C]
LDR             R12, [R1,#4]
ADD             R3, SP, #0x10+var_C
STR             R12, [SP,#0x10+var_8]
STR             R3, [R12]
STR             R3, [R1,#4]
LDR             R1, [R0,#0xE0]
LDR             R12, [R0,#0xDC]
LDR             R3, =0x2AAAAAAB
SUB             R12, R1, R12
SMULL           R12, R3, R3, R12
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #0xA
BHI             loc_292950
CMP             R1, #0
BEQ             loc_292944
LDR             R3, [SP,#0x10+var_10]
ADD             R2, R2, #4
STR             R3, [R1],#4
STR             R2, [R1]
LDR             R2, [SP,#0x10+var_8]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R1, [SP,#0x10+var_8]
LDR             R1, [R0,#0xE0]
ADD             R1, R1, #0xC
STR             R1, [R0,#0xE0]
LDR             R0, [SP,#0x10+var_10]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R1, [SP,#0x10+var_8]
ADD             R0, SP, #0x10+var_C
CMP             R1, R0
BNE             loc_292988
LDR             R0, [SP,#0x10+var_10]
CMP             R0, #0
BEQ             loc_292988
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x10+var_C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
POP             {PC}
