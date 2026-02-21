PUSH            {R4-R10,LR}
SUB             SP, SP, #0x38
MOV             R4, R0
ADD             R0, SP, #0x58+arg_0
LDR             R5, [SP,#0x58+arg_8]
LDM             R0, {R7,R8}
MOV             R9, R1
MOV             R6, R2
MOV             R10, R3
TST             R7, R8
BEQ             loc_1669A8
LDM             R6, {R0-R2}
ADD             R3, SP, #0x58+var_48
CMP             R9, #1
STM             R3, {R0-R2}
BNE             loc_16690C
VMOV            S0, R0
VLDR            S1, [R4,#0x24]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x58+var_48]
VMOV            S0, R1
VLDR            S1, [R4,#0x28]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x58+var_44]
VMOV            S0, R2
VLDR            S1, [R4,#0x2C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x58+var_40]
LDR             R0, =0x14290
ADD             R2, SP, #0x58+var_48
ADD             R1, SP, #0x58+var_38
LDRSB           R0, [R0,R4]
STR             R0, [SP,#0x58+var_58]
LDR             R0, =0x1428F
LDRB            R3, [R0,R4]
MOV             R0, R4
BL              sub_2AE650
LDR             R0, [R4]
ADD             R2, SP, #0x58+var_38
ADD             R1, SP, #0x58+var_54
LDR             R3, [R0,#0x21C]
MOV             R0, R4
BLX             R3
VLDR            S0, [R6]
VLDR            S1, [SP,#0x58+var_54]
VADD.F32        S0, S0, S1
VSTR            S0, [R6]
VLDR            S0, [R6,#4]
VLDR            S1, [SP,#0x58+var_50]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#4]
VLDR            S0, [R6,#8]
VLDR            S1, [SP,#0x58+var_4C]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#8]
VLDR            S0, [R5,#0x20]
VLDR            S1, [SP,#0x58+var_54]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x20]
VLDR            S0, [R5,#0x24]
VLDR            S1, [SP,#0x58+var_50]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x24]
VLDR            S0, [R5,#0x28]
VLDR            S1, [SP,#0x58+var_4C]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x28]
STR             R5, [SP,#0x58+var_50]
MOV             R3, R10
MOV             R2, R6
MOV             R1, R9
MOV             R0, R4
STMEA           SP, {R7,R8}
BL              sub_2B4574
ADD             SP, SP, #0x38 ; '8'
POP             {R4-R10,PC}
