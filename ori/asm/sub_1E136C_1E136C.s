PUSH            {R4-R6,LR}
MOV             R4, R0
VLDR            S1, =-1.0
MOV             R5, #0
VPUSH           {D8-D10}
LDR             R0, [R0,#0x1A0]
VLDR            S16, =0.0
VLDR            S18, =1.0
VLDR            S20, =0.75
VLDR            S19, =2.0
VLDR            S21, =1.3333
TST             R0, #0x10
BEQ             loc_1E1434
VLDR            S2, [R4,#0x50]
VLDR            S0, [R4,#0x1C]
LDRSB           R0, [R4,#0x4C]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S17, S16
VMOVGT.F32      S0, S2
VMOV            S2, R0
VCVT.F32.S32    S2, S2
VMUL.F32        S0, S2, S0
VMUL.F32        S16, S0, S20
VCMPE.F32       S16, S17
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R4,#0x10]
VMOVLE.F32      S18, S1
VADD.F32        S0, S0, S19
VMOV.F32        S1, S19
BL              sub_5F63A4
VADD.F32        S2, S16, S19
VLDR            S1, [R4,#4]
VSTR            S0, [R4,#8]
VADD.F32        S0, S1, S2
VMOV.F32        S1, S19
BL              sub_5F63A4
VMOV.F32        S2, S18
VMOV.F32        S1, S21
VSTR            S0, [R4,#4]
ADD             R0, R4, #0x58 ; 'X'
BL              sub_1C839C
LDRB            R0, [R4,#0x4D]
CMP             R0, #0
LDR             R0, [R4,#0x1A0]
BEQ             loc_1E1518
AND             R1, R0, #0x80
MOVS            R1, R1,LSR#7
BEQ             loc_1E1548
B               loc_1E1554
LDRB            R1, [R4,#0x4D]
CMP             R1, #0
VLDRNE          S16, [R4,#0xBC]
BNE             loc_1E1574
VMOV.F32        S17, S16
VLDR            S0, [R4,#0xBC]
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
BICEQ           R0, R0, #0x20 ; ' '
STREQ           R0, [R4,#0x1A0]
BEQ             loc_1E1574
VCMPE.F32       S0, S17
ORR             R0, R0, #0x10
STR             R0, [R4,#0x1A0]
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R4,#8]
VMOVLE.F32      S18, S1
VMOV.F32        S1, S19
BL              sub_5F63A4
VSTR            S0, [R4,#0x10]
VSTR            S0, [R4,#0x14]
VSTR            S17, [R4,#0x1C]
VMOV.F32        S17, S21
STRB            R5, [R4,#0x4D]
VLDR            S0, [R4,#0xBC]
VLDR            S3, =0.0014722
ADD             R0, R4, #0x10
VMOV.F32        S2, S17
VMUL.F32        S0, S0, S2
VABS.F32        S1, S0
VMOV.F32        S0, S18
BL              sub_1C8318
VLDR            S1, [R4,#0x50]
VLDR            S0, [R4,#0x1C]
LDRSB           R0, [R4,#0x4C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VLDR            S2, [R4,#0xC]
VMOVCC.F32      S0, S1
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
VMOV.F32        S1, S19
VMUL.F32        S3, S0, S20
VLDR            S0, [R4,#4]
VMUL.F32        S16, S3, S2
VADD.F32        S2, S16, S1
VADD.F32        S0, S0, S2
BL              sub_5F63A4
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VSTR            S0, [R4,#4]
ADD             R0, R4, #0x58 ; 'X'
BL              sub_1C839C
NOP
NOP
B               loc_1E1574
BIC             R0, R0, #0x10
STR             R0, [R4,#0x1A0]
VSTR            S17, [R4,#0xBC]
MOV             R2, #0x18
MOV             R1, #0
ADD             R0, R4, #0xC0
BL              sub_110BE4
STRB            R5, [R4,#0xD8]
LDR             R0, [R4,#0x1A0]
BIC             R0, R0, #0x20 ; ' '
STR             R0, [R4,#0x1A0]
B               loc_1E1574
AND             R0, R0, #0x100
MOVS            R0, R0,LSR#8
BEQ             loc_1E1574
VLDR            S0, [R4,#0x1C]
VLDR            S1, =0.02
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x1C]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S17, S0
VSTR            S17, [R4,#0x1C]
LDRB            R0, [R4,#0xD8]
LDR             R1, =0xAAAAAAAB
ADD             R0, R4, R0,LSL#2
VSTR            S16, [R0,#0xC0]
LDRB            R0, [R4,#0xD8]
ADD             R0, R0, #1
UMULL           R2, R1, R1, R0
MOV             R1, R1,LSR#2
SUB             R1, R1, R1,LSL#2
ADD             R0, R0, R1,LSL#1
STRB            R0, [R4,#0xD8]
VLDR            S0, [R4,#0xC0]
VLDR            S2, [R4,#0xC4]
VLDR            S4, [R4,#0xC8]
VLDR            S3, [R4,#0xCC]
VADD.F32        S0, S2, S0
ADD             R0, R4, #0xD0
VLDM            R0, {S1-S2}
VADD.F32        S0, S4, S0
VADD.F32        S0, S3, S0
VADD.F32        S0, S1, S0
VLDR            S1, =0.16667
VADD.F32        S0, S2, S0
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#0xBC]
VPOP            {D8-D10}
POP             {R4-R6,PC}
