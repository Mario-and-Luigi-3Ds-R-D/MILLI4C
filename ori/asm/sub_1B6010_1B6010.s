PUSH            {R4-R11,LR}
MOV             R5, R0
ADD             R0, R0, #0x1000
MOV             R8, #0
VPUSH           {D8-D13}
SUB             SP, SP, #0xC
VLDR            S0, [R0,#0x1B0]
VLDR            S16, =0.71111
VLDR            S22, =3.4028e38
VMUL.F32        S0, S0, S16
BL              sub_464380
VLDR            S24, =90.0
VLDR            S1, =60.0
ADD             R1, SP, #0x60+var_5C
VMOV.F32        S19, S24
MOV             R0, SP
VMLA.F32        S19, S0, S1
VMUL.F32        S0, S19, S16
BL              sub_462B20
VLDMEA          SP, {S0-S1}
MOV             R4, #2
LDR             R0, [R5,#4]
LDR             R10, =off_6D1648
VDIV.F32        S21, S0, S1
VLDR            S1, =75.0
VLDR            S0, [R0,#0x10C]
VLDR            S16, [R0,#0x108]
VLDR            S18, [R0,#0x110]
VADD.F32        S17, S0, S1
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
ADD             R7, R5, #0x3800
LDRB            R0, [R0,#0x28D]
ADD             R7, R7, #0x1A4
CMP             R0, #2
VLDRGT          S25, =1.4062
VLDRGT          S26, =0.0
BLE             loc_1B640C
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #8
BNE             loc_1B6290
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
LDRB            R0, [R5,#0xAAC]
CMP             R0, #0
BNE             loc_1B6290
ADD             R6, R5, #0x400
LDRH            R0, [R6,#0xB6]
MOV             R1, R0,LSL#30
MOV             R0, R0,LSL#29
MOV             R9, R1,LSR#31
MOV             R11, R0,LSR#31
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x13800
LDR             R0, [R5]
ADD             R1, R1, #0x3A4
LDR             R2, [R0,#0x74]
MOV             R0, R5
BLX             R2
LDRH            R2, [R6,#0xB6]
MOV             R0, #2
AND             R0, R0, R9,LSL#1
BIC             R3, R2, #2
MOV             R1, #4
ORR             R0, R0, R3
AND             R1, R1, R11,LSL#2
MOV             R2, R2,LSL#30
BIC             R0, R0, #4
ORR             R0, R0, R1
MOVS            R2, R2,LSR#31
STRH            R0, [R6,#0xB6]
BNE             loc_1B6290
VLDR            S2, [R5,#0x108]
VLDR            S1, [R5,#0x10C]
VLDR            S0, [R5,#0x110]
VSUB.F32        S20, S2, S16
VSUB.F32        S19, S1, S17
VSUB.F32        S23, S0, S18
LDR             R1, [R5,#0x164]
TST             R1, #7
BNE             loc_1B6290
VMOV.F32        S1, S20
VMOV.F32        S0, S19
BL              sub_4645C0
VMUL.F32        S0, S0, S25
LDR             R1, =0xC2700000
VSUB.F32        S0, S0, S24
VMOV            R0, S0
CMP             R0, R1
BHI             loc_1B6364
ADD             R1, R1, #0x80000000
CMP             R0, R1
BGT             loc_1B6364
VMOV.F32        S0, S19
VCMPE.F32       S0, S26
VMRS            APSR_nzcv, FPSCR
BCC             loc_1B6364
VMUL.F32        S3, S20, S20
LDR             R1, =0x46C80000
VMLA.F32        S3, S0, S0
VMLA.F32        S3, S23, S23
VMOV            R0, S3
CMP             R0, R1
BLT             loc_1B6364
LDR             R1, =0x4857B900
VMOV            R0, S3
CMP             R1, R0
BLT             loc_1B6364
VMOV.F32        S1, S20
VLDR            S2, [R6,#0x224]
VLDR            S4, [R6,#0x228]
VLDR            S5, [R6,#0x234]
VADD.F32        S2, S2, S1
VADD.F32        S4, S4, S1
VADD.F32        S1, S5, S0
VMUL.F32        S5, S2, S21
VCMPE.F32       S0, S5
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S5, S1
VMRSLS          APSR_nzcv, FPSCR
BLS             loc_1B6278
VMUL.F32        S5, S4, S21
VCMPE.F32       S5, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1B6240
VCMPE.F32       S5, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_1B6278
VDIV.F32        S5, S1, S21
VCMPE.F32       S5, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_1B625C
VCMPE.F32       S5, S4
VMRS            APSR_nzcv, FPSCR
BLS             loc_1B6278
VDIV.F32        S1, S0, S21
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_1B6290
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
BHI             loc_1B6290
CMP             R8, #0
BEQ             loc_1B63B8
VCMPE.F32       S22, S3
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S22, S3
MOVGT           R8, R5
LDR             R0, [R10]
ADD             R4, R4, #1
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, R4
BGT             loc_1B60AC
CMP             R8, #0
BEQ             loc_1B640C
LDR             R4, [R7]
CMP             R4, #0
CMPNE           R4, R8
BEQ             loc_1B62F0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BEQ             loc_1B63DC
MOV             R0, #0
LDR             R1, [R0]
LDR             R2, [R1,#0x48]
MOV             R1, #0
BLX             R2
STR             R8, [R7]
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #8
BEQ             loc_1B63F4
MOV             R0, #0
LDRB            R1, [R0,#9]
CMP             R1, #0
BNE             loc_1B644C
LDR             R1, [R0]
LDR             R2, [R1,#0x48]
ADD             SP, SP, #0xC
MOV             R1, #1
VPOP            {D8-D13}
POP             {R4-R11,LR}
BX              R2
DCFS 3.4028e38
DCFS 0.71111
DCFS 90.0
DCFS 60.0
DCFS 75.0
DCD off_6D1648
DCFS 1.4062
DCFS 0.0
DCD 0xC2700000
DCD 0x46C80000
DCD 0x4857B900
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
BEQ             loc_1B63A0
MOV             R0, #0
LDRB            R1, [R0,#9]
CMP             R1, #0
BEQ             loc_1B6290
LDR             R1, [R0]
LDR             R2, [R1,#0x48]
MOV             R1, #0
BLX             R2
B               loc_1B6290
LDRB            R0, [R5,#0xAAC]
CMP             R0, #0
CMPNE           R0, #3
LDREQ           R0, [R5,#0xAA8]
BNE             loc_1B637C
B               loc_1B6380
LDR             R0, [R5]
MOV             R8, R5
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
VMUL.F32        S22, S20, S20
VMLA.F32        S22, S19, S19
VMLA.F32        S22, S23, S23
B               loc_1B6290
LDRB            R0, [R4,#0xAAC]
CMP             R0, #0
CMPNE           R0, #3
LDREQ           R0, [R4,#0xAA8]
BEQ             loc_1B62E0
B               loc_1B62DC
LDRB            R0, [R8,#0xAAC]
CMP             R0, #0
CMPNE           R0, #3
LDREQ           R0, [R8,#0xAA8]
BNE             loc_1B630C
B               loc_1B6310
LDR             R4, [R7]
CMP             R4, #0
BEQ             loc_1B6444
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BEQ             loc_1B6458
MOV             R0, #0
LDR             R1, [R0]
LDR             R2, [R1,#0x48]
MOV             R1, #0
BLX             R2
MOV             R0, #0
STR             R0, [R7]
ADD             SP, SP, #0xC
VPOP            {D8-D13}
POP             {R4-R11,PC}
LDRB            R0, [R4,#0xAAC]
CMP             R0, #0
CMPNE           R0, #3
LDREQ           R0, [R4,#0xAA8]
BNE             loc_1B6430
B               loc_1B6434
