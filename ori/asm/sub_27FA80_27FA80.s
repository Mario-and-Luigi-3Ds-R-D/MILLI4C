PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R5, =off_6CDF98
VPUSH           {D8}
SUB             SP, SP, #0x1C
LDR             R0, [R5]
ADD             R1, SP, #0x30+var_2C
LDR             R2, [R0,#0xC4]!
ADD             R0, R0, #4
STR             R0, [SP,#0x30+var_2C]
STR             R2, [SP,#0x30+var_30]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x30+var_28]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x30+var_30]
ADD             R1, SP, #0x30+var_24
BL              sub_5CC270
LDR             R1, [SP,#0x30+var_28]
ADD             R0, SP, #0x30+var_2C
CMP             R1, R0
BNE             loc_27FAEC
LDR             R0, [SP,#0x30+var_30]
CMP             R0, #0
BEQ             loc_27FAEC
BL              sub_26CCDC
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x30+var_2C]
VLDR            S0, =0.0
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R1, [R5]
LDR             R0, [R4,#0x10]
VLDR            S16, [SP,#0x30+var_20]
LDR             R1, [R1,#0x124]
LDRB            R2, [R0,#0x708]
LDR             R0, [R4,#0xC]
LDR             R1, [R1,#0x610]
SUB             R2, R2, #1
MUL             R1, R1, R2
MOV             R2, #1
STR             R1, [R0,#0x40]
ADD             R1, SP, #0x30+var_24
VSTR            S0, [SP,#0x30+var_20]
MOV             R0, R1
BL              sub_14C878
VLDR            S0, [SP,#0x30+var_20]
MOV             R1, #0
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x30+var_20]
LDR             R0, [R4,#0xC]
BL              sub_14C450
LDR             R0, [R5]
VLDR            S0, [SP,#0x30+var_1C]
LDR             R0, [R0,#0x124]
ADD             R0, R0, #0x400
VLDR            S1, [R0,#0x218]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x30+var_1C]
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x30+var_24
BLX             R2
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4,R5,PC}
