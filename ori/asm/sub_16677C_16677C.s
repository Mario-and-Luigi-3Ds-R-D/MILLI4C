PUSH            {R4-R10,LR}
SUB             SP, SP, #0x38
MOV             R6, R0
MOV             R7, R1
LDRD            R8, R9, [SP,#0x58+arg_0]
LDR             R5, [SP,#0x58+arg_8]
MOV             R4, R2
TST             R8, R9
MOV             R10, R3
BEQ             loc_166870
ADD             R0, R4, #4
VLDR            S0, [R7,#0x110]
VLDR            S2, [R7,#0x10C]
VLDR            S1, [R7,#0x108]
VLDR            S5, [R4]
ADD             R1, SP, #0x58+var_48
VLDM            R0, {S3-S4}
VADD.F32        S1, S1, S5
LDR             R0, =0x14290
ADD             R2, SP, #0x58+var_48
VADD.F32        S2, S2, S3
VADD.F32        S0, S0, S4
VSTR            S0, [SP,#0x58+var_40]
VSTM            R1, {S1-S2}
ADD             R1, SP, #0x58+var_38
LDRSB           R0, [R0,R6]
STR             R0, [SP,#0x58+var_58]
LDR             R0, =0x1428F
LDRB            R3, [R0,R6]
MOV             R0, R6
BL              sub_2AE650
LDR             R0, [R6]
ADD             R2, SP, #0x58+var_38
ADD             R1, SP, #0x58+var_54
LDR             R3, [R0,#0x21C]
MOV             R0, R6
BLX             R3
VLDR            S0, [R4]
VLDR            S1, [SP,#0x58+var_54]
VADD.F32        S0, S0, S1
VSTR            S0, [R4]
VLDR            S0, [R4,#4]
VLDR            S1, [SP,#0x58+var_50]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#4]
VLDR            S0, [R4,#8]
VLDR            S1, [SP,#0x58+var_4C]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#8]
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
MOV             R3, R10
MOV             R2, R4
MOV             R1, R7
MOV             R0, R6
STRD            R8, R9, [SP,#0x58+var_58]
STR             R5, [SP,#0x58+var_50]
BL              sub_2B450C
ADD             SP, SP, #0x38 ; '8'
POP             {R4-R10,PC}
