PUSH            {R0-R2,R4-R11,LR}
MOV             R4, R0
VPUSH           {D8-D10}
SUB             SP, SP, #0xA8
LDRSB           R0, [R0,#0xF6]
CMP             R0, #0
BLE             loc_14AE68
LDRB            R1, [R4,#0xF2]
CMP             R1, #0
BEQ             loc_14AE68
RSB             R2, R0, R0,LSL#3
LDR             R0, =flt_6E2A58
LDR             R8, =flt_6E2A58
LDR             R1, =off_6CE970
ADD             R12, R0, R2,LSL#2
VLDR            S20, =1.0
VLDR            S1, [R8,#(flt_6E2A60 - 0x6E2A58)]
LDR             R1, [R1]
VLDR            S0, [R8,#(flt_6E2E48 - 0x6E2A58)]
LDR             R3, =0x10C7AC
LDRH            R2, [R0,#(word_6E2A5C - 0x6E2A58)]
VLDR            S16, [R0]
LDR             R0, =dword_6D2418
VSUB.F32        S18, S20, S1
VSUB.F32        S19, S20, S0
ADD             R5, R12, #0x400
ADD             R7, R1, R3; loc_10C7AC
AND             R10, R2, #0xFF
LDR             R2, [R0]
LDRH            R12, [R8,#(word_6E2A5E - 0x6E2A58)]
LDRH            R3, [R8,#(word_6E2A5C - 0x6E2A58)]
LDRB            R0, [R4,#0xF7]
ADD             R6, R1, #0x10C000
VLDR            S21, =0.0
AND             R1, R12, #0xFF
AND             R3, R3, #0xFF
CMP             R0, #0
ADD             R5, R5, #0x34 ; '4'
ADD             R6, R6, #0x7A0
ADD             R8, R8, #0x400
ADD             R9, R4, #0x88
SUB             R11, R1, R3
STR             R2, [SP,#0xF0+var_D8]
BEQ             loc_14AE78
CMP             R0, #1
BNE             loc_14AE68
LDR             R0, [R4]
MOV             R2, #1
ADD             R1, SP, #0xF0+var_BC
LDR             R3, [R0,#0x24]
MOV             R0, R4
BLX             R3
LDR             R0, =off_6CE970
VLDR            S0, =-1.0
VLDR            S8, [SP,#0xF0+var_B4]
VLDR            S5, [SP,#0xF0+var_B8]
LDR             R0, [R0]
VLDR            S6, =3000.0
VLDR            S7, =6000.0
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x590
VLDM            R0!, {S3}
VLDM            R0, {S1-S2}
VMUL.F32        S3, S3, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S2, S8
VMUL.F32        S8, S8, S8
VMUL.F32        S4, S2, S2
VMLA.F32        S0, S1, S5
VMLA.F32        S8, S5, S5
VMLA.F32        S4, S1, S1
VMLA.F32        S0, S1, S6
VMLA.F32        S8, S5, S7
VMUL.F32        S5, S0, S0
VMLS.F32        S5, S4, S8
VCMPE.F32       S5, S21
VMRS            APSR_nzcv, FPSCR
BCC             loc_14AE68
VSQRT.F32       S6, S5
VNEG.F32        S7, S0
VLDR            S5, =0.5
ADD             R3, SP, #0xF0+var_BC
LDM             R3, {R0-R2}
VSUB.F32        S0, S6, S0
VSUB.F32        S7, S7, S6
ADD             R3, SP, #0xF0+var_EC
VDIV.F32        S6, S0, S4
VDIV.F32        S0, S7, S4
VADD.F32        S4, S6, S5
VADD.F32        S0, S0, S5
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S4
VLDR            S4, [R4,#0x3C]
STM             R3, {R0-R2}
VSUB.F32        S0, S0, S4
VMOV            S4, R1
ADD             R1, SP, #0xF0+var_EC
VMUL.F32        S1, S1, S0
VMUL.F32        S3, S3, S0
VMUL.F32        S0, S2, S0
VMOV            S2, R0
ADD             R0, SP, #0xF0+var_5C
VADD.F32        S4, S4, S1
VADD.F32        S1, S2, S3
VMOV            S2, R2
VADD.F32        S0, S2, S0
VSTR            S4, [SP,#0xF0+var_E8]
VSTR            S0, [SP,#0xF0+var_E4]
VLDR            S2, [R4,#0x74]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0xF0+var_EC]
VLDR            S1, [R4,#0x94]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xF0+var_E4]
BL              sub_480160
ADD             R2, SP, #0xF0+var_5C
MOV             R1, #0
ADD             R0, SP, #0xF0+var_C8
BL              sub_47EE74
VLDR            S5, [R7]
VLDR            S4, [SP,#0xF0+var_C8]
VLDR            S1, [R7,#(loc_10C7B0 - 0x10C7AC)]
VLDR            S0, [SP,#0xF0+var_C4]
VMUL.F32        S17, S4, S5
VLDR            S3, [R7,#(loc_10C7B4 - 0x10C7AC)]
VLDR            S2, [SP,#0xF0+var_C0]
LDR             R0, =flt_6E2A58
VLDR            S4, [R0,#(flt_6E2E3C - 0x6E2A58)]
VMLA.F32        S17, S0, S1
VMLA.F32        S17, S2, S3
VCMPE.F32       S4, S17
VMRS            APSR_nzcv, FPSCR
BGE             loc_14AE68
VLDR            S1, [R4,#0x74]
VLDR            S3, [SP,#0xF0+var_BC]
VLDR            S2, [R4,#0x84]
VLDR            S0, [R4,#0x94]
VADD.F32        S3, S3, S1
VSTR            S3, [SP,#0xF0+var_BC]
VLDR            S1, [SP,#0xF0+var_B8]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0xF0+var_B8]
VLDR            S2, [SP,#0xF0+var_B4]
VADD.F32        S4, S2, S0
VSTR            S4, [SP,#0xF0+var_B4]
VLDR            S0, [SP,#0xF0+var_EC]
VLDR            S2, [SP,#0xF0+var_E8]
VLDR            S5, [SP,#0xF0+var_E4]
VSUB.F32        S0, S3, S0
VSUB.F32        S2, S1, S2
VSUB.F32        S1, S4, S5
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VSQRT.F32       S1, S0
VMOV.F32        S0, S1
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
VMOV            S2, R10
VMOVCC.F32      S0, S16
VCVT.F32.U32    S2, S2
VDIV.F32        S1, S0, S16
VMOV            S0, R11
VSUB.F32        S4, S20, S1
VCVT.F32.S32    S3, S0
VMOV.F32        S0, S20
VMLS.F32        S0, S1, S18
VMLA.F32        S2, S4, S3
VSTR            S0, [SP,#0xF0+var_A0]
VSTR            S0, [SP,#0xF0+var_9C]
VSTR            S20, [SP,#0xF0+var_98]
VCVT.U32.F32    S1, S2
VMOV            R0, S1
VLDR            S1, [R4,#0x68]
AND             R7, R0, #0xFF
VMUL.F32        S1, S1, S1
ADD             R0, R4, #0x6C ; 'l'
VLDM            R0, {S2-S3}
ADD             R0, SP, #0xF0+var_B0
VMLA.F32        S1, S2, S2
VMLA.F32        S1, S3, S3
VSQRT.F32       S2, S1
VLDR            S1, [R4,#0x5C]
VMUL.F32        S1, S0, S1
VMUL.F32        S1, S2, S1
VSTR            S1, [SP,#0xF0+var_A0]
VLDR            S1, [R9]
VLDR            S3, [R9,#8]
VMUL.F32        S2, S1, S1
VLDR            S1, [R9,#4]
VMLA.F32        S2, S1, S1
VMLA.F32        S2, S3, S3
VSQRT.F32       S1, S2
VLDR            S2, [R4,#0x64]
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S1, S0
VSTR            S0, [SP,#0xF0+var_9C]
BL              sub_14B820
LDR             R0, [R4]
MOV             R2, #0
ADD             R1, SP, #0xF0+var_B0
LDR             R3, [R0,#0x44]
MOV             R0, R4
BLX             R3
LDRB            R0, [SP,#0xF0+var_B0+3]
LDRB            R1, [SP,#0xF0+var_A5]
VLDR            S0, [R8,#(flt_6E30BC - 0x6E2E58)]
SMULBB          R0, R0, R7
VCMPE.F32       S0, S17
ADD             R2, R0, R0,LSL#7
ADD             R0, R2, R0,LSL#15
VMRS            APSR_nzcv, FPSCR
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#24
SMULBB          R0, R1, R0
ADD             R1, R0, R0,LSL#7
ADD             R0, R1, R0,LSL#15
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#24
BLT             loc_14AD30
VLDR            S0, [R8,#(flt_6E30C0 - 0x6E2E58)]
LDR             R1, =flt_6E2A58
VMOV            S1, R0
VSUB.F32        S3, S17, S0
VLDR            S2, [R8,#(flt_6E30C8 - 0x6E2E58)]
VLDR            S0, [R1,#(flt_6E2E48 - 0x6E2A58)]
VCVT.F32.U32    S1, S1
VMUL.F32        S3, S3, S19
VMLA.F32        S0, S2, S3
VMUL.F32        S0, S1, S0
VCVT.U32.F32    S0, S0
VMOV            R0, S0
AND             R0, R0, #0xFF
SUB             R0, R0, #0x100
ADD             R2, SP, #0xF0+var_60
REV             R0, R0
MOV             R1, #0
STR             R0, [SP,#0xF0+var_60]
LDR             R0, [SP,#0xF0+var_2C]
BL              sub_12C9C4
LDR             R8, =off_6CE970
LDR             R0, [SP,#0xF0+var_2C]
ADD             R2, SP, #0xF0+var_A0
LDR             R1, [R8]
ADD             R7, R0, #0x20 ; ' '
MOV             R0, R7
ADD             R1, R1, #0x10C000
ADD             R1, R1, #0x550
BL              sub_14209C
LDR             R0, [SP,#0xF0+var_EC]
STR             R0, [R7,#0xC]
LDR             R0, [SP,#0xF0+var_E8]
STR             R0, [R7,#0x1C]
LDR             R0, [SP,#0xF0+var_E4]
B               loc_14ADB0
DCD off_6CE970
DCD flt_6E2A58
DCD 0x10C7AC
DCD dword_6D2418
DCFS 0.0
DCFS 1.0
DCFS -1.0
DCFS 3000.0
DCFS 6000.0
DCFS 0.5
STR             R0, [R7,#0x2C]
VLDR            S0, [R5]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLT             loc_14AE38
VLDR            S2, [R6]
VLDR            S11, [SP,#0xF0+var_C8]
VLDR            S8, [R5,#4]
VLDR            S5, [R6,#(loc_10C7A4 - 0x10C7A0)]
VMUL.F32        S2, S2, S11
VSUB.F32        S8, S17, S8
VLDR            S6, [SP,#0xF0+var_C4]
ADD             R0, R5, #0x14
VLDR            S7, [R5,#0x10]
VLDR            S3, [R6,#(loc_10C7A8 - 0x10C7A0)]
VLDR            S4, [SP,#0xF0+var_C0]
VLDR            S0, [R5,#8]
VMOV.F32        S1, S21
VLDM            R0, {S9-S10}
VMLA.F32        S2, S5, S6
VSUB.F32        S5, S7, S8
ADD             R0, SP, #0xF0+var_90
VMUL.F32        S9, S9, S10
VMLA.F32        S2, S3, S4
VMLA.F32        S0, S5, S9
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S2, S1
VNEGGT.F32      S0, S0
BL              sub_462C40
MOV             R1, R7
ADD             R2, SP, #0xF0+var_90
MOV             R0, R1
BL              sub_141F30
MOV             R0, #0
STR             R0, [SP,#0xF0+var_F0]
LDRSB           R1, [R4,#0xF6]
LDR             R2, [R8]
LDR             R0, =0x1219DC
ADD             R1, R2, R1,LSL#2
LDR             R2, [SP,#0xF0+var_D8]
LDR             R3, [R1,R0]
LDRD            R0, R1, [SP,#0xF0+var_2C]
BL              sub_136908
LDR             R1, =dword_6D2418
STR             R0, [R1]
ADD             SP, SP, #0xA8
VPOP            {D8-D10}
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
ADD             R0, SP, #0xF0+var_8C
MOV             R1, R0
STR             R0, [SP,#0xF0+var_B0]
MOV             R2, #1
MOV             R0, R4
BL              sub_5C4198
LDRB            R0, [R4,#0xF0]
CMP             R0, #0
BEQ             loc_14AEB0
CMP             R0, #1
BEQ             loc_14AEBC
CMP             R0, #2
BEQ             loc_14B1D0
B               loc_14AEBC
LDR             R1, [SP,#0xF0+var_B0]
MOV             R0, R1
BL              sub_480160
ADD             R2, SP, #0xF0+var_8C
MOV             R1, #0
ADD             R0, SP, #0xF0+var_C8
BL              sub_47EE74
VLDR            S5, [R7]
VLDR            S0, [SP,#0xF0+var_C8]
VLDR            S2, [R7,#(loc_10C7B0 - 0x10C7AC)]
VLDR            S1, [SP,#0xF0+var_C4]
VMUL.F32        S17, S0, S5
VLDR            S4, [R7,#(loc_10C7B4 - 0x10C7AC)]
VLDR            S3, [SP,#0xF0+var_C0]
LDR             R0, =flt_6E2A58
VLDR            S0, [R0,#(flt_6E2E3C - 0x6E2A58)]
VMLA.F32        S17, S1, S2
VMLA.F32        S17, S3, S4
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_14AE68
VLDR            S1, [R4,#0x3C]
VLDR            S0, [SP,#0xF0+var_8C]
VLDR            S2, [SP,#0xF0+var_84]
ADD             R2, SP, #0xF0+var_BC
ADD             R1, SP, #0xF0+var_BC
MOV             R0, R1
VSTM            R2, {S0-S2}
BL              sub_4800C0
VLDR            S1, [R4,#0x74]
VLDR            S0, [SP,#0xF0+var_BC]
MOV             R2, #1
ADD             R1, SP, #0xF0+var_EC
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xF0+var_BC]
VLDR            S1, [R4,#0x94]
VLDR            S0, [SP,#0xF0+var_B4]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xF0+var_B4]
LDR             R0, [R4]
LDR             R3, [R0,#0x24]
MOV             R0, R4
BLX             R3
VLDR            S0, [R4,#0x74]
VLDR            S3, [SP,#0xF0+var_EC]
VLDR            S1, [R4,#0x84]
VLDR            S2, [R4,#0x94]
VADD.F32        S0, S3, S0
VSTR            S0, [SP,#0xF0+var_EC]
VLDR            S3, [SP,#0xF0+var_E8]
VADD.F32        S1, S3, S1
VSTR            S1, [SP,#0xF0+var_E8]
VLDR            S3, [SP,#0xF0+var_E4]
VADD.F32        S3, S3, S2
VSTR            S3, [SP,#0xF0+var_E4]
VLDR            S5, [SP,#0xF0+var_BC]
VLDR            S2, [SP,#0xF0+var_B8]
VLDR            S4, [SP,#0xF0+var_B4]
VSUB.F32        S0, S0, S5
VSUB.F32        S2, S1, S2
VSUB.F32        S1, S3, S4
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VSQRT.F32       S1, S0
VMOV.F32        S0, S1
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
VMOV            S2, R10
VMOVCC.F32      S0, S16
VCVT.F32.U32    S2, S2
VDIV.F32        S1, S0, S16
VMOV            S0, R11
VSUB.F32        S4, S20, S1
VCVT.F32.S32    S3, S0
VMOV.F32        S0, S20
VMLS.F32        S0, S1, S18
VMLA.F32        S2, S4, S3
VSTR            S0, [SP,#0xF0+var_98]
VSTR            S0, [SP,#0xF0+var_94]
VSTR            S20, [SP,#0xF0+var_90]
VCVT.U32.F32    S1, S2
VMOV            R0, S1
VLDR            S1, [R4,#0x68]
AND             R7, R0, #0xFF
VMUL.F32        S1, S1, S1
ADD             R0, R4, #0x6C ; 'l'
VLDM            R0, {S2-S3}
ADD             R0, SP, #0xF0+var_A8
VMLA.F32        S1, S2, S2
VMLA.F32        S1, S3, S3
VSQRT.F32       S2, S1
VLDR            S1, [R4,#0x5C]
VMUL.F32        S1, S0, S1
VMUL.F32        S1, S2, S1
VSTR            S1, [SP,#0xF0+var_98]
VLDM            R9!, {S1}
VLDM            R9, {S2-S3}
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S2, S2
VMLA.F32        S1, S3, S3
VSQRT.F32       S2, S1
VLDR            S1, [R4,#0x64]
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S2, S0
VSTR            S0, [SP,#0xF0+var_94]
BL              sub_14B820
LDR             R0, [R4]
MOV             R2, #0
ADD             R1, SP, #0xF0+var_A8
LDR             R3, [R0,#0x44]
MOV             R0, R4
BLX             R3
LDRB            R0, [SP,#0xF0+var_A5]
LDRB            R1, [SP,#0xF0+var_A0+3]
VLDR            S0, [R8,#(flt_6E30BC - 0x6E2E58)]
SMULBB          R0, R0, R7
VCMPE.F32       S0, S17
ADD             R2, R0, R0,LSL#7
ADD             R0, R2, R0,LSL#15
VMRS            APSR_nzcv, FPSCR
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#24
SMULBB          R0, R1, R0
ADD             R1, R0, R0,LSL#7
ADD             R0, R1, R0,LSL#15
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#24
BLT             loc_14B0E8
VLDR            S0, [R8,#(flt_6E30C0 - 0x6E2E58)]
LDR             R1, =flt_6E2A58
VMOV            S1, R0
VSUB.F32        S3, S17, S0
VLDR            S2, [R8,#(flt_6E30C8 - 0x6E2E58)]
VLDR            S0, [R1,#(flt_6E2E48 - 0x6E2A58)]
VCVT.F32.U32    S1, S1
VMUL.F32        S3, S3, S19
VMLA.F32        S0, S2, S3
VMUL.F32        S0, S1, S0
VCVT.U32.F32    S0, S0
VMOV            R0, S0
AND             R0, R0, #0xFF
SUB             R0, R0, #0x100
ADD             R2, SP, #0xF0+var_50
REV             R0, R0
MOV             R1, #0
STR             R0, [SP,#0xF0+var_50]
LDR             R0, [SP,#0xF0+var_2C]
BL              sub_12C9C4
LDR             R8, =off_6CE970
LDR             R0, [SP,#0xF0+var_2C]
ADD             R2, SP, #0xF0+var_98
LDR             R1, [R8]
ADD             R7, R0, #0x20 ; ' '
MOV             R0, R7
ADD             R1, R1, #0x10C000
ADD             R1, R1, #0x550
BL              sub_14209C
LDR             R0, [SP,#0xF0+var_BC]
STR             R0, [R7,#0xC]
LDR             R0, [SP,#0xF0+var_B8]
STR             R0, [R7,#0x1C]
LDR             R0, [SP,#0xF0+var_B4]
STR             R0, [R7,#0x2C]
VLDR            S0, [R5]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLT             loc_14AE38
VLDR            S2, [R6]
VLDR            S11, [SP,#0xF0+var_C8]
VLDR            S8, [R5,#4]
VLDR            S4, [R6,#(loc_10C7A4 - 0x10C7A0)]
VMUL.F32        S2, S2, S11
VSUB.F32        S8, S17, S8
VLDR            S5, [SP,#0xF0+var_C4]
ADD             R0, R5, #0x14
VLDR            S7, [R5,#0x10]
VLDR            S6, [R6,#(loc_10C7A8 - 0x10C7A0)]
VLDR            S3, [SP,#0xF0+var_C0]
VLDR            S0, [R5,#8]
VMOV.F32        S1, S21
VLDM            R0, {S9-S10}
VMLA.F32        S2, S4, S5
VSUB.F32        S4, S7, S8
ADD             R0, SP, #0xF0+var_80
VMUL.F32        S9, S9, S10
VMLA.F32        S2, S6, S3
VMLA.F32        S0, S4, S9
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S2, S1
VNEGGT.F32      S0, S0
BL              sub_462C40
MOV             R1, R7
ADD             R2, SP, #0xF0+var_80
MOV             R0, R1
BL              sub_141F30
NOP
NOP
B               loc_14AE38
MOV             R0, #1
STR             R0, [SP,#0xF0+var_F0]
LDR             R0, =off_6CE970
LDR             R3, [SP,#0xF0+var_B0]
MOV             R2, #0
LDR             R0, [R0]
MOV             R1, R3
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_5F12C4
NOP
NOP
B               loc_14AEB0
