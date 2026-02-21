PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #8
VLDR            S16, [R0,#0xC]
VMOV            R0, S16
CMP             R0, #0x3F800000
BGE             loc_2012B4
LDR             R6, =off_6D1648
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0xAC]
LDR             R0, [R0,#0x1A0]
AND             R0, R0, #0x40 ; '@'
MOVS            R0, R0,LSR#6
BNE             loc_2012B4
LDR             R0, [R6]
BL              sub_1E4614
MOV             R5, R0
LDR             R0, [R0,#0x110]
LDR             R1, =0x41800000
CMP             R1, R0
BGT             loc_2011C0
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0xAC]
LDR             R0, [R0,#0xA0]
CMP             R0, #0
BEQ             loc_2012B8
ADD             R6, R5, #0x400
VLDR            S0, [R5,#0x10C]
VLDR            S2, [R6,#0x234]
LDR             R0, [R4,#4]
VLDR            S3, [R4,#0x5C]
VADD.F32        S2, S0, S2
VLDR            S1, [R0,#0x10C]
VADD.F32        S3, S1, S3
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_2012B4
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
BGT             loc_2012B4
VLDR            S0, =3.1416
VMUL.F32        S1, S16, S0
VLDR            S0, =40.744
VMUL.F32        S16, S1, S0
VMOV.F32        S0, S16
BL              sub_464380
VMOV.F32        S17, S0
VMOV.F32        S0, S16
BL              sub_464318
VMOV.F32        S1, S0
VLDR            S0, [R4,#0x60]
VLDR            S3, [R4,#0x64]
LDRH            R0, [R4,#0x70]
VMUL.F32        S2, S0, S17
VMOV.F32        S0, S1
TST             R0, #2
LDR             R0, [R4,#4]
VLDRNE          S1, [R0,#0x108]
VMLA.F32        S2, S0, S3
VLDR            S0, [R5,#0x108]
VLDRNE          S3, [R6,#0x224]
VADDNE.F32      S0, S0, S3
VLDREQ          S3, [R0,#0x108]
VSUBNE.F32      S17, S0, S1
VLDREQ          S1, [R6,#0x228]
VADDEQ.F32      S0, S0, S1
VSUBEQ.F32      S17, S3, S0
VLDR            S0, =0.0
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S2, S17
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_2012B4
VMOV.F32        S0, S16
ADD             R1, SP, #0x20+var_1C
MOV             R0, SP
BL              sub_462B20
VLDMEA          SP, {S1-S2}
VDIV.F32        S0, S1, S2
VLDR            S1, [R5,#0x110]
VLDR            S2, [R6,#0x22C]
VADD.F32        S1, S1, S2
VMUL.F32        S0, S0, S17
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #1
BGE             loc_2012B8
MOV             R0, #0
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R6,PC}
