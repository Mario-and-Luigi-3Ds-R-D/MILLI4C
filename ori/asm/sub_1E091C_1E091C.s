PUSH            {R4-R7,LR}
MOV             R7, R0
LDR             R4, =off_6D1648
VPUSH           {D8-D10}
SUB             SP, SP, #0xC
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
MOV             R6, R0
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R5, R0, #0x24 ; '$'
LDR             R0, [R4]
VLDR            S16, =3.4028e38
VLDM            R5, {S17-S18}
LDR             R0, [R0,#0xBC]
VLDR            S0, [R6,#0xA0]
VLDR            S1, =0.5
ADD             R4, R0, #0x15000
ADD             R4, R4, #0x13C
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
ADD             R1, SP, #0x38+var_34
MOV             R0, SP
VMUL.F32        S0, S0, S1
BL              sub_462B20
VLDMEA          SP, {S1-S2}
ADD             R0, R5, #4
VLDR            S3, [R6,#0x94]
VDIV.F32        S0, S1, S2
VLDM            R0, {S1-S2}
MOV             R0, #0x400
VADD.F32        S2, S2, S3
VMUL.F32        S20, S0, S2
VSUB.F32        S19, S1, S20
BL              sub_485BDC
VMUL.F32        S0, S0, S20
VLDR            S1, [R5]
VLDR            S3, [R5,#4]
MOV             R0, #0
VMOV.F32        S2, S1
VADD.F32        S4, S20, S3
MOV             R1, R0
STR             R0, [R7,#0xA8]
VADD.F32        S3, S0, S2
VSUB.F32        S2, S1, S0
ADD             R0, R4, R1,LSL#2
LDR             R0, [R0,#0x10]
CMP             R0, #0
BEQ             loc_1E0A8C
LDRB            R2, [R0,#0xB4]
CMP             R2, #7
BNE             loc_1E0A80
LDR             R2, [R0,#0x190]
CMP             R2, #0
BEQ             loc_1E0A58
MOV             R3, R2
ADD             R12, R2, #0x400
VLDR            S5, [R2,#0x10C]
MOV             R5, R2
ADD             R2, R2, #0x400
VLDR            S0, [R3,#0x108]
VLDR            S6, [R2,#0x228]
VLDR            S8, [R12,#0x234]
VLDR            S7, [R2,#0x224]
VADD.F32        S6, S0, S6
VADD.F32        S5, S5, S8
VADD.F32        S0, S0, S7
VLDR            S1, [R5,#0x10C]
VCMPE.F32       S2, S6
VMRS            APSR_nzcv, FPSCR
BGT             loc_1E0A80
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S4, S1
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_1E0A80
VCMPE.F32       S19, S5
VMRS            APSR_nzcv, FPSCR
BGT             loc_1E0A80
ADD             R2, R0, #0x18
VLDM            R2, {S0-S1}
VSUB.F32        S0, S17, S0
VSUB.F32        S1, S18, S1
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S1, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S16, S0
STRCC           R0, [R7,#0xA8]
ADD             R1, R1, #1
CMP             R1, #0x20 ; ' '
BLT             loc_1E09D0
ADD             SP, SP, #0xC
VPOP            {D8-D10}
POP             {R4-R7,PC}
