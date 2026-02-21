PUSH            {R4-R6,LR}
MOV             R6, R0
ADD             R4, R0, #4
LDR             R0, =off_6CE970
MOV             R3, #0
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0]
SUB             SP, SP, #0x10
MOV             R5, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
BEQ             loc_280FC8
LDR             R1, =off_6BC2E4
STM             R0, {R1,R6}
VSTR            S16, [R0,#8]
STR             R0, [SP,#0x28+var_28]
ADD             R0, R5, #4
STR             R0, [SP,#0x28+var_20]
STR             R0, [SP,#0x28+var_24]
LDR             R0, [R4]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_280FF4
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [SP,#0x28+var_28]
LDR             R0, [R4]
CMP             R0, R1
BEQ             loc_281064
LDR             R1, [R4,#8]
ADD             R2, R4, #4
CMP             R1, R2
BNE             loc_2810B8
CMP             R0, #0
BEQ             loc_281028
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R0, [SP,#0x28+var_28]
STR             R0, [R4],#4
ADD             R0, R5, #4
CMP             R0, R4
LDRNE           R1, [SP,#0x28+var_20]
CMPNE           R1, R4
BEQ             loc_281064
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
BNE             loc_2810A0
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_2810A0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_281028
