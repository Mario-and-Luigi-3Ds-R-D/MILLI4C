PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R8, R1
MOV             R4, R2
LDM             R2, {R0-R2}
SUB             SP, SP, #0x30
MOV             R7, R3
ADD             R3, SP, #0x48+var_40
LDR             R5, [SP,#0x48+arg_0]
VLDR            S12, [SP,#0x48+arg_4]
STM             R3, {R0-R2}
ADD             R0, R4, #0xC
ADD             R12, SP, #0x48+var_34
LDM             R0, {R0-R2}
ADD             R3, SP, #0x48+var_44
STM             R12, {R0-R2}
MOV             R0, R4
VSTR            S12, [SP,#0x48+var_48]
MOV             R2, R6
ADD             R1, R4, #0x18
VLDR            S0, [R6,#0xC]
BL              sub_28C8E0
VLDR            S13, =1.1921e-7
CMP             R0, #0
BEQ             loc_28DFFC
VLDR            S0, [R4,#0x30]
VLDR            S1, [SP,#0x48+var_44]
VADD.F32        S0, S0, S13
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_28DFFC
VLDR            S0, =0.0
VSTR            S0, [R7]
LDM             R6, {R0-R2}
STM             R5, {R0-R2}
MOV             R0, #1
ADD             SP, SP, #0x30 ; '0'
POP             {R4-R8,PC}
MOV             R3, R7
ADD             R2, SP, #0x48+var_40
MOV             R1, R8
MOV             R0, R6
STR             R5, [SP,#0x48+var_48]
BL              sub_28CFB8
CMP             R0, #0
NOP
BEQ             loc_28E08C
LDR             R0, [R7]
CMP             R0, #0xB4000000
BHI             loc_28E08C
LDR             R1, =0x3F800001
CMP             R0, R1
BGT             loc_28E08C
LDM             R5, {R0-R2}
ADD             R3, SP, #0x48+var_28
STM             R3, {R0-R2}
ADD             R2, SP, #0x48+var_28
VLDR            S0, [R6,#0xC]
ADD             R3, SP, #0x48+var_44
VSTR            S0, [SP,#0x48+var_1C]
MOV             R0, R4
ADD             R1, R4, #0x18
VSTR            S12, [SP,#0x48+var_48]
BL              sub_28C8E0
CMP             R0, #0
NOP
BEQ             loc_28E08C
VLDR            S0, [R4,#0x30]
VLDR            S1, [SP,#0x48+var_44]
VADD.F32        S0, S0, S13
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #1
BGE             loc_28DFF4
ADD             SP, SP, #0x30 ; '0'
MOV             R0, #0
POP             {R4-R8,PC}
