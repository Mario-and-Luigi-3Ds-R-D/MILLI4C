PUSH            {R4,LR}
LDR             R4, =off_6D1648
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R1, [R0,#4]
LDR             R2, [R4]
VLDR            S3, [R0,#0x7C]
ADD             R1, R1, #0x108
VLDR            S0, [R0,#0x80]
VLDM            R1, {S1-S2}
LDR             R1, [R2,#0xC4]
VADD.F32        S5, S1, S3
VADD.F32        S7, S2, S0
LDR             R1, [R1,#4]
LDR             R1, [R1,#4]
ADD             R3, R1, #0x108
VLDM            R3, {S0-S2}
VSTMEA          SP, {S0-S2}
VLDR            S0, =0.0
LDRB            R3, [R0,#0x9C]
VMOV.F32        S1, S0
VMOV.F32        S2, S0
VMOV.F32        S3, S0
CMP             R3, #0
BEQ             loc_236A48
CMP             R3, #1
BEQ             loc_236A60
CMP             R3, #2
BEQ             loc_236A7C
CMP             R3, #3
BNE             loc_236AB0
B               loc_236A9C
ADD             R3, R1, #0x400
VLDR            S2, [R3,#0x234]
ADD             R3, R1, #0x400
ADD             R3, R3, #0x224
VLDM            R3, {S0-S1}
B               loc_236AB0
ADD             R3, R1, #0x400
VLDR            S1, [R3,#0x234]
ADD             R3, R1, #0x400
ADD             R3, R3, #0x224
VLDM            R3, {S2-S3}
VNEG.F32        S2, S2
B               loc_236A94
ADD             R3, R1, #0x400
VLDR            S0, [R3,#0x228]
VLDR            S1, [R3,#0x224]
VLDR            S3, [R3,#0x234]
VNEG.F32        S0, S0
VNEG.F32        S1, S1
VNEG.F32        S3, S3
B               loc_236AB0
ADD             R3, R1, #0x400
VLDR            S0, [R3,#0x234]
VLDR            S2, [R3,#0x228]
VLDR            S3, [R3,#0x224]
VNEG.F32        S0, S0
VLDR            S8, [R1,#0x10C]
VLDR            S4, [R1,#0x108]
ADD             R3, R0, #0xB8
VMOV.F32        S6, S8
VADD.F32        S10, S4, S1
VADD.F32        S11, S4, S0
VLDR            S4, [R0,#0xB0]
VADD.F32        S8, S8, S2
VLDM            R3, {S15-S16}
VADD.F32        S9, S6, S3
VLDR            S6, [R0,#0xB4]
VADD.F32        S4, S4, S5
VLDR            S12, =0.5
VADD.F32        S6, S6, S5
VADD.F32        S5, S15, S7
VADD.F32        S7, S16, S7
VADD.F32        S14, S11, S10
VADD.F32        S13, S8, S9
VADD.F32        S15, S4, S6
VCMPE.F32       S11, S6
VADD.F32        S16, S5, S7
VMUL.F32        S14, S14, S12
VMUL.F32        S13, S13, S12
VMUL.F32        S15, S15, S12
VMUL.F32        S12, S16, S12
VMRS            APSR_nzcv, FPSCR
BGT             loc_236B98
VCMPE.F32       S10, S4
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S8, S7
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_236B98
VCMPE.F32       S9, S5
VMRS            APSR_nzcv, FPSCR
BGT             loc_236B98
LDRB            R0, [R0,#0x9C]
CMP             R0, #0
BEQ             loc_236BA4
CMP             R0, #2
BEQ             loc_236BA4
VCMPE.F32       S9, S5
VMRS            APSR_nzcv, FPSCR
BHI             loc_236B98
VCMPE.F32       S8, S7
VMRS            APSR_nzcv, FPSCR
BLT             loc_236B98
VCMPE.F32       S13, S12
VMRS            APSR_nzcv, FPSCR
BCS             loc_236C50
VSUB.F32        S0, S7, S2
MOV             R1, SP
VSTR            S0, [SP,#0x20+var_1C]
LDR             R0, [R2,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0]
LDR             R2, [R2,#0x6C]
BLX             R2
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
VCMPE.F32       S11, S6
VMRS            APSR_nzcv, FPSCR
BHI             loc_236B98
VCMPE.F32       S10, S4
VMRS            APSR_nzcv, FPSCR
BLT             loc_236B98
VCMPE.F32       S14, S15
VMRS            APSR_nzcv, FPSCR
BCS             loc_236BF0
VSUB.F32        S0, S4, S1
MOV             R1, SP
VSTR            S0, [SP,#0x20+var_20]
LDR             R0, [R2,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0]
LDR             R2, [R2,#0x6C]
BLX             R2
B               loc_236C14
VSUB.F32        S0, S6, S0
MOV             R1, SP
VSTR            S0, [SP,#0x20+var_20]
LDR             R0, [R2,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0]
LDR             R2, [R2,#0x6C]
BLX             R2
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
NOP
NOP
BL              sub_5C6058
CMP             R0, #0
NOP
BEQ             loc_236B98
LDR             R0, [R4]
BL              sub_1E4604
LDR             R1, [SP,#0x20+var_20]
STR             R1, [R0,#0x108]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
VSUB.F32        S0, S5, S3
MOV             R1, SP
VSTR            S0, [SP,#0x20+var_1C]
LDR             R0, [R2,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0]
LDR             R2, [R2,#0x6C]
BLX             R2
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
