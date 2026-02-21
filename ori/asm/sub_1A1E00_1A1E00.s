PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
SUB             SP, SP, #0x18
CMP             R0, #0
BEQ             loc_1A1E7C
STR             R0, [SP,#0x20+var_20]
ADD             R0, R4, #4
STR             R0, [SP,#0x20+var_1C]
LDR             R2, [R4,#8]
ADD             R1, SP, #0x20+var_1C
STR             R2, [SP,#0x20+var_18]
STR             R1, [R2]
STR             R1, [R4,#8]
LDR             R0, [SP,#0x20+var_20]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_1A1E70
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_1A1E70
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x5C]
VLDR            S0, =0.0
ADD             R1, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x20+var_C]
ADD             R0, SP, #0x20+var_14
STM             R0, {R1,R2}
ADD             R1, SP, #0x20+var_14
VSTR            S0, [SP,#0x20+var_10]
ADD             R0, R4, #0x10
BL              sub_19E128
ADD             SP, SP, #0x18
POP             {R4,PC}
