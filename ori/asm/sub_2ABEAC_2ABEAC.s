PUSH            {R4-R12,LR}
MOV             R4, #0
MOV             R9, R2
MOV             R10, R3
VPUSH           {D8-D9}
LDR             R0, [R0,#0xC]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x108
LDR             R0, [R0]
LDR             R0, [R0,#0xA4]
LDR             R7, [R0,#8]
LDR             R0, [R7,#0xBC]
SUB             R8, R0, #1
CMP             R8, #0
BLE             loc_2AC100
MOV             R11, #0
VLDR            S17, =1.0
VLDR            S16, =0.0
VLDR            S18, =255.0
VLDR            S19, =0.5
LDR             R1, [R7,#0xC0]
ADD             R0, R7, #0xC0
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R11
CMP             R0, #0
BEQ             loc_2ABF2C
ADD             R0, R0, R4,LSL#4
LDR             R2, [R0,#0x28]!
CMP             R2, #0
MOVEQ           R0, R11
ADDNE           R0, R0, R2
ADD             R5, R0, #0x24 ; '$'
CMP             R1, #0
ADD             R0, R7, #0xC0
ADDNE           R0, R0, R1
MOVEQ           R0, R11
CMP             R0, #0
ADD             R2, R4, #1
BEQ             loc_2ABF60
ADD             R1, R0, R2,LSL#4
LDR             R0, [R1,#0x28]!
CMP             R0, #0
MOVEQ           R0, R11
ADDNE           R0, R0, R1
ADD             R6, R0, #0x24 ; '$'
ADD             R0, R4, R4,LSR#31
MOV             R1, R10
MOV             R2, R0,ASR#1
MOV             R0, R9
BL              sub_14351C
TST             R0, #1
NOP
BEQ             loc_2AC108
VMOV.F32        S0, S17
ADD             R0, R6, #0x50 ; 'P'
VSTR            S0, [R6,#0x5C]
VLDR            S2, [R6,#0x50]
VMOV            R1, S2
CMP             R1, #0x3F800000
VMOVGT.F32      S2, S0
BGT             loc_2ABFB0
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S2, S16
VMOV.F32        S3, S19
VLDR            S1, [R0,#4]
VMOV            R1, S1
VMLA.F32        S3, S2, S18
CMP             R1, #0x3F800000
VMOVGT.F32      S1, S0
VCVT.U32.F32    S2, S3
VMOV            R2, S2
AND             R1, R2, #0xFF
BGT             loc_2ABFE4
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S1, S16
VMOV.F32        S3, S19
VLDR            S2, [R0,#8]
VMOV            R0, S2
VMLA.F32        S3, S1, S18
CMP             R0, #0x3F800000
VMOVGT.F32      S2, S0
VCVT.U32.F32    S1, S3
VMOV            R2, S1
AND             R2, R2, #0xFF
BGT             loc_2AC018
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S2, S16
VMOV.F32        S1, S19
MOV             LR, #0xFF000000
VMLA.F32        S1, S2, S18
VMOV.F32        S2, S19
VCVT.U32.F32    S1, S1
VMOV            R0, S1
AND             R3, R0, #0xFF
ADD             R0, R5, #0x50 ; 'P'
ORR             R3, LR, R3,LSL#16
ORR             R2, R3, R2,LSL#8
ORR             R1, R1, R2
STR             R1, [R6,#0xC4]
VSTR            S0, [R5,#0x5C]
VLDR            S1, [R5,#0x50]
VMOV            R1, S1
CMP             R1, #0x3F800000
VMOVGT.F32      S1, S0
BGT             loc_2AC06C
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S1, S16
VMOV.F32        S4, S2
VLDR            S3, [R0,#4]
VMOV            R1, S3
VMLA.F32        S4, S1, S18
CMP             R1, #0x3F800000
VMOVGT.F32      S3, S0
VCVT.U32.F32    S1, S4
VMOV            R2, S1
AND             R1, R2, #0xFF
BGT             loc_2AC0A0
VCMPE.F32       S3, S16
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S3, S16
VMOV.F32        S4, S2
VLDR            S1, [R0,#8]
VMOV            R0, S1
VMLA.F32        S4, S3, S18
CMP             R0, #0x3F800000
VCVT.U32.F32    S3, S4
VMOV            R2, S3
AND             R0, R2, #0xFF
BGT             loc_2AC0D4
VMOV.F32        S0, S16
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S0, S1
VMLA.F32        S2, S0, S18
VCVT.U32.F32    S0, S2
VMOV            R2, S0
AND             R2, R2, #0xFF
ORR             R2, LR, R2,LSL#16
ORR             R0, R2, R0,LSL#8
ORR             R0, R0, R1
STR             R0, [R5,#0xC4]
ADD             R4, R4, #2
CMP             R4, R8
BLT             loc_2ABEFC
VPOP            {D8-D9}
POP             {R4-R12,PC}
VMOV.F32        S0, S16
ADD             R0, R6, #0x50 ; 'P'
VSTR            S0, [R6,#0x5C]
VLDR            S3, [R6,#0x50]
VMOV            R1, S3
CMP             R1, #0x3F800000
VMOVGT.F32      S3, S17
BGT             loc_2AC134
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S3, S0
VMOV.F32        S1, S19
VLDR            S2, [R0,#4]
VMOV            R1, S2
VMLA.F32        S1, S3, S18
CMP             R1, #0x3F800000
VMOVGT.F32      S2, S17
VCVT.U32.F32    S1, S1
VMOV            R2, S1
AND             R1, R2, #0xFF
BGT             loc_2AC168
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S2, S0
VMOV.F32        S1, S19
VLDR            S3, [R0,#8]
VMOV            R0, S3
VMOV.F32        S4, S1
CMP             R0, #0x3F800000
VMOVGT.F32      S3, S17
VMLA.F32        S4, S2, S18
VCVT.U32.F32    S2, S4
VMOV            R2, S2
AND             R2, R2, #0xFF
BGT             loc_2AC1A0
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S3, S0
VMOV.F32        S2, S1
VMLA.F32        S2, S3, S18
VCVT.U32.F32    S2, S2
VMOV            R0, S2
AND             R3, R0, #0xFF
ADD             R0, R5, #0x50 ; 'P'
ORR             R3, R11, R3,LSL#16
ORR             R2, R3, R2,LSL#8
ORR             R1, R1, R2
STR             R1, [R6,#0xC4]
VSTR            S0, [R5,#0x5C]
VLDR            S2, [R5,#0x50]
VMOV            R1, S2
CMP             R1, #0x3F800000
VMOVGT.F32      S2, S17
BGT             loc_2AC1EC
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S2, S0
VMOV.F32        S4, S1
VLDR            S3, [R0,#4]
VMOV            R1, S3
VMLA.F32        S4, S2, S18
CMP             R1, #0x3F800000
VMOVGT.F32      S3, S17
VCVT.U32.F32    S2, S4
VMOV            R2, S2
AND             R1, R2, #0xFF
BGT             loc_2AC220
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S3, S0
VMOV.F32        S4, S1
VLDR            S2, [R0,#8]
VMOV            R0, S2
VMLA.F32        S4, S3, S18
CMP             R0, #0x3F800000
VMOVGT.F32      S0, S17
VCVT.U32.F32    S3, S4
VMOV            R2, S3
AND             R0, R2, #0xFF
BGT             loc_2AC254
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S0, S2
VMLA.F32        S1, S0, S18
VCVT.U32.F32    S0, S1
VMOV            R2, S0
AND             R2, R2, #0xFF
ORR             R2, R11, R2,LSL#16
ORR             R0, R2, R0,LSL#8
ORR             R0, R0, R1
STR             R0, [R5,#0xC4]
B               loc_2AC0F4
