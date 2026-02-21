PUSH            {R4,R5,LR}
MOV             R4, R0
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R5, [R0,#0x41C]
SUB             SP, SP, #0x1C
ADD             R1, SP, #0x30+var_24
LDR             R0, [R5]
LDR             R0, [R0,#0x410]
BL              sub_5C6690
VLDR            S0, =0.0
ADD             R1, SP, #0x30+var_24
VSTR            S0, [SP,#0x30+var_20]
ADD             R0, R5, #0xC
BL              sub_14E984
VMOV.F32        S0, S16
LDR             R0, [R4,#0x410]
BL              sub_1A5830
LDR             R2, [R4,#0x3F4]
ADD             R0, R4, #0x3F4
CMP             R2, #0
BEQ             loc_1A0054
ADD             R0, R0, #4
STR             R0, [SP,#0x30+var_20]
STR             R2, [SP,#0x30+var_24]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x30+var_20
STR             R2, [SP,#0x30+var_1C]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x30+var_24]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, [SP,#0x30+var_1C]
ADD             R0, SP, #0x30+var_20
CMP             R1, R0
BNE             loc_1A0048
LDR             R0, [SP,#0x30+var_24]
CMP             R0, #0
BEQ             loc_1A0048
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x30+var_20]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
VLDR            S0, [R0,#0x14]
VLDR            S1, [R4,#0x5C]
ADD             R0, R4, #0x400
MOV             R1, SP
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x58]
LDR             R0, [R4,#0x410]
BL              sub_5C6690
ADD             R0, R4, #0x400
MOV             R1, SP
ADD             R0, R0, #0x28 ; '('
BL              sub_19E128
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4,R5,PC}
