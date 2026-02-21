PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
LDR             R1, =off_6CDF98
SUB             SP, SP, #0x1C
LDR             R0, [R0]
LDR             R3, [R1]
ADD             R1, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
LDR             R5, [R3,#0x124]
STR             R0, [SP,#0x28+var_20]
STMEA           SP, {R1,R2}
LDR             R0, [R4,#8]
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R4,#4]
LDR             R0, [R0]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
ADD             R0, R5, #0x400
VLDR            S0, [R4,#8]
VLDR            S1, [R0,#0x1A4]
ADD             R2, SP, #0x28+var_1C
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_1C]
LDR             R1, [R5,#0x2EC]
STR             R1, [SP,#0x28+var_18]
VLDR            S0, [R5,#0xD8]
VLDR            S1, [R5,#0x2F0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_14]
LDR             R1, [R4,#4]
VLDR            S0, [R0,#0x1A8]
LDR             R1, [R1]
ADD             R0, R1, #0x11C
MOV             R1, #0
BL              sub_5A2298
ADD             SP, SP, #0x1C
POP             {R4,R5,PC}
