PUSH            {LR}
LDR             R3, [R1],#4
SUB             SP, SP, #0xC
LDR             R2, [R0,#0x10]
STR             R3, [SP,#0x10+var_10]
STR             R1, [SP,#0x10+var_C]
LDR             R12, [R1,#4]
ADD             R3, SP, #0x10+var_C
MOV             R0, SP
STR             R12, [SP,#0x10+var_8]
STR             R3, [R12]
STR             R3, [R1,#4]
LDR             R1, [R2,#0x8C]
LDR             R12, [R2,#0x88]
LDR             R3, =0x2AAAAAAB
SUB             R12, R1, R12
SMULL           R12, R3, R3, R12
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #0xA
BHI             loc_285074
CMP             R1, #0
BEQ             loc_285068
LDR             R3, [SP,#0x10+var_10]
ADD             R0, R0, #4
STR             R3, [R1],#4
STR             R0, [R1]
LDR             R0, [SP,#0x10+var_8]
STR             R0, [R1,#4]
STR             R1, [R0]
STR             R1, [SP,#0x10+var_8]
LDR             R0, [R2,#0x8C]
ADD             R0, R0, #0xC
STR             R0, [R2,#0x8C]
LDR             R1, [SP,#0x10+var_8]
ADD             R0, SP, #0x10+var_C
CMP             R1, R0
BNE             loc_28509C
LDR             R0, [SP,#0x10+var_10]
CMP             R0, #0
BEQ             loc_28509C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x10+var_C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
POP             {PC}
