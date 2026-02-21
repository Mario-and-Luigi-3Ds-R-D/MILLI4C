PUSH            {R4-R10,LR}
MOV             R6, R1
MOV             R7, R0
MOV             R4, #0
LDR             R9, =0x20032
LDR             R8, =off_6D1648
VPUSH           {D8-D10}
SUB             SP, SP, #0x10
ORR             R10, R9, R9,ASR#17
ADD             R5, R7, R4,LSL#2
LDR             R0, [R5,#0x4C]
CMP             R0, #0
MOVNE           R1, #0
STRNE           R1, [R0,#0x180]
LDR             R0, [R6,R4,LSL#2]
CMP             R0, #0
BEQ             loc_1F5B54
LDR             R0, [R8]
BL              sub_1E4604
ADD             R1, R0, #0x108
LDR             R0, [R0,#0x110]
LDM             R1, {R1,R2}
ADD             R3, R4, R4,LSL#1
STR             R0, [SP,#0x48+var_40]
STR             R1, [SP,#0x48+var_48]
STR             R2, [SP,#0x48+var_44]
LDR             R0, [R6,R4,LSL#2]
ADD             R1, R7, R3,LSL#2
ADD             R3, R1, #0x7C ; '|'
ADD             R2, R0, #0x18
ADD             R0, R0, #0xE4
VLDR            S5, [R2]
VLDR            S1, [R0]
VLDR            S4, [R2,#4]
VLDR            S0, [R0,#4]
VLDR            S2, [R2,#8]
VLDR            S3, [R0,#8]
VADD.F32        S1, S5, S1
VADD.F32        S0, S4, S0
VADD.F32        S2, S2, S3
CMP             R4, #0
VSTR            S1, [R1,#0x7C]
VSTR            S0, [R1,#0x80]
VSTR            S2, [R1,#0x84]
VLDR            S0, [R3,#4]
VLDR            S3, [R3,#8]
LDMFD           SP, {R0,R2,R3}
VLDR            S2, [R1,#0x7C]
VMOV            S5, R0
VMOV            S1, R2
VMOV            S4, R3
ADD             R1, R1, #0x58 ; 'X'
STM             R1, {R0,R2,R3}
VSUB.F32        S16, S2, S5
VSUB.F32        S17, S0, S1
VSUB.F32        S18, S3, S4
LDR             R0, [R8]
BEQ             loc_1F5B78
LDR             R0, [R0,#0xBC]
MOV             R3, #1
MOV             R2, SP
MOV             R1, #0xEA
BL              sub_168114
STR             R0, [R5,#0x4C]
LDR             R0, [R5,#0x4C]
ADD             R1, R5, #0x4C ; 'L'
ADD             R0, R0, #0x134
VSTM            R0, {S16-S18}
LDR             R0, [R5,#0x4C]
STR             R1, [R0,#0x180]
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_1F5A60
LDR             R1, =off_68BB50
LDRD            R0, R1, [R1,#(off_68BB98 - 0x68BB50)]
STRD            R0, R1, [R7,#0xA4]
ADD             SP, SP, #0x10
VPOP            {D8-D10}
POP             {R4-R10,PC}
NOP
LDR             R0, [R0,#0xBC]
LDR             R1, [R6]
MOV             R3, #1
MOV             R2, SP
ADD             R1, R1, #0x100
LDRH            R1, [R1,#0x1C]
BL              sub_168114
STR             R0, [R7,#0x4C]
LDR             R0, [R8]
VLDR            S19, [SP,#0x48+var_44]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x28]
LDR             R0, [R8]
VSUB.F32        S20, S19, S0
VLDR            S19, [SP,#0x48+var_48]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VMOV.F32        S1, S20
MOV             R2, #0
VSUB.F32        S0, S19, S0
MOV             R1, R2
MOV             R0, R9
BL              sub_1459F8
LDR             R0, [R6]
ADD             R0, R0, #0x100
LDRH            R0, [R0,#0x1C]
CMP             R0, #0x13
BNE             loc_1F5B3C
LDR             R0, [R8]
VLDR            S19, [SP,#0x48+var_44]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x28]
LDR             R0, [R8]
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
NOP
NOP
B               loc_1F5B3C
