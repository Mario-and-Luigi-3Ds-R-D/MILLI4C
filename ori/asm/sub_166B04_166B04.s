PUSH            {R4-R9,LR}
MOV             R4, R0
MOV             R8, R1
MOV             R6, R2
MOV             R9, R3
VPUSH           {D8-D9}
SUB             SP, SP, #0x3C
VMOV.F64        D8, D0
VMOV.F64        D9, D1
LDR             R7, [SP,#0x68+arg_0]
LDR             R5, [SP,#0x68+arg_4]
TST             R3, R7
BEQ             loc_166C18
LDM             R6, {R0-R2}
ADD             R3, SP, #0x68+var_58
CMP             R8, #1
STM             R3, {R0-R2}
BNE             loc_166B7C
VMOV            S0, R0
VLDR            S1, [R4,#0x24]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_58]
VMOV            S0, R1
VLDR            S1, [R4,#0x28]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_54]
VMOV            S0, R2
VLDR            S1, [R4,#0x2C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_50]
LDR             R0, =0x14290
ADD             R2, SP, #0x68+var_58
ADD             R1, SP, #0x68+var_48
LDRSB           R0, [R0,R4]
STR             R0, [SP,#0x68+var_68]
LDR             R0, =0x1428F
LDRB            R3, [R0,R4]
MOV             R0, R4
BL              sub_2AE650
LDR             R0, [R4]
ADD             R2, SP, #0x68+var_48
ADD             R1, SP, #0x68+var_64
LDR             R3, [R0,#0x21C]
MOV             R0, R4
BLX             R3
VLDR            S0, [R6]
VLDR            S1, [SP,#0x68+var_64]
VADD.F32        S0, S0, S1
VSTR            S0, [R6]
VLDR            S0, [R6,#4]
VLDR            S1, [SP,#0x68+var_60]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#4]
VLDR            S0, [R6,#8]
VLDR            S1, [SP,#0x68+var_5C]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#8]
VLDR            S0, [R5,#0x20]
VLDR            S1, [SP,#0x68+var_64]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x20]
VLDR            S0, [R5,#0x24]
VLDR            S1, [SP,#0x68+var_60]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x24]
VLDR            S0, [R5,#0x28]
VLDR            S1, [SP,#0x68+var_5C]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x28]
VMOV.F32        S3, S19
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VMOV.F32        S0, S16
MOV             R3, R9
MOV             R2, R6
MOV             R1, R8
MOV             R0, R4
STR             R5, [SP,#0x68+var_64]
STR             R7, [SP,#0x68+var_68]
BL              sub_2B4778
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D9}
POP             {R4-R9,PC}
