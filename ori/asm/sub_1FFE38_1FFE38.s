PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x10
LDR             R0, [R0,#0x10C]
CMP             R0, #0
BEQ             loc_1FFF70
LDR             R0, [R0,#4]
LDR             R6, =off_6D1648
RSB             R0, R0, #0x3100
MOV             R5, R0,ASR#8
LDR             R0, [R4,#0x120]
CMP             R5, #0
MOVLE           R5, #1
TST             R0, #8
LDR             R0, [R6]
BEQ             loc_1FFEA8
ADD             R1, R4, #0xF0
LDR             R0, [R0,#0xC4]
VLDM            R1, {S3-S5}
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
ADD             R0, R0, #0x108
VLDM            R0, {S0-S2}
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S4
VSUB.F32        S2, S2, S5
B               loc_1FFEFC
LDR             R1, [R0,#0xC4]
VLDR            S18, =0.0
LDR             R1, [R1,#4]
LDR             R1, [R1,#4]
ADD             R1, R1, #0x108
VLDM            R1, {S16-S17}
LDR             R0, [R0,#0xBC]
VMOV            S0, R5
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
VCVT.F32.S32    S0, S0
BL              sub_19B970
VLDM            R0, {S0-S2}
ADD             R1, R4, #0xF0
VLDM            R1, {S3-S5}
VADD.F32        S0, S16, S0
VADD.F32        S1, S17, S1
VADD.F32        S2, S18, S2
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S4
VSUB.F32        S2, S2, S5
LDR             R0, [R4,#0x10C]
ADD             R4, R4, #0xF0
ADD             R0, R0, #0x134
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
BNE             loc_1FFF64
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
LDR             R1, =dword_68BC10
LDRD            R0, R1, [R1,#(dword_68BC30 - 0x68BC10)]
STRD            R0, R1, [R4,#0xFC]
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R6,PC}
