PUSH            {R4-R11,LR}
MOV             R6, R0
VPUSH           {D8-D11}
SUB             SP, SP, #0x3C
ADD             R2, SP, #0x80+var_50
ADD             R1, SP, #0x80+var_74
BL              sub_1E0238
LDR             R8, =off_6D1648
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19B8D4
LDR             R11, =0x20034
VLDR            S20, =0.0
VLDR            S22, =1.0
MOV             R4, #0
ADD             R10, SP, #0x80+var_74
ADD             R9, SP, #0x80+var_50
ADD             R5, R6, R4,LSL#2
LDR             R0, [R5,#0x120]
CMP             R0, #0
MOVNE           R1, #0
STRNE           R1, [R0,#0x180]
LDR             R0, [R9,R4,LSL#2]
CMP             R0, #0
BEQ             loc_1E1214
ADD             R2, R4, R4,LSL#1
ADD             R0, R0, #0xE4
ADD             R1, R10, R2,LSL#2
VLDM            R0!, {S5}
VLDR            S1, [R1]
VLDR            S0, [R1,#4]
VLDR            S2, [R1,#8]
VADD.F32        S1, S1, S5
VLDM            R0, {S3-S4}
ADD             R7, R6, R2,LSL#2
VADD.F32        S0, S0, S3
VADD.F32        S2, S2, S4
VSTR            S1, [R7,#0x150]
VSTR            S0, [R7,#0x154]
VSTR            S2, [R7,#0x158]
VSTR            S1, [SP,#0x80+var_80]
VSTR            S0, [SP,#0x80+var_7C]
VSTR            S2, [SP,#0x80+var_78]
LDR             R0, [R8]
LDR             R1, [R0,#0xC4]
LDR             R1, [R1,#4]
LDR             R1, [R1,#4]
ADD             R1, R1, #0x108
VLDM            R1, {S16-S17}
LDR             R0, [R0,#0xBC]
VMOV.F32        S0, S22
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19B970
VLDR            S0, [R0]
VLDR            S2, [R0,#4]
VLDR            S1, [R0,#8]
LDMFD           SP, {R1,R2}
VADD.F32        S0, S16, S0
VADD.F32        S2, S17, S2
VADD.F32        S1, S20, S1
LDR             R0, [SP,#0x80+var_78]
VMOV            S5, R1
VMOV            S4, R2
VMOV            S3, R0
STR             R0, [R7,#0x134]
ADD             R7, R7, #0x12C
CMP             R4, #0
VSUB.F32        S16, S0, S5
VSUB.F32        S17, S2, S4
VSUB.F32        S18, S1, S3
STM             R7, {R1,R2}
BNE             loc_1E11DC
LDR             R0, [R8]
VLDR            S19, [SP,#0x80+var_7C]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x28]
LDR             R0, [R8]
VSUB.F32        S21, S19, S0
VLDR            S19, [SP,#0x80+var_80]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VMOV.F32        S1, S21
MOV             R2, #0
VSUB.F32        S0, S19, S0
MOV             R1, R2
MOV             R0, R11
BL              sub_1459F8
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R9,R4,LSL#2]
MOV             R3, #1
MOV             R2, SP
ADD             R1, R1, #0x100
LDRH            R1, [R1,#0x1E]
BL              sub_168114
STR             R0, [R5,#0x120]
ADD             R0, R0, #0x134
ADD             R1, R5, #0x120
VSTM            R0, {S16-S18}
LDR             R0, [R5,#0x120]
STR             R1, [R0,#0x180]
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_1E10C0
LDR             R1, =dword_68A4E4
ADD             R6, R6, #0x178
LDRD            R0, R1, [R1,#(off_68A54C - 0x68A4E4)]
STM             R6, {R0,R1}
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D11}
POP             {R4-R11,PC}
