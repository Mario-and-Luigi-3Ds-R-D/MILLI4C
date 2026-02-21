PUSH            {R4-R11,LR}
MOV             R6, R2
MOV             R7, R0
MOV             R8, R1
MOV             R4, #0
LDR             R10, =0x20032
LDR             R9, =off_6D1648
VPUSH           {D8-D10}
SUB             SP, SP, #0xC
ORR             R11, R10, R10,ASR#17
ADD             R5, R7, R4,LSL#2
LDR             R0, [R5,#0x120]
CMP             R0, #0
MOVNE           R1, #0
STRNE           R1, [R0,#0x180]
LDR             R0, [R6,R4,LSL#2]
CMP             R0, #0
BEQ             loc_1E0DD0
LDR             R0, [R9]
BL              sub_1E4604
LDR             R3, [R0,#0x108]!
ADD             R12, SP, #0x48+var_44
LDMIB           R0, {R1,R2}
ADD             R0, R4, R4,LSL#1
STR             R3, [SP,#0x48+var_48]
ADD             R3, R8, R0,LSL#2
STM             R12, {R1,R2}
ADD             R0, R7, R0,LSL#2
LDR             R2, [R6,R4,LSL#2]
CMP             R4, #0
VLDM            R3!, {S0}
ADD             R2, R2, #0xE4
VLDM            R3, {S2-S3}
VLDR            S5, [R2]
VLDR            S1, [R2,#4]
VLDR            S4, [R2,#8]
VADD.F32        S0, S0, S5
VADD.F32        S2, S2, S1
VADD.F32        S1, S3, S4
VSTR            S0, [R0,#0x150]
VSTR            S2, [R0,#0x154]
VSTR            S1, [R0,#0x158]
LDMFD           SP, {R1-R3}
VLDR            S5, [R0,#0x150]
VMOV            S1, R1
VMOV            S4, R2
VMOV            S3, R3
VLDR            S0, [R0,#0x154]
VLDR            S2, [R0,#0x158]
ADD             R0, R0, #0x12C
VSUB.F32        S16, S5, S1
VSUB.F32        S17, S0, S4
VSUB.F32        S18, S2, S3
STM             R0, {R1-R3}
LDR             R0, [R9]
BEQ             loc_1E0DF8
LDR             R0, [R0,#0xBC]
MOV             R3, #1
MOV             R2, SP
MOV             R1, #0xEA
BL              sub_168114
STR             R0, [R5,#0x120]
LDR             R0, [R5,#0x120]
ADD             R0, R0, #0x134
VSTM            R0, {S16-S18}
LDR             R0, [R5,#0x120]!
MOV             R1, R5
STR             R1, [R0,#0x180]
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_1E0CE8
LDR             R1, =dword_68A4E4
ADD             R7, R7, #0x178
LDRD            R0, R1, [R1,#(off_68A544 - 0x68A4E4)]
STM             R7, {R0,R1}
ADD             SP, SP, #0xC
VPOP            {D8-D10}
POP             {R4-R11,PC}
NOP
LDR             R0, [R0,#0xBC]
MOV             R12, R0
LDR             R0, [R6]
MOV             R3, #1
MOV             R2, SP
ADD             R0, R0, #0x100
LDRH            R1, [R0,#0x1C]
MOV             R0, R12
BL              sub_168114
STR             R0, [R7,#0x120]
LDR             R0, [R9]
VLDR            S19, [SP,#0x48+var_44]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x28]
LDR             R0, [R9]
VSUB.F32        S20, S19, S0
VLDR            S19, [SP,#0x48+var_48]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VMOV.F32        S1, S20
MOV             R2, #0
VSUB.F32        S0, S19, S0
MOV             R1, R2
MOV             R0, R10
BL              sub_1459F8
LDR             R0, [R6]
ADD             R0, R0, #0x100
LDRH            R0, [R0,#0x1C]
CMP             R0, #0x13
BNE             loc_1E0DB8
LDR             R0, [R9]
VLDR            S19, [SP,#0x48+var_44]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x28]
LDR             R0, [R9]
VSUB.F32        S20, S19, S0
VLDR            S19, [SP,#0x48+var_48]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VMOV.F32        S1, S20
MOV             R2, #0
VSUB.F32        S0, S19, S0
MOV             R1, R2
MOV             R0, R11
BL              sub_1459F8
NOP
NOP
B               loc_1E0DB8
