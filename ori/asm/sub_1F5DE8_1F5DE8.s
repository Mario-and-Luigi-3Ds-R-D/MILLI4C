PUSH            {R4-R10,LR}
MOV             R6, R0
VPUSH           {D8-D11}
SUB             SP, SP, #0x18
ADD             R1, SP, #0x58+var_4C
BL              sub_1F554C
LDR             R8, =off_6D1648
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19B8D4
LDR             R10, =0x20034
VLDR            S20, =0.0
VLDR            S22, =1.0
MOV             R4, #0
ADD             R9, SP, #0x58+var_4C
ADD             R5, R6, R4,LSL#2
LDR             R0, [R5,#0x4C]
CMP             R0, #0
MOVNE           R1, #0
STRNE           R1, [R0,#0x180]
LDR             R1, [R9,R4,LSL#2]
CMP             R1, #0
BEQ             loc_1F5F70
ADD             R0, R1, #0x18
ADD             R1, R1, #0xE4
VLDR            S0, [R0,#8]
VLDM            R1, {S3-S5}
VLDM            R0, {S1-S2}
ADD             R0, R4, R4,LSL#1
VADD.F32        S0, S0, S5
ADD             R7, R6, R0,LSL#2
VADD.F32        S1, S1, S3
VADD.F32        S2, S2, S4
ADD             R0, R7, #0x7C ; '|'
VSTR            S0, [R7,#0x84]
VSTM            R0, {S1-S2}
VSTR            S0, [SP,#0x58+var_50]
VSTMEA          SP, {S1-S2}
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
VLDM            R0!, {S2}
LDMFD           SP, {R1,R2}
CMP             R4, #0
VLDM            R0, {S0-S1}
VADD.F32        S2, S16, S2
LDR             R0, [SP,#0x58+var_50]
VMOV            S5, R1
VADD.F32        S0, S17, S0
VADD.F32        S1, S20, S1
VMOV            S4, R2
VMOV            S3, R0
STR             R0, [R7,#0x60]
ADD             R7, R7, #0x58 ; 'X'
VSUB.F32        S16, S2, S5
STM             R7, {R1,R2}
VSUB.F32        S17, S0, S4
VSUB.F32        S18, S1, S3
BNE             loc_1F5F38
LDR             R0, [R8]
VLDR            S19, [SP,#0x58+var_54]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x28]
LDR             R0, [R8]
VSUB.F32        S21, S19, S0
VLDR            S19, [SP,#0x58+var_58]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VMOV.F32        S1, S21
MOV             R2, #0
VSUB.F32        S0, S19, S0
MOV             R1, R2
MOV             R0, R10
BL              sub_1459F8
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R9,R4,LSL#2]
MOV             R3, #1
MOV             R2, SP
ADD             R1, R1, #0x100
LDRH            R1, [R1,#0x1E]
BL              sub_168114
STR             R0, [R5,#0x4C]
ADD             R0, R0, #0x134
ADD             R1, R5, #0x4C ; 'L'
VSTM            R0, {S16-S18}
LDR             R0, [R5,#0x4C]
STR             R1, [R0,#0x180]
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_1F5E2C
LDR             R1, =off_68BB50
LDRD            R0, R1, [R1,#(off_68BBA0 - 0x68BB50)]
STRD            R0, R1, [R6,#0xA4]
ADD             SP, SP, #0x18
VPOP            {D8-D11}
POP             {R4-R10,PC}
