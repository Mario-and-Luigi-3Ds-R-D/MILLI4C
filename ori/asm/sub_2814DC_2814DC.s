PUSH            {R4-R7,LR}
MOV             R5, R0
SUB             SP, SP, #0x1C
LDR             R7, =off_6CDF98
ADD             R1, SP, #0x30+var_2C
LDR             R0, [R7]
LDR             R2, [R0,#0xC4]!
ADD             R0, R0, #4
STR             R0, [SP,#0x30+var_2C]
STR             R2, [SP,#0x30+var_30]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x30+var_28]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R1, [SP,#0x30+var_28]
LDR             R4, [SP,#0x30+var_30]
ADD             R0, SP, #0x30+var_2C
CMP             R1, R0
BNE             loc_281538
MOVS            R0, R4
BEQ             loc_281538
BL              sub_26CCDC
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x30+var_2C]
CMP             R4, #0
MOV             R6, #0
STR             R1, [R0,#4]
STR             R0, [R1]
BEQ             loc_2815EC
LDR             R0, [R7]
LDR             R3, =0x2AAAAAAB
LDR             R1, [R0,#0x124]
LDR             R0, [R4,#0x1C]
ADD             R0, R0, #0x580
LDM             R0, {R0,R2}
SUB             R0, R2, R0
SMULL           R2, R0, R3, R0
MOV             R2, R0,ASR#1
SUB             R0, R2, R0,ASR#31
UXTH            R0, R0
SUB             R0, R0, #2
ADD             R0, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#2
ADD             R1, R0, #0x2E8
LDR             R0, [R0,#0x2F0]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x30+var_1C]
ADD             R0, SP, #0x30+var_24
STM             R0, {R1,R2}
ADD             R2, SP, #0x30+var_24
LDR             R0, [R4,#0x1C]
VLDR            S1, [SP,#0x30+var_24]
ADD             R1, R0, #0x400
ADD             R1, R1, #0x198
ADD             R0, R0, #0x5A0
VLDR            S0, [R1]
MOV             R1, #0
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x30+var_24]
VLDR            S0, [R0]
VLDR            S1, [SP,#0x30+var_1C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x30+var_1C]
LDR             R0, [R5,#4]
VLDR            S0, =1.0
LDR             R0, [R0]
ADD             R0, R0, #0x11C
BL              sub_5A2074
LDR             R0, [R7]
BL              sub_5CD764
CMP             R0, #0
NOP
BEQ             loc_281648
LDR             R4, [R5,#4]
LDR             R0, [R4,#4]!
CMP             R0, #0
BEQ             loc_28161C
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R4,#8]
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_281650
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_281644
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R6, [R4]
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_281644
