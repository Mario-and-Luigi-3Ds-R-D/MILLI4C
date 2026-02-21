PUSH            {R4-R7}
VLDR            S2, =40.744
VLDR            S3, [R1,#8]
VLDM            R1, {S0-S1}
LDR             R1, =0x47800000
VMUL.F32        S0, S0, S2
VMUL.F32        S1, S1, S2
VMUL.F32        S2, S3, S2
VLDR            S3, =0.0
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VABS.F32        S0, S0
VCMPE.F32       S1, S3
MOVCC           R12, #1
MOVCS           R12, #0
VMOV            R4, S0
VMRS            APSR_nzcv, FPSCR
VABS.F32        S1, S1
VCMPE.F32       S2, S3
MOVCC           R3, #1
MOVCS           R3, #0
VMRS            APSR_nzcv, FPSCR
VABS.F32        S2, S2
VLDR            S3, =65536.0
MOVCC           R2, #1
MOVCS           R2, #0
CMP             R4, R1
BLT             loc_231A08
VSUB.F32        S0, S0, S3
VMOV            R4, S0
CMP             R4, R1
BGE             loc_2319F8
VMOV            R4, S1
CMP             R4, R1
BLT             loc_231A24
VSUB.F32        S1, S1, S3
VMOV            R4, S1
CMP             R4, R1
BGE             loc_231A14
VMOV            R4, S2
CMP             R4, R1
BLT             loc_231A40
VSUB.F32        S2, S2, S3
VMOV            R4, S2
CMP             R4, R1
BGE             loc_231A30
VCVT.U32.F32    S3, S0
CMP             R12, #0
VMOV            R1, S3
VCVT.U32.F32    S3, S1
UXTH            R1, R1
AND             R6, R1, #0xFF
VMOV            R4, S3
VCVT.U32.F32    S3, S2
UXTH            R4, R4
VMOV            R5, S3
VMOV            S3, R1
LDR             R1, =flt_697140
UXTH            R5, R5
VMOV            S4, R5
AND             R7, R5, #0xFF
VCVT.F32.U32    S5, S3
VMOV            S3, R4
AND             R4, R4, #0xFF
ADD             R5, R1, R6,LSL#4
VCVT.F32.U32    S4, S4
ADD             R4, R1, R4,LSL#4
ADD             R1, R1, R7,LSL#4
VCVT.F32.U32    S3, S3
VSUB.F32        S6, S0, S5
VLDR            S5, [R5,#4]
VLDR            S0, [R4]
VSUB.F32        S8, S2, S4
VLDR            S2, [R4,#4]
ADD             R4, R4, #8
VSUB.F32        S7, S1, S3
VLDR            S1, [R5]
ADD             R5, R5, #8
VLDR            S4, [R1]
VLDR            S3, [R1,#4]
ADD             R1, R1, #8
VLDM            R5, {S9-S10}
VLDM            R4, {S11-S12}
VMLA.F32        S1, S6, S9
VLDM            R1, {S13-S14}
VMLA.F32        S5, S6, S10
VMLA.F32        S0, S7, S11
VMLA.F32        S2, S7, S12
VMLA.F32        S4, S8, S13
VMLA.F32        S3, S8, S14
MOV             R1, #0
VNEGNE.F32      S1, S1
CMP             R3, #0
ADD             R3, R0, #0x90
VNEGNE.F32      S0, S0
CMP             R2, #0
VNEGNE.F32      S4, S4
VMUL.F32        S6, S5, S3
VMUL.F32        S7, S1, S3
VMUL.F32        S11, S1, S2
VMUL.F32        S10, S3, S2
ADD             R2, R0, #0x80
VMUL.F32        S12, S1, S4
VMUL.F32        S8, S5, S4
VMUL.F32        S1, S5, S2
VMUL.F32        S4, S4, S2
VNEG.F32        S5, S0
VSTR            S10, [R0,#0x7C]
VMOV.F32        S9, S12
VMOV.F32        S2, S8
VMLA.F32        S9, S6, S0
VNMLS.F32       S2, S7, S0
VNMLS.F32       S7, S8, S0
VMLA.F32        S6, S12, S0
VMOV.F32        S3, S9
VSTM            R2, {S2-S3}
STR             R1, [R0,#0x88]
VSTR            S4, [R0,#0x8C]
VSTM            R3, {S6-S7}
STR             R1, [R0,#0x98]
VSTR            S5, [R0,#0x9C]
VSTR            S11, [R0,#0xA0]
VSTR            S1, [R0,#0xA4]
STR             R1, [R0,#0xA8]
POP             {R4-R7}
BX              LR
