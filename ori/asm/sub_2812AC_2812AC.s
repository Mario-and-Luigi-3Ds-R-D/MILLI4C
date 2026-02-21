PUSH            {R4-R7,LR}
MOV             R6, R0
ADD             R4, R0, #4
LDR             R0, =off_6CE970
MOV             R7, R1
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0]
SUB             SP, SP, #0xC
MOV             R3, #0
ADD             R1, R0, #0x68 ; 'h'
MOV             R5, SP
MOV             R2, R3
MOV             R0, #0x18
BL              sub_10A358
CMP             R0, #0
BEQ             loc_28133C
LDR             R1, =off_6BC300
ADD             R12, R0, #0xC
STM             R0, {R1,R6}
VSTR            S16, [R0,#8]
LDM             R7, {R1-R3}
STM             R12, {R1-R3}
LDR             R1, =off_6CDF98
VLDR            S0, [R0,#0xC]
LDR             R1, [R1]
LDR             R1, [R1,#0x124]
VLDR            S1, [R1,#0x364]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0xC]
LDR             R2, [R1,#0x368]
VMOV            S0, R3
STR             R2, [R0,#0x10]
VLDR            S1, [R1,#0x36C]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x14]
STR             R0, [SP,#0x28+var_28]
ADD             R0, R5, #4
STR             R0, [SP,#0x28+var_20]
STR             R0, [SP,#0x28+var_24]
LDR             R0, [R4]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_281368
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [SP,#0x28+var_28]
LDR             R0, [R4]
CMP             R0, R1
BEQ             loc_2813D8
LDR             R1, [R4,#8]
ADD             R2, R4, #4
CMP             R1, R2
BNE             loc_28142C
CMP             R0, #0
BEQ             loc_28139C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R0, [SP,#0x28+var_28]
STR             R0, [R4],#4
ADD             R0, R5, #4
CMP             R0, R4
LDRNE           R1, [SP,#0x28+var_20]
CMPNE           R1, R4
BEQ             loc_2813D8
MOV             R3, R1
LDM             R4, {R1,R2}
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R3, [R4,#4]
STR             R4, [R3]
STR             R4, [SP,#0x28+var_20]
STR             R0, [R4]
LDR             R0, [SP,#0x28+var_28]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R6
BLX             R2
LDR             R1, [SP,#0x28+var_20]
ADD             R0, SP, #0x28+var_24
CMP             R1, R0
BNE             loc_281414
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_281414
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_28139C
