PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6D1648
MOV             R5, #0
VPUSH           {D8-D9}
SUB             SP, SP, #0x10
LDR             R0, [R0,#0x120]
VLDR            S16, =0.0
TST             R0, #8
BNE             loc_234F4C
MOV             R1, R6
LDR             R0, [R4,#0x10C]
LDR             R1, [R1]
CMP             R0, #0
BEQ             loc_234F28
LDR             R0, [R0,#4]
CMP             R0, #0x3100
BLT             loc_234F58
MOV             R0, R1
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
BL              sub_19AD54
LDR             R0, [R4,#0x120]
ORR             R0, R0, #8
STR             R0, [R4,#0x120]
LDR             R0, [R4,#0x10C]
CMP             R0, #0
BEQ             loc_235038
LDR             R0, [R4,#0x10C]
LDR             R0, [R0,#4]
RSB             R0, R0, #0x3100
MOV             R5, R0,ASR#8
LDR             R0, [R6]
CMP             R5, #0
MOVLE           R5, #1
LDR             R1, [R0,#0xC4]
LDR             R1, [R1,#4]
LDR             R1, [R1,#4]
ADD             R1, R1, #0x108
VLDM            R1, {S17-S18}
LDR             R0, [R0,#0xBC]
VMOV            S0, R5
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
VCVT.F32.S32    S0, S0
BL              sub_19B970
VLDM            R0, {S0-S2}
ADD             R0, R4, #0xF0
VLDM            R0, {S3-S5}
VADD.F32        S0, S17, S0
VADD.F32        S2, S16, S2
VADD.F32        S1, S18, S1
LDR             R0, [R4,#0x10C]
ADD             R4, R4, #0xF0
ADD             R0, R0, #0x134
VSUB.F32        S0, S0, S3
VSUB.F32        S2, S2, S5
VSUB.F32        S1, S1, S4
VSTM            R0, {S0-S2}
VLDM            R4, {S3-S5}
VADD.F32        S0, S0, S3
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S4
VSTMEA          SP, {S0-S2}
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R1, [R1,#0x80]
BLX             R1
CMP             R0, #0
BNE             loc_23502C
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x6C]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R6,PC}
LDR             R0, [R4,#0x120]
VMOV.F32        S0, S16
MOV             R2, #0
BIC             R0, R0, #4
STR             R0, [R4,#0x120]
LDR             R0, =0x500A
MOV             R1, R2
BL              sub_145730
LDR             R0, [R6]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
BL              loc_19AFEC
LDR             R0, [R4,#0x120]
BIC             R0, R0, #8
STR             R0, [R4,#0x120]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
LDR             R1, =dword_68BC10
ADD             R0, R0, #0x15000
STR             R5, [R0,#0x1CC]
LDRD            R0, R1, [R1,#(dword_68BC48 - 0x68BC10)]
STRD            R0, R1, [R4,#4]
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R6,PC}
