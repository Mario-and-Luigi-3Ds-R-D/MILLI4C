PUSH            {R4-R9,LR}
MOV             R6, R0
MOV             R7, R1
MOV             R4, R2
MOV             R9, R3
VPUSH           {D8}
SUB             SP, SP, #0x3C
VMOV.F32        S16, S0
LDR             R8, [SP,#0x60+arg_0]
LDR             R5, [SP,#0x60+arg_4]
TST             R3, R8
BEQ             loc_166AD0
ADD             R0, R4, #4
VLDR            S2, [R7,#0x108]
VLDR            S5, [R4]
VLDR            S1, [R7,#0x10C]
VLDR            S0, [R7,#0x110]
VADD.F32        S2, S2, S5
VLDM            R0, {S3-S4}
ADD             R2, SP, #0x60+var_50
LDR             R0, =0x14290
ADD             R1, SP, #0x60+var_40
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S4
VSTR            S2, [SP,#0x60+var_50]
VSTR            S1, [SP,#0x60+var_4C]
VSTR            S0, [SP,#0x60+var_48]
LDRSB           R0, [R0,R6]
STR             R0, [SP,#0x60+var_60]
LDR             R0, =0x1428F
LDRB            R3, [R0,R6]
MOV             R0, R6
BL              sub_2AE650
LDR             R0, [R6]
ADD             R2, SP, #0x60+var_40
ADD             R1, SP, #0x60+var_5C
LDR             R3, [R0,#0x21C]
MOV             R0, R6
BLX             R3
VLDR            S0, [R4]
VLDR            S1, [SP,#0x60+var_5C]
VADD.F32        S0, S0, S1
VSTR            S0, [R4]
VLDR            S0, [R4,#4]
VLDR            S1, [SP,#0x60+var_58]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#4]
VLDR            S0, [R4,#8]
VLDR            S1, [SP,#0x60+var_54]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#8]
VLDR            S0, [R5,#0x20]
VLDR            S1, [SP,#0x60+var_5C]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x20]
VLDR            S0, [R5,#0x24]
VLDR            S1, [SP,#0x60+var_58]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x24]
VLDR            S0, [R5,#0x28]
VLDR            S1, [SP,#0x60+var_54]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x28]
VMOV.F32        S0, S16
MOV             R3, R9
MOV             R2, R4
MOV             R1, R7
MOV             R0, R6
STR             R5, [SP,#0x60+var_5C]
STR             R8, [SP,#0x60+var_60]
BL              sub_2B4688
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8}
POP             {R4-R9,PC}
