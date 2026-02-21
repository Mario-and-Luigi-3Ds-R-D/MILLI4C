PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
VPUSH           {D8-D9}
SUB             SP, SP, #0x10
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #0
BL              sub_19AD54
LDR             R0, [R4,#0x120]
ORR             R0, R0, #1
STR             R0, [R4,#0x120]
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
VLDR            S19, =1.0
STR             R4, [R0,#0x1CC]
LDR             R0, [R4,#0x120]
VMOV.F32        S0, S19
MOV             R2, #0
ORR             R0, R0, #4
STR             R0, [R4,#0x120]
LDR             R0, =0x500A
MOV             R1, R2
BL              sub_145730
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #0
BL              loc_19AFEC
LDR             R0, [R4,#0x10C]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_234D10
BL              sub_533330
STR             R6, [R4,#0x10C]
LDR             R0, [R5]
LDR             R1, [R0,#0xC4]
LDR             R1, [R1,#4]
LDR             R3, [R1,#8]
ADD             R3, R3, #0x108
LDM             R3, {R1-R3}
STMEA           SP, {R1-R3}
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19B8D4
LDR             R0, [R5]
VLDR            S16, =0.0
LDR             R1, [R0,#0xC4]
LDR             R1, [R1,#4]
LDR             R1, [R1,#4]
ADD             R1, R1, #0x108
VLDM            R1, {S17-S18}
LDR             R0, [R0,#0xBC]
VMOV.F32        S0, S19
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19B970
VLDM            R0, {S1-S2}
VLDR            S0, [R0,#8]
VLDR            S5, [SP,#0x30+var_30]
VLDR            S4, [SP,#0x30+var_2C]
VADD.F32        S1, S17, S1
VADD.F32        S2, S18, S2
VADD.F32        S0, S16, S0
VLDR            S3, [SP,#0x30+var_28]
VMOV            R1, S4
VMOV            R2, S3
ADD             R0, R4, #0xF4
VSTR            S5, [R4,#0xF0]
STM             R0, {R1,R2}
MOV             R0, R4
VSUB.F32        S16, S1, S5
VSUB.F32        S17, S2, S4
VSUB.F32        S18, S0, S3
VLDR            S0, [SP,#0x30+var_2C]
BL              sub_1F3BF4
VMOV.F32        S19, S0
VLDR            S0, [SP,#0x30+var_30]
MOV             R0, R4
BL              sub_1F3BC8
VMOV.F32        S1, S19
MOV             R2, #0
LDR             R0, =0x20032
MOV             R1, R2
BL              sub_1459F8
LDR             R0, [R5]
NOP
LDR             R0, [R0,#0xBC]
MOV             R3, #1
MOV             R2, SP
MOV             R1, #0x2D ; '-'
BL              sub_168114
STR             R0, [R4,#0x10C]
ADD             R0, R0, #0x134
ADD             R1, R4, #0x10C
VSTM            R0, {S16-S18}
LDR             R0, [R4,#0x10C]
STR             R1, [R0,#0x180]
LDR             R1, =dword_68BC10
LDRD            R0, R1, [R1,#(off_68BC50 - 0x68BC10)]
STRD            R0, R1, [R4,#4]
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R6,PC}
