LDR             R2, =0x2686
VPUSH           {D8-D10}
SUB             SP, SP, #0x30
LDRB            R2, [R2,R0]
VLDR            S0, [R1,#0x108]
VLDR            S1, [R0,#0x108]
CMP             R2, #2
MOVEQ           R3, #0x19
MOVNE           R3, #0x14
VMOV            S2, R3
ADD             R2, R1, #0x400
VLDR            S3, [R2,#0x228]
VCVT.F32.U32    S10, S2
VADD.F32        S2, S0, S3
VSUB.F32        S3, S1, S10
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BLS             loc_16FCE8
VLDR            S2, [R2,#0x224]
VADD.F32        S1, S1, S10
VADD.F32        S0, S0, S2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_16FCE8
VLDR            S1, [R2,#0x234]
VLDR            S3, [R1,#0x10C]
VLDR            S2, [R0,#0x10C]
VADD.F32        S1, S3, S1
VSUB.F32        S4, S2, S10
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
BLS             loc_16FCE8
VADD.F32        S2, S2, S10
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
BGE             loc_16FCE8
ADD             R12, SP, #0x48+var_3C
VLDR            S13, =0.0
MOV             R3, SP
VSTR            S13, [SP,#0x48+var_40]
VSTMEA          SP, {S0-S1}
VLDR            S1, [R1,#0x10C]
VLDR            S2, [R2,#0x234]
VLDR            S0, [R1,#0x108]
VLDR            S3, [R2,#0x228]
VADD.F32        S1, S1, S2
VSTR            S13, [SP,#0x48+var_34]
VADD.F32        S0, S0, S3
VSTM            R12, {S0-S1}
VLDR            S1, [R1,#0x108]
VLDR            S2, [R2,#0x228]
VLDR            S0, [R1,#0x10C]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x48+var_30]
VSTR            S0, [SP,#0x48+var_2C]
VSTR            S13, [SP,#0x48+var_28]
VLDR            S1, [R2,#0x224]
VLDR            S0, [R1,#0x108]
LDR             R1, [R1,#0x10C]
MOV             R2, #0
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_24]
STR             R1, [SP,#0x48+var_20]
VSTR            S13, [SP,#0x48+var_1C]
ADD             R1, R2, R2,LSL#1
ADD             R1, R3, R1,LSL#2
VLDM            R1!, {S6}
VLDM            R1, {S3-S4}
ADD             R1, R2, #1
MOV             R12, R1,ASR#31
ADD             R12, R1, R12,LSR#30
BIC             R12, R12, #3
SUB             R1, R1, R12
ADD             R1, R1, R1,LSL#1
ADD             R1, R3, R1,LSL#2
VLDM            R1!, {S9}
VLDM            R1, {S7-S8}
ADD             R1, R0, #0x108
VCMP.F32        S6, S9
VMRS            APSR_nzcv, FPSCR
VCMPEQ.F32      S3, S7
VMRSEQ          APSR_nzcv, FPSCR
VCMPEQ.F32      S4, S8
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_16FC14
VLDR            S5, [R1]
VSUB.F32        S2, S9, S6
VLDR            S12, [R1,#4]
VMOV.F32        S17, S5
VSUB.F32        S5, S5, S6
VMOV.F32        S18, S12
VSUB.F32        S0, S7, S3
VSUB.F32        S12, S12, S3
VLDR            S14, [R1,#8]
VSUB.F32        S1, S8, S4
VSUB.F32        S11, S6, S9
VMOV.F32        S19, S14
VSUB.F32        S14, S14, S4
VSUB.F32        S15, S3, S7
VMUL.F32        S20, S2, S5
VSUB.F32        S16, S4, S8
VSUB.F32        S17, S17, S9
VSUB.F32        S18, S18, S7
VSUB.F32        S19, S19, S8
VMLA.F32        S20, S0, S12
VMLA.F32        S20, S1, S14
VCMPE.F32       S13, S20
VMRS            APSR_nzcv, FPSCR
BLE             loc_16FC40
VLDR            S1, [R1]
VLDR            S0, [R1,#4]
VLDR            S2, [R1,#8]
VSUB.F32        S1, S6, S1
VSUB.F32        S0, S3, S0
VSUB.F32        S2, S4, S2
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S0, S0
VMLA.F32        S1, S2, S2
VSQRT.F32       S0, S1
B               loc_16FCC0
VMUL.F32        S3, S11, S17
VMLA.F32        S3, S15, S18
VMLA.F32        S3, S16, S19
VCMPE.F32       S3, S13
VMRS            APSR_nzcv, FPSCR
BCS             loc_16FC84
VLDR            S1, [R1]
VLDR            S0, [R1,#4]
VLDR            S2, [R1,#8]
VSUB.F32        S1, S9, S1
VSUB.F32        S0, S7, S0
VSUB.F32        S2, S8, S2
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S0, S0
VMLA.F32        S1, S2, S2
VSQRT.F32       S0, S1
B               loc_16FCC0
VMUL.F32        S6, S0, S14
VMUL.F32        S7, S2, S2
VMUL.F32        S3, S2, S12
VMUL.F32        S4, S1, S5
VMLS.F32        S6, S1, S12
VMLA.F32        S7, S0, S0
VMLS.F32        S3, S0, S5
VMLS.F32        S4, S2, S14
VMUL.F32        S0, S6, S6
VMLA.F32        S7, S1, S1
VMLA.F32        S0, S4, S4
VSQRT.F32       S1, S7
VMLA.F32        S0, S3, S3
VSQRT.F32       S2, S0
VDIV.F32        S0, S2, S1
VCMPE.F32       S0, S10
VMRS            APSR_nzcv, FPSCR
BCS             loc_16FCDC
ADD             SP, SP, #0x30 ; '0'
MOV             R0, #1
VPOP            {D8-D10}
BX              LR
ADD             R2, R2, #1
CMP             R2, #4
BLT             loc_16FB60
ADD             SP, SP, #0x30 ; '0'
MOV             R0, #0
VPOP            {D8-D10}
BX              LR
