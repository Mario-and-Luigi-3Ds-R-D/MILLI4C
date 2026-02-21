PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R5, =off_6CDF98
SUB             SP, SP, #0x34
MOV             R1, #0
VLDR            S0, =1.0
LDR             R0, [R5]
LDR             R0, [R0,#0x124]
STRB            R1, [R4,#8]
ADD             R1, SP, #0x40+var_24
ADD             R2, R0, #0x2D0
LDM             R2, {R2,R3}
STR             R2, [SP,#0x40+var_20]
STR             R3, [SP,#0x40+var_24]
VSTR            S0, [SP,#0x40+var_1C]
ADD             R2, R0, #0x400
LDR             R0, [R4,#4]
VLDR            S0, [R2,#0x178]
ADD             R0, R0, #0x6C ; 'l'
BL              sub_5A2138
LDR             R0, [R5]
MOV             R1, SP
BL              sub_5CC8EC
LDR             R0, [R4,#4]
ADD             R1, SP, #0x40+var_14
LDR             R0, [R0,#0x584]
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x40+var_14]
STR             R2, [SP,#0x40+var_18]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x40+var_10]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x40+var_18]
ADD             R1, SP, #0x40+var_34
BL              sub_5CCFE8
LDR             R1, [SP,#0x40+var_10]
ADD             R0, SP, #0x40+var_14
CMP             R1, R0
BNE             loc_26FFD0
LDR             R0, [SP,#0x40+var_18]
CMP             R0, #0
BEQ             loc_26FFD0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x40+var_14]
STR             R1, [R0,#4]
STR             R0, [R1]
VLDR            S0, [SP,#0x40+var_40]
VLDR            S1, [SP,#0x40+var_34]
MOV             R1, SP
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_40]
LDR             R0, [R4,#4]
BL              sub_2715F4
ADD             SP, SP, #0x34 ; '4'
POP             {R4,R5,PC}
