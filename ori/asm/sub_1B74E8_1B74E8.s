PUSH            {R4-R11,LR}
MOV             R5, R0
ADD             R0, R0, #0x3800
ADD             R0, R0, #0x1A8
VPUSH           {D8-D15}
SUB             SP, SP, #0x1C
STR             R0, [SP,#0x80+var_74]
LDR             R4, [R0]
CMP             R4, #0
BEQ             loc_1B7538
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BNE             loc_1B7538
LDRB            R0, [R4,#0xAAC]
CMP             R0, #3
LDREQ           R6, [R4,#0xAA8]
BEQ             loc_1B753C
MOV             R6, #0
LDR             R0, [SP,#0x80+var_74]
VLDR            S0, [R6,#0x250]
VLDR            S22, =0.0
VLDR            S2, =-1.0
LDR             R0, [R0]
VLDR            S21, =1.0
VLDR            S1, [R0,#0x10C]
VLDR            S18, [R0,#0x108]
VADD.F32        S20, S1, S0
VMOV.F32        S0, S22
VLDR            S1, [R6,#0x244]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VCMP.F32        S1, S22
VMOVCC.F32      S0, S2
VMOVGT.F32      S0, S21
VMRS            APSR_nzcv, FPSCR
BNE             loc_1B7598
VLDR            S1, [R6,#0x248]
VCMPE.F32       S1, S22
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S2
VMOVGT.F32      S0, S21
VLDR            S1, [R6,#0x23C]
VLDR            S3, =1.5708
VLDR            S2, =1.309
VSUB.F32        S16, S1, S3
VMOV.F32        S19, S16
VMLA.F32        S19, S0, S2
VCMPE.F32       S16, S19
VMRS            APSR_nzcv, FPSCR
BLE             loc_1B75C8
VMOV.F32        S0, S16
VMOV.F32        S16, S19
VMOV.F32        S19, S0
VLDR            S0, =26.667
BL              sub_464380
VLDR            S2, [R6,#0x250]
VLDR            S1, =0.6545
VLDR            S24, =40.744
VDIV.F32        S17, S2, S0
VADD.F32        S0, S16, S1
VMUL.F32        S23, S0, S24
VMOV.F32        S0, S23
BL              sub_464318
VMOV.F32        S26, S18
VMLS.F32        S26, S0, S17
VMOV.F32        S0, S23
BL              sub_464380
VMOV.F32        S25, S20
LDR             R10, =off_6D1648
MOV             R9, #0
VLDR            S23, =3.4028e38
MOV             R4, #2
LDR             R0, [R10]
VMLS.F32        S25, S0, S17
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
ADD             R7, R5, #0x3800
LDRB            R0, [R0,#0x28D]
ADD             R7, R7, #0x1A4
CMP             R0, #2
BLE             loc_1B7AC4
VMUL.F32        S0, S19, S24
VMOV.F32        S30, S22
VLDR            S27, =6.2832
VLDR            S28, =360.0
VLDR            S29, =60.0
VSTR            S0, [SP,#0x80+var_70]
VMUL.F32        S0, S16, S24
VSTR            S0, [SP,#0x80+var_6C]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
BNE             loc_1B79EC
LDRB            R1, [R5,#0xAAC]
CMP             R1, #3
BNE             loc_1B79EC
LDR             R8, [R5,#0xAA8]
CMP             R8, #0
BEQ             loc_1B79EC
ADD             R11, R5, #0x400
LDRH            R1, [R11,#0xB6]
MOV             R0, R1,LSL#30
MOV             R1, R1,LSL#29
MOV             R0, R0,LSR#31
MOV             R1, R1,LSR#31
STRD            R0, R1, [SP,#0x80+var_80]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
LDR             R2, [R5]
ADD             R1, R0, #0x13800
ADD             R1, R1, #0x3A4
MOV             R0, R5
LDR             R2, [R2,#0x74]
BLX             R2
LDRH            R12, [R11,#0xB6]
LDRD            R0, R1, [SP,#0x80+var_80]
MOV             R2, #2
MOV             R3, #4
AND             R0, R2, R0,LSL#1
AND             R2, R3, R1,LSL#2
BIC             R1, R12, #2
ORR             R0, R0, R1
MOV             R3, R12,LSL#30
BIC             R0, R0, #4
ORR             R0, R0, R2
MOVS            R1, R3,LSR#31
STRH            R0, [R11,#0xB6]
BNE             loc_1B79EC
LDR             R0, [SP,#0x80+var_74]
LDR             R0, [R0]
CMP             R0, R5
BNE             loc_1B7778
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
BNE             loc_1B774C
LDRB            R0, [R5,#0xAAC]
CMP             R0, #0
BEQ             loc_1B7770
CMP             R0, #3
BEQ             loc_1B7770
MOV             R0, #0
LDRB            R1, [R0,#9]
CMP             R1, #0
BEQ             loc_1B79EC
LDR             R1, [R0]
LDR             R2, [R1,#0x48]
MOV             R1, #0
BLX             R2
B               loc_1B79EC
LDR             R0, [R5,#0xAA8]
B               loc_1B7750
ADD             R0, R5, #0x108
VLDR            S2, [R8,#0x250]
VLDR            S4, [R6,#0x250]
VLDR            S3, =185.0
VLDM            R0, {S0-S1}
VADD.F32        S24, S4, S3
VADD.F32        S2, S1, S2
VSUB.F32        S1, S0, S18
VSUB.F32        S31, S2, S20
VSTR            S1, [SP,#0x80+var_78]
VMOV.F32        S0, S31
BL              sub_4645C0
VLDR            S1, =0.024544
VMUL.F32        S22, S0, S1
VCMPE.F32       S22, S30
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S16, S30
VADDCC.F32      S22, S22, S27
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B77D8
VSUB.F32        S0, S22, S27
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S22, S0
VCMPE.F32       S16, S22
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S22, S19
VMRSLS          APSR_nzcv, FPSCR
BHI             loc_1B783C
VADD.F32        S3, S24, S28
VLDR            S0, [SP,#0x80+var_78]
VLDR            S1, [R8,#0x250]
VMUL.F32        S0, S0, S0
VADD.F32        S2, S1, S24
VSUB.F32        S3, S3, S29
VMLA.F32        S0, S31, S31
VMUL.F32        S2, S2, S2
VADD.F32        S1, S3, S1
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMUL.F32        S1, S1, S1
BLT             loc_1B783C
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_1B783C
VSUB.F32        S0, S22, S16
VCMPE.F32       S23, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_1B79E4
VLDR            S1, [R5,#0x108]
VLDR            S0, [R5,#0x10C]
VSUB.F32        S1, S1, S26
VSUB.F32        S0, S0, S25
VSTR            S1, [SP,#0x80+var_80]
VSTR            S0, [SP,#0x80+var_7C]
BL              sub_4645C0
VLDR            S1, =0.024544
VMUL.F32        S0, S0, S1
VCMPE.F32       S0, S30
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S16, S30
VADDCC.F32      S0, S0, S27
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B7888
VSUB.F32        S1, S0, S27
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
VCMPECC.F32     S0, S19
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_1B78EC
VLDR            S0, [SP,#0x80+var_80]
VADD.F32        S2, S24, S17
VADD.F32        S3, S24, S28
VMUL.F32        S0, S0, S0
VLDR            S1, [SP,#0x80+var_7C]
VMLA.F32        S0, S1, S1
VMUL.F32        S1, S2, S2
VSUB.F32        S2, S3, S29
VCMPE.F32       S0, S1
VADD.F32        S2, S2, S17
VMRS            APSR_nzcv, FPSCR
VMUL.F32        S1, S2, S2
BLT             loc_1B78EC
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_1B78EC
VSUB.F32        S0, S22, S16
VCMPE.F32       S23, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_1B79E4
VLDR            S0, [SP,#0x80+var_6C]
BL              sub_464318
VADD.F32        S1, S24, S28
VSUB.F32        S24, S1, S29
VMUL.F32        S1, S0, S24
VSTR            S1, [SP,#0x80+var_80]
VLDR            S0, [SP,#0x80+var_6C]
BL              sub_464380
VMUL.F32        S0, S0, S24
VSTR            S0, [SP,#0x80+var_7C]
VLDR            S0, [SP,#0x80+var_70]
BL              sub_464318
VMUL.F32        S2, S0, S24
VSTR            S2, [SP,#0x80+var_68]
VLDR            S0, [SP,#0x80+var_70]
BL              sub_464380
NOP
NOP
B               loc_1B7974
DCFS 0.0
DCFS -1.0
DCFS 1.0
DCFS 1.5708
DCFS 1.309
DCFS 26.667
DCFS 0.6545
DCFS 40.744
DCFS 3.4028e38
DCD off_6D1648
DCFS 6.2832
DCFS 360.0
DCFS 60.0
DCFS 185.0
DCFS 0.024544
VMUL.F32        S3, S0, S24
VLDR            S0, [R8,#0x250]
VLDR            S5, [SP,#0x80+var_78]
VLDR            S1, [SP,#0x80+var_80]
VADD.F32        S0, S0, S21
VLDR            S2, [SP,#0x80+var_68]
VSUB.F32        S1, S5, S1
VMUL.F32        S4, S0, S0
VLDR            S0, [SP,#0x80+var_7C]
VMUL.F32        S1, S1, S1
VSUB.F32        S0, S31, S0
VMLA.F32        S1, S0, S0
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
VSUBCC.F32      S0, S22, S16
VCMPECC.F32     S0, S23
VMRSCC          APSR_nzcv, FPSCR
BCC             loc_1B79E4
VSUB.F32        S1, S5, S2
VSUB.F32        S0, S31, S3
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S0, S0
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
VSUBCC.F32      S0, S22, S16
VCMPECC.F32     S0, S23
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_1B79EC
VMOV.F32        S23, S22
MOV             R9, R5
LDR             R0, [R10]
ADD             R4, R4, #1
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, R4
BGT             loc_1B7658
CMP             R9, #0
BEQ             loc_1B7AC4
LDR             R4, [R7]
CMP             R4, #0
CMPNE           R4, R9
BEQ             loc_1B7A4C
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BEQ             loc_1B7A94
MOV             R0, #0
LDR             R1, [R0]
LDR             R2, [R1,#0x48]
MOV             R1, #0
BLX             R2
STR             R9, [R7]
LDR             R0, [R9]
LDR             R1, [R0,#8]
MOV             R0, R9
BLX             R1
CMP             R0, #8
BEQ             loc_1B7AAC
MOV             R0, #0
LDRB            R1, [R0,#9]
CMP             R1, #0
BNE             loc_1B7B04
LDR             R1, [R0]
LDR             R2, [R1,#0x48]
ADD             SP, SP, #0x1C
MOV             R1, #1
VPOP            {D8-D15}
POP             {R4-R11,LR}
BX              R2
LDRB            R0, [R4,#0xAAC]
CMP             R0, #0
CMPNE           R0, #3
LDREQ           R0, [R4,#0xAA8]
BEQ             loc_1B7A3C
B               loc_1B7A38
LDRB            R0, [R9,#0xAAC]
CMP             R0, #0
CMPNE           R0, #3
LDREQ           R0, [R9,#0xAA8]
BNE             loc_1B7A68
B               loc_1B7A6C
LDR             R4, [R7]
CMP             R4, #0
BEQ             loc_1B7AFC
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BEQ             loc_1B7B10
MOV             R0, #0
LDR             R1, [R0]
LDR             R2, [R1,#0x48]
MOV             R1, #0
BLX             R2
MOV             R0, #0
STR             R0, [R7]
ADD             SP, SP, #0x1C
VPOP            {D8-D15}
POP             {R4-R11,PC}
LDRB            R0, [R4,#0xAAC]
CMP             R0, #0
CMPNE           R0, #3
LDREQ           R0, [R4,#0xAA8]
BNE             loc_1B7AE8
B               loc_1B7AEC
