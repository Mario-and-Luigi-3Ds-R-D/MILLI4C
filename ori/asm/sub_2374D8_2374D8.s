PUSH            {R4-R12,LR}
MOV             R5, R0
MOV             R4, #0
LDR             R7, =byte_68DBBD
VPUSH           {D8-D11}
SUB             SP, SP, #0x460
ADD             R6, SP, #0x4A8+var_330
ADD             R8, SP, #0x4A8+var_420
LDR             R0, [R0,#4]
ADD             R0, R0, #0x8000
VLDR            S19, [R0,#0x328]
LDRB            R0, [R7]
CMP             R0, #0
BLE             loc_2377B8
LDR             R9, =flt_697140
VLDR            S22, =0.71111
VLDR            S23, =65536.0
VLDR            S20, =0.0
VLDR            S21, =75.0
LDR             R0, [R5,#8]
LDRB            R0, [R0,#0x4A8]
CMP             R0, #2
BNE             loc_237778
LDR             R0, =unk_68D002
RSB             R1, R4, R4,LSL#4
ADD             R0, R0, R1,LSL#1
LDRSH           R1, [R0]
CMN             R1, #0x30 ; '0'
BGT             loc_237778
LDRSH           R1, [R0,#0x16]
LDRSH           R3, [R0,#0x18]
VMOV.F32        S4, S20
RSB             R2, R1, #0
RSB             R1, R3, #0
VMOV            S1, R1
VMOV            S0, R2
VSTR            S4, [SP,#0x4A8+var_458]
ADD             R2, SP, #0x4A8+var_460
MOV             R1, #0x168
VMOV.F32        S18, S4
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VMOV.F32        S5, S18
VSTM            R2, {S0-S1}
LDRH            R0, [R0,#0x1A]
SMULBB          R0, R0, R1
MOV             R1, R0,ASR#31
ADD             R0, R0, R1,LSR#22
LDR             R1, =0x47800000
MOV             R0, R0,ASR#10
VMOV            S0, R0
MOV             R0, #0
MOV             LR, R0
VCVT.F32.S32    S0, S0
VADD.F32        S0, S0, S19
VMUL.F32        S0, S0, S22
VCMPE.F32       S0, S5
VMRS            APSR_nzcv, FPSCR
VABS.F32        S0, S0
MOVCC           R11, #1
MOVCS           R11, #0
VMOV            R2, S0
CMP             R2, R1
BLT             loc_2375E8
VSUB.F32        S0, S0, S23
VMOV            R2, S0
CMP             R2, R1
BGE             loc_2375D8
VCVT.U32.F32    S1, S4
VCVT.U32.F32    S2, S5
VCVT.U32.F32    S3, S0
CMP             R0, #0
VMOV            R3, S1
VMOV            R2, S2
VMOV            R1, S3
UXTH            R10, R3
VMOV            S8, R10
UXTH            R12, R2
VMOV            S7, R12
UXTH            R3, R1
VMOV            S9, R3
AND             R1, R12, #0xFF
VCVT.F32.U32    S13, S8
AND             R2, R10, #0xFF
VCVT.F32.U32    S12, S7
ADD             R1, R9, R1,LSL#4
VCVT.F32.U32    S7, S9
ADD             R2, R9, R2,LSL#4
VLDR            S1, [R1]
VLDR            S2, [R1,#4]
AND             R0, R3, #0xFF
ADD             R1, R1, #8
VSUB.F32        S13, S4, S13
VLDR            S6, [R2]
VSUB.F32        S4, S5, S12
VLDR            S11, [R2,#8]
VSUB.F32        S0, S0, S7
ADD             R0, R9, R0,LSL#4
VLDM            R1, {S16-S17}
VLDR            S9, [R0]
VLDR            S10, [R0,#8]
VLDR            S8, [R0,#4]
VMLA.F32        S6, S13, S11
VLDR            S14, [R0,#0xC]
VMLA.F32        S1, S4, S16
VLDR            S3, [R2,#4]
VMLA.F32        S9, S0, S10
VLDR            S15, [R2,#0xC]
VMLA.F32        S8, S0, S14
VMLA.F32        S2, S4, S17
VMLA.F32        S3, S13, S15
MOV             R0, #0
VNEGNE.F32      S6, S6
CMP             LR, #0
VNEGNE.F32      S1, S1
CMP             R11, #0
VNEGNE.F32      S9, S9
ADD             R2, SP, #0x4A8+var_460
VMUL.F32        S0, S6, S8
VMUL.F32        S10, S8, S2
VMUL.F32        S5, S3, S8
VMUL.F32        S7, S6, S9
VMUL.F32        S4, S3, S9
VMUL.F32        S8, S9, S2
VMUL.F32        S6, S6, S2
VMUL.F32        S3, S3, S2
VNEG.F32        S9, S1
VSTR            S10, [SP,#0x4A8+var_4A0]
VMOV.F32        S2, S7
VSTR            S8, [SP,#0x4A8+var_490]
VSTR            S6, [SP,#0x4A8+var_47C]
VSTR            S3, [SP,#0x4A8+var_478]
VMLA.F32        S2, S5, S1
VMLA.F32        S5, S7, S1
VMOV.F32        S7, S4
VNMLS.F32       S7, S0, S1
VNMLS.F32       S0, S4, S1
VSTR            S7, [SP,#0x4A8+var_49C]
VSTR            S0, [SP,#0x4A8+var_488]
VSTR            S2, [SP,#0x4A8+var_498]
VSTR            S5, [SP,#0x4A8+var_48C]
VSTR            S9, [SP,#0x4A8+var_480]
STR             R0, [SP,#0x4A8+var_494]
STR             R0, [SP,#0x4A8+var_484]
STR             R0, [SP,#0x4A8+var_474]
ADD             R1, SP, #0x4A8+var_4A0
MOV             R0, R2
BL              sub_1169FC
LDR             R0, [R5,#4]
ADD             R1, SP, #0x4A8+var_45C
ADD             R0, R0, #0x108
VLDM            R1, {S4-S5}
VLDR            S1, [R0]
VLDR            S0, [R0,#4]
VLDR            S2, [R0,#8]
VADD.F32        S1, S1, S18
VADD.F32        S0, S0, S21
VADD.F32        S3, S2, S18
VLDR            S2, [SP,#0x4A8+var_460]
ADD             R0, R4, R4,LSL#1
ADD             R0, R6, R0,LSL#2
VADD.F32        S2, S1, S2
VADD.F32        S1, S0, S4
VADD.F32        S0, S3, S5
VSTR            S2, [R0]
VSTR            S1, [R0,#4]
VSTR            S0, [R0,#8]
B               loc_23779C
LDR             R0, =0x21240
LDR             R2, [R5,#4]
RSB             R1, R4, R4,LSL#3
ADD             R3, R4, R4,LSL#1
ADD             R0, R0, R1,LSL#3
ADD             R0, R0, R2
ADD             R1, R6, R3,LSL#2
VLDM            R0, {S0-S2}
VSTM            R1, {S0-S2}
ADD             R0, R4, R4,LSL#1
ADD             R0, R6, R0,LSL#2
STR             R0, [R8,R4,LSL#2]
LDRB            R0, [R7]
ADD             R4, R4, #1
CMP             R4, R0
BLT             loc_237524
LDR             R0, [R5,#4]
LDR             R1, =0x40490FDB
LDR             R0, [R0,#0x474]
CMP             R0, R1
LDRB            R0, [R7]
MOV             R1, #0
BLE             loc_237858
CMP             R0, #0
BLE             loc_2378B0
LDRB            R2, [R7]
ADD             R0, R1, #1
CMP             R0, R2
BGE             loc_23781C
LDR             R3, [R8,R0,LSL#2]
LDR             R2, [R8,R1,LSL#2]
VLDR            S0, [R3]
VLDR            S1, [R2]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
STRGT           R3, [R8,R1,LSL#2]
STRGT           R2, [R8,R0,LSL#2]
LDRB            R2, [R7]
ADD             R0, R0, #1
CMP             R0, R2
BLT             loc_2377EC
AND             R0, R2, #0xFF
ADD             R1, R1, #1
CMP             R1, R0
BLT             loc_2377DC
B               loc_2378B0
DCD byte_68DBBD
DCFS 0.71111
DCFS 65536.0
DCD flt_697140
DCFS 0.0
DCFS 75.0
DCD unk_68D002
DCD 0x47800000
DCD 0x21240
DCD 0x40490FDB
CMP             R0, #0
BLE             loc_2378B0
LDRB            R2, [R7]
ADD             R0, R1, #1
CMP             R0, R2
BGE             loc_2378A0
LDR             R3, [R8,R0,LSL#2]
LDR             R2, [R8,R1,LSL#2]
VLDR            S1, [R3]
VLDR            S0, [R2]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
STRCC           R3, [R8,R1,LSL#2]
STRCC           R2, [R8,R0,LSL#2]
LDRB            R2, [R7]
ADD             R0, R0, #1
CMP             R0, R2
BLT             loc_237870
AND             R0, R2, #0xFF
ADD             R1, R1, #1
CMP             R1, R0
BLT             loc_237860
MOV             R0, #0
ADD             R1, R0, #1
CMP             R1, #0xA
BGE             loc_2378EC
LDR             R3, [R8,R1,LSL#2]
LDR             R2, [R8,R0,LSL#2]
VLDR            S0, [R3,#4]
VLDR            S1, [R2,#4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
STRCC           R3, [R8,R0,LSL#2]
STRCC           R2, [R8,R1,LSL#2]
ADD             R1, R1, #1
CMP             R1, #0xA
BLT             loc_2378C0
ADD             R0, R0, #1
CMP             R0, #0xA
BLT             loc_2378B4
MOV             R1, #0xA
ADD             R0, R1, #1
CMP             R0, #0x20 ; ' '
BGE             loc_237934
LDR             R3, [R8,R0,LSL#2]
LDR             R2, [R8,R1,LSL#2]
VLDR            S0, [R3,#4]
VLDR            S1, [R2,#4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
STRCC           R3, [R8,R1,LSL#2]
STRCC           R2, [R8,R0,LSL#2]
ADD             R0, R0, #1
CMP             R0, #0x20 ; ' '
BLT             loc_237908
ADD             R1, R1, #1
CMP             R1, #0x20 ; ' '
BLT             loc_2378FC
MOV             R1, #0x20 ; ' '
ADD             R0, R1, #1
CMP             R0, #0x32 ; '2'
BGE             loc_23797C
LDR             R3, [R8,R0,LSL#2]
LDR             R2, [R8,R1,LSL#2]
VLDR            S0, [R3,#4]
VLDR            S1, [R2,#4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
STRCC           R3, [R8,R1,LSL#2]
STRCC           R2, [R8,R0,LSL#2]
ADD             R0, R0, #1
CMP             R0, #0x32 ; '2'
BLT             loc_237950
ADD             R1, R1, #1
CMP             R1, #0x32 ; '2'
BLT             loc_237944
MOV             R0, #0x32 ; '2'
ADD             R1, R0, #1
CMP             R1, #0x3C ; '<'
BGE             loc_2379C4
LDR             R3, [R8,R1,LSL#2]
LDR             R2, [R8,R0,LSL#2]
VLDR            S0, [R3,#4]
VLDR            S1, [R2,#4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
STRCC           R3, [R8,R0,LSL#2]
STRCC           R2, [R8,R1,LSL#2]
ADD             R1, R1, #1
CMP             R1, #0x3C ; '<'
BLT             loc_237998
ADD             R0, R0, #1
CMP             R0, #0x3C ; '<'
BLT             loc_23798C
LDRB            R0, [R7]
LDR             R2, =0x2AAAAAAB
CMP             R0, #0
BEQ             loc_237A14
AND             R0, R0, #1
CMP             R0, #1
BNE             loc_237A14
LDR             R3, [SP,#0x4A8+var_420]
MOV             R1, #0
SUB             R3, R3, R6
SMULL           R12, R3, R2, R3
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, R5
ADD             R3, R3, #0xC800
ADD             R3, R3, #0xD
STRB            R1, [R3]
LDRB            R1, [R7]
CMP             R0, R1
BGE             loc_237A84
LDR             R4, [R8,R0,LSL#2]
MOV             R1, R0
ADD             R12, R8, R0,LSL#2
SUB             R4, R4, R6
ADD             R3, R0, #1
SMULL           R9, R4, R2, R4
ADD             R0, R0, #2
MOV             R9, R4,ASR#1
SUB             R4, R9, R4,ASR#31
ADD             R4, R4, R5
ADD             R4, R4, #0xC800
ADD             R4, R4, #0xD
STRB            R1, [R4]
LDR             R1, [R12,#4]
SUB             R1, R1, R6
SMULL           R12, R1, R2, R1
MOV             R12, R1,ASR#1
SUB             R1, R12, R1,ASR#31
ADD             R1, R1, R5
ADD             R1, R1, #0xC800
ADD             R1, R1, #0xD
STRB            R3, [R1]
LDRB            R1, [R7]
CMP             R0, R1
BLT             loc_237A20
ADD             SP, SP, #0x460
VPOP            {D8-D11}
POP             {R4-R12,PC}
