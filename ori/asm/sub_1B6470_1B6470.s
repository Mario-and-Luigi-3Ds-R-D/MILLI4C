PUSH            {R4-R11,LR}
MOV             R5, R0
ADD             R0, R0, #0x1000
MOV             R8, #0
VPUSH           {D8-D15}
SUB             SP, SP, #0x14
VLDR            S0, [R0,#0x1B0]
VLDR            S18, =0.71111
VLDR            S23, =3.4028e38
VMUL.F32        S0, S0, S18
BL              sub_464380
VLDR            S1, =60.0
VLDR            S21, =90.0
LDR             R0, [R5,#4]
LDR             R9, =off_6D1648
VMLA.F32        S21, S0, S1
VLDR            S0, =75.0
VLDR            S1, [R0,#0x10C]
VLDR            S19, [R0,#0x108]
LDR             R0, =0x43160000
VADD.F32        S20, S1, S0
VLDR            S0, =22.5
VLDR            S27, =160.0
VLDR            S30, =520.0
MOV             R4, #2
VADD.F32        S17, S21, S0
VSUB.F32        S16, S21, S0
VMOV            R1, S17
CMP             R1, R0
LDR             R1, =0x41F00000
VMOV            R0, S16
VLDRGT          S17, =150.0
CMP             R0, R1
LDR             R0, [R9]
VLDRLT          S16, =30.0
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
ADD             R7, R5, #0x3800
LDRB            R0, [R0,#0x28D]
ADD             R7, R7, #0x1A4
CMP             R0, #2
BLE             loc_1B6980
VSUB.F32        S0, S17, S16
VMOV.F32        S1, S16
VLDR            S2, =0.5
VLDR            S26, =1.4062
VLDR            S31, =0.0
VMUL.F32        S3, S0, S2
VMLA.F32        S1, S0, S2
VMUL.F32        S0, S16, S18
VMUL.F32        S29, S3, S18
VSTR            S0, [SP,#0x78+var_78]
VMUL.F32        S0, S17, S18
VMUL.F32        S28, S1, S18
VSTR            S0, [SP,#0x78+var_74]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #8
BNE             loc_1B68A8
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
LDRB            R0, [R5,#0xAAC]
CMP             R0, #3
BNE             loc_1B68A8
ADD             R6, R5, #0x400
LDRH            R0, [R6,#0xB6]
MOV             R1, R0,LSL#30
MOV             R0, R0,LSL#29
MOV             R10, R1,LSR#31
MOV             R11, R0,LSR#31
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x13800
LDR             R0, [R5]
ADD             R1, R1, #0x3A4
LDR             R2, [R0,#0x74]
MOV             R0, R5
BLX             R2
LDRH            R2, [R6,#0xB6]
MOV             R0, #2
AND             R0, R0, R10,LSL#1
BIC             R3, R2, #2
MOV             R1, #4
ORR             R0, R0, R3
AND             R1, R1, R11,LSL#2
MOV             R2, R2,LSL#30
BIC             R0, R0, #4
ORR             R0, R0, R1
MOVS            R2, R2,LSR#31
STRH            R0, [R6,#0xB6]
BNE             loc_1B68A8
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
BNE             loc_1B6628
LDRB            R1, [R5,#0xAAC]
CMP             R1, #3
LDREQ           R6, [R5,#0xAA8]
BEQ             loc_1B662C
MOV             R6, #0
VLDR            S0, [R5,#0x10C]
VLDR            S1, [R6,#0x250]
VLDR            S24, [R5,#0x108]
VADD.F32        S25, S0, S1
VSUB.F32        S22, S24, S19
VSUB.F32        S18, S25, S20
VMOV.F32        S1, S22
VMOV.F32        S0, S18
BL              sub_4645C0
VLDR            S1, [R6,#0x250]
VMOV.F32        S2, S0
VMUL.F32        S0, S22, S22
VADD.F32        S3, S1, S27
VMLA.F32        S0, S18, S18
VMUL.F32        S3, S3, S3
VMUL.F32        S18, S2, S26
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B68A8
VADD.F32        S1, S1, S30
VMUL.F32        S1, S1, S1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1B68A8
VCMPE.F32       S16, S18
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S18, S17
VMRSLS          APSR_nzcv, FPSCR
BHI             loc_1B66D4
VSUB.F32        S0, S18, S21
VCMPE.F32       S0, S31
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S1, S0
VNEGLT.F32      S1, S1
VCMPE.F32       S1, S23
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B66D4
VCMPE.F32       S0, S31
VMRS            APSR_nzcv, FPSCR
BGE             loc_1B68A0
VNEG.F32        S0, S0
B               loc_1B68A0
VMOV.F32        S0, S29
BL              sub_464380
VLDR            S1, [R6,#0x250]
VDIV.F32        S22, S1, S0
VMOV.F32        S0, S29
BL              sub_464318
VMOV.F32        S0, S28
NOP
BL              sub_464318
VMOV.F32        S1, S0
VMOV.F32        S0, S19
VMLS.F32        S0, S1, S22
VSTR            S0, [SP,#0x78+var_70]
VMOV.F32        S0, S28
BL              sub_464380
VMOV.F32        S2, S20
VMLS.F32        S2, S0, S22
VLDR            S0, [SP,#0x78+var_70]
VSUB.F32        S1, S24, S0
VSUB.F32        S0, S25, S2
BL              sub_4645C0
VMUL.F32        S0, S0, S26
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
VCMPECC.F32     S0, S17
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_1B67B4
VSUB.F32        S0, S18, S21
VMOV.F32        S1, S0
VCMPE.F32       S0, S31
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B67B4
VMOV.F32        S0, S1
VCMPE.F32       S0, S31
VMRS            APSR_nzcv, FPSCR
BGE             loc_1B68A0
B               loc_1B66CC
DCFS 3.4028e38
DCFS 0.71111
DCFS 60.0
DCFS 90.0
DCFS 75.0
DCFS 22.5
DCD 0x43160000
DCFS 150.0
DCD 0x41F00000
DCFS 30.0
DCFS 160.0
DCFS 520.0
DCD off_6D1648
DCFS 0.5
DCFS 1.4062
DCFS 0.0
VLDR            S0, [SP,#0x78+var_74]
BL              sub_464318
VMUL.F32        S22, S0, S30
VLDR            S0, [SP,#0x78+var_74]
BL              sub_464380
VMUL.F32        S2, S0, S30
VSTR            S2, [SP,#0x78+var_6C]
VLDR            S0, [SP,#0x78+var_78]
BL              sub_464318
VMUL.F32        S0, S0, S30
VSTR            S0, [SP,#0x78+var_70]
VLDR            S0, [SP,#0x78+var_78]
BL              sub_464380
VMUL.F32        S1, S0, S30
VADD.F32        S4, S22, S19
VLDR            S2, [SP,#0x78+var_6C]
VLDR            S0, [SP,#0x78+var_70]
VLDR            S3, [R6,#0x250]
VADD.F32        S2, S2, S20
VADD.F32        S5, S0, S19
VMUL.F32        S3, S3, S3
VADD.F32        S6, S1, S20
VSUB.F32        S1, S24, S4
VSUB.F32        S0, S25, S2
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S0, S0
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B6858
VSUB.F32        S0, S18, S21
VCMPE.F32       S0, S31
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S1, S0
VNEGLT.F32      S1, S1
VCMPE.F32       S1, S23
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B6858
VCMPE.F32       S0, S31
VMRS            APSR_nzcv, FPSCR
BGE             loc_1B68A0
B               loc_1B66CC
VSUB.F32        S1, S24, S5
VSUB.F32        S0, S25, S6
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S0, S0
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B68A8
VSUB.F32        S0, S18, S21
VCMPE.F32       S0, S31
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S1, S0
VNEGLT.F32      S1, S1
VCMPE.F32       S1, S23
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B68A8
VCMPE.F32       S0, S31
VMRS            APSR_nzcv, FPSCR
BLT             loc_1B66CC
VMOV.F32        S23, S0
MOV             R8, R5
LDR             R0, [R9]
ADD             R4, R4, #1
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, R4
BGT             loc_1B654C
CMP             R8, #0
BEQ             loc_1B6980
LDR             R4, [R7]
CMP             R4, #0
CMPNE           R4, R8
BEQ             loc_1B6908
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BEQ             loc_1B6950
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
BEQ             loc_1B6968
MOV             R0, #0
LDRB            R1, [R0,#9]
CMP             R1, #0
BNE             loc_1B69C0
LDR             R1, [R0]
LDR             R2, [R1,#0x48]
ADD             SP, SP, #0x14
MOV             R1, #1
VPOP            {D8-D15}
POP             {R4-R11,LR}
BX              R2
LDRB            R0, [R4,#0xAAC]
CMP             R0, #0
CMPNE           R0, #3
LDREQ           R0, [R4,#0xAA8]
BEQ             loc_1B68F8
B               loc_1B68F4
LDRB            R0, [R8,#0xAAC]
CMP             R0, #0
CMPNE           R0, #3
LDREQ           R0, [R8,#0xAA8]
BNE             loc_1B6924
B               loc_1B6928
LDR             R4, [R7]
CMP             R4, #0
BEQ             loc_1B69B8
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BEQ             loc_1B69CC
MOV             R0, #0
LDR             R1, [R0]
LDR             R2, [R1,#0x48]
MOV             R1, #0
BLX             R2
MOV             R0, #0
STR             R0, [R7]
ADD             SP, SP, #0x14
VPOP            {D8-D15}
POP             {R4-R11,PC}
LDRB            R0, [R4,#0xAAC]
CMP             R0, #0
CMPNE           R0, #3
LDREQ           R0, [R4,#0xAA8]
BNE             loc_1B69A4
B               loc_1B69A8
