LDR             R0, =off_6D1648
SUB             SP, SP, #8
MOV             R2, SP
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0xC]
STR             R1, [SP,#8+var_8]
LDR             R0, [R0,#0x10]
STR             R0, [SP,#8+var_4]
MOV             R0, #0
VMOV.F32        S1, S0
LDR             R1, [R2,R0,LSL#2]
ADD             R0, R0, #1
CMP             R0, #2
VSTR            S1, [R1,#0xE4]
VSTR            S1, [R1,#0xE8]
VSTR            S1, [R1,#0xEC]
BLT             loc_189648
ADD             SP, SP, #8
BX              LR
