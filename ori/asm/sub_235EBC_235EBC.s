PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R6, =off_6D1648
VPUSH           {D8-D15}
VMOV.F64        D10, D0
SUB             SP, SP, #0x88
LDR             R0, [R0,#4]
VLDR            S3, [R4,#0x7C]
VLDR            S0, [R4,#0x80]
ADD             R0, R0, #0x108
VLDM            R0, {S1-S2}
LDR             R0, [R6]
VADD.F32        S23, S1, S3
VADD.F32        S30, S2, S0
BL              sub_1E4614
VLDR            S0, =0.0
MOV             R5, R0
ADD             R0, R0, #0x108
VMOV.F32        S16, S0
LDM             R0, {R0-R2}
ADD             R3, SP, #0xE0+var_C8
VLDR            S31, =1.0
STM             R3, {R0-R2}
VMOV.F32        S17, S16
VMOV.F32        S18, S16
VMOV.F32        S19, S16
LDRB            R0, [R4,#0x9C]
CMP             R0, #0
BEQ             loc_235F4C
CMP             R0, #1
BEQ             loc_235F64
CMP             R0, #2
BEQ             loc_235F7C
CMP             R0, #3
BNE             loc_235FB4
B               loc_235FA0
ADD             R0, R5, #0x400
VLDR            S18, [R0,#0x234]
ADD             R0, R5, #0x400
ADD             R0, R0, #0x224
VLDM            R0, {S16-S17}
B               loc_235FB4
ADD             R0, R5, #0x400
VLDR            S2, [R0,#0x224]
VLDR            S1, [R0,#0x228]
VLDR            S17, [R0,#0x234]
VNEG.F32        S18, S2
B               loc_235F98
ADD             R0, R5, #0x400
VLDR            S1, [R0,#0x234]
ADD             R0, R5, #0x400
ADD             R0, R0, #0x224
VLDM            R0, {S2-S3}
VNEG.F32        S17, S2
VNEG.F32        S16, S3
VNEG.F32        S19, S1
B               loc_235FB4
ADD             R0, R5, #0x400
VLDR            S1, [R0,#0x234]
VLDR            S18, [R0,#0x228]
VLDR            S19, [R0,#0x224]
VNEG.F32        S16, S1
VLDR            S2, [R5,#0x10C]
VLDR            S0, [R5,#0x108]
ADD             R0, SP, #0xE0+var_88
VMOV.F32        S1, S2
VADD.F32        S8, S2, S18
VADD.F32        S4, S0, S17
VADD.F32        S3, S0, S16
VLDR            S0, =0.5
VADD.F32        S5, S1, S19
VSTR            S8, [SP,#0xE0+var_90]
VADD.F32        S7, S3, S4
VSTR            S5, [SP,#0xE0+var_94]
VADD.F32        S2, S8, S5
VSTM            R0, {S3-S4}
VLDR            S10, [R4,#0xB0]
VLDR            S9, [R4,#0xB4]
VLDR            S6, [R4,#0xB8]
VLDR            S1, [R4,#0xBC]
VADD.F32        S29, S10, S23
VADD.F32        S22, S9, S23
VADD.F32        S25, S6, S30
VADD.F32        S26, S1, S30
VMUL.F32        S7, S7, S0
VMUL.F32        S2, S2, S0
VADD.F32        S6, S29, S22
VCMPE.F32       S3, S22
VADD.F32        S1, S25, S26
VSTR            S7, [SP,#0xE0+var_78]
VSTR            S2, [SP,#0xE0+var_74]
VLDR            S2, =0.5
VMUL.F32        S28, S6, S0
VMUL.F32        S0, S1, S0
VLDR            S1, =3.1416
VSTR            S0, [SP,#0xE0+var_70]
VLDR            S0, =40.744
VMRS            APSR_nzcv, FPSCR
VADD.F32        S3, S21, S2
VADD.F32        S2, S20, S2
VMUL.F32        S6, S21, S1
VMUL.F32        S7, S20, S1
VMUL.F32        S3, S3, S1
VMUL.F32        S1, S2, S1
VMUL.F32        S2, S6, S0
VSTR            S2, [SP,#0xE0+var_68]
VMUL.F32        S2, S7, S0
VSTR            S2, [SP,#0xE0+var_60]
VMUL.F32        S2, S3, S0
VMUL.F32        S0, S1, S0
VSTR            S2, [SP,#0xE0+var_64]
VSTR            S0, [SP,#0xE0+var_5C]
BGT             loc_236564
VMOV.F32        S0, S29
VCMPE.F32       S4, S0
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S0, S26
VCMPECS.F32     S8, S0
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_236564
VMOV.F32        S0, S25
VCMPE.F32       S5, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_236564
LDR             R1, [R5,#0x5E0]
VCMPE.F32       S21, S20
VLDR            S0, =0.5
ORR             R1, R1, #0x400000
ADD             R0, R4, #0xA8
STR             R1, [R5,#0x5E0]
VMRS            APSR_nzcv, FPSCR
VLDM            R0, {S1-S2}
MOV             R8, #1
LDRB            R0, [R4,#0x9C]
VLDRLS          S24, [R4,#0xA4]
VLDRHI          S24, [R4,#0xA0]
VADD.F32        S1, S1, S2
CMP             R0, #0
CMPNE           R0, #2
VMUL.F32        S27, S1, S0
VSUB.F32        S0, S21, S20
VABS.F32        S0, S0
VSTR            S0, [SP,#0xE0+var_B8]
VLDR            S0, [SP,#0xE0+var_5C]
BEQ             loc_23616C
BL              sub_464380
VMUL.F32        S16, S0, S27
VLDR            S0, [SP,#0xE0+var_60]
BL              sub_464380
VMUL.F32        S0, S0, S24
VADD.F32        S0, S16, S0
VADD.F32        S16, S30, S0
VLDR            S0, [SP,#0xE0+var_64]
BL              sub_464380
VMUL.F32        S17, S0, S27
VLDR            S0, [SP,#0xE0+var_68]
BL              sub_464380
VMLA.F32        S17, S0, S24
VCMPE.F32       S16, S25
VMRS            APSR_nzcv, FPSCR
VADD.F32        S0, S17, S23
VCMPELS.F32     S26, S16
VMRSLS          APSR_nzcv, FPSCR
BHI             loc_236564
LDRB            R0, [R4,#0x9C]
CMP             R0, #1
BEQ             loc_2363A8
VCMPE.F32       S21, S20
VMRS            APSR_nzcv, FPSCR
BHI             loc_2363B4
MOV             R0, #0
B               loc_2363B8
NOP
BL              sub_464318
VMUL.F32        S18, S0, S27
VLDR            S0, [SP,#0xE0+var_60]
BL              sub_464318
VMUL.F32        S0, S0, S24
VADD.F32        S0, S18, S0
VADD.F32        S18, S23, S0
VLDR            S0, [SP,#0xE0+var_64]
BL              sub_464318
VMUL.F32        S19, S0, S27
VLDR            S0, [SP,#0xE0+var_68]
BL              sub_464318
VMLA.F32        S19, S0, S24
VCMPE.F32       S29, S18
VMRS            APSR_nzcv, FPSCR
VADD.F32        S0, S19, S23
VCMPELS.F32     S18, S22
VMRSLS          APSR_nzcv, FPSCR
BHI             loc_236564
LDRB            R0, [R4,#0x9C]
CMP             R0, #0
BEQ             loc_2361F4
VCMPE.F32       S21, S20
VMRS            APSR_nzcv, FPSCR
BHI             loc_236200
MOV             R0, #0
B               loc_236204
DCD off_6D1648
DCFS 1.0
DCFS 0.0
DCFS 0.5
DCFS 3.1416
DCFS 40.744
VCMPE.F32       S21, S20
VMRS            APSR_nzcv, FPSCR
BHI             loc_2361D4
MOV             R0, #1
LDR             R7, [SP,#0xE0+var_B8]
CMP             R7, #0x3F800000
EORGT           R0, R0, #1
CMP             R0, #0
BEQ             loc_2362E0
VLDR            S1, [SP,#0xE0+var_88]
VCMPE.F32       S1, S18
VMRS            APSR_nzcv, FPSCR
BHI             loc_236564
LDR             R0, [R4,#0x10C]
TST             R0, #0xC
BNE             loc_236258
VLDR            S1, [SP,#0xE0+var_78]
BIC             R0, R0, #0xC
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VCMPELT.F32     S28, S18
VMRSLT          APSR_nzcv, FPSCR
ORRGE           R0, R0, #4
ORRLT           R0, R0, #8
STR             R0, [R4,#0x10C]
MOV             R0, R0,LSL#28
CMP             R8, R0,LSR#30
BNE             loc_236294
VSUB.F32        S0, S18, S16
ADD             R1, SP, #0xE0+var_C8
VADD.F32        S0, S0, S31
VSTR            S0, [SP,#0xE0+var_C8]
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0]
LDR             R2, [R2,#0x6C]
BLX             R2
B               loc_236564
VSUB.F32        S0, S22, S18
VLDR            S1, =0.0
ADD             R1, SP, #0xE0+var_C8
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VMOV.F32        S1, S29
VADD.F32        S0, S1, S0
VSUB.F32        S0, S0, S17
VSUB.F32        S0, S0, S31
VSTR            S0, [SP,#0xE0+var_C8]
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0]
LDR             R2, [R2,#0x6C]
BLX             R2
B               loc_236564
VLDR            S1, [SP,#0xE0+var_84]
VCMPE.F32       S1, S18
VMRS            APSR_nzcv, FPSCR
BLT             loc_236564
LDR             R0, [R4,#0x10C]
TST             R0, #0xC
BNE             loc_236320
VLDR            S1, [SP,#0xE0+var_78]
BIC             R0, R0, #0xC
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VCMPEHI.F32     S28, S18
VMRSHI          APSR_nzcv, FPSCR
ORRLS           R0, R0, #4
ORRHI           R0, R0, #8
STR             R0, [R4,#0x10C]
MOV             R0, R0,LSL#28
CMP             R8, R0,LSR#30
BNE             loc_23635C
VSUB.F32        S0, S18, S17
ADD             R1, SP, #0xE0+var_C8
VSUB.F32        S0, S0, S31
VSTR            S0, [SP,#0xE0+var_C8]
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0]
LDR             R2, [R2,#0x6C]
BLX             R2
B               loc_236564
VMOV.F32        S0, S29
VLDR            S1, =0.0
ADD             R1, SP, #0xE0+var_C8
VSUB.F32        S0, S18, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSUB.F32        S0, S22, S0
VSUB.F32        S0, S0, S16
VADD.F32        S0, S0, S31
VSTR            S0, [SP,#0xE0+var_C8]
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0]
LDR             R2, [R2,#0x6C]
BLX             R2
B               loc_236564
VCMPE.F32       S21, S20
VMRS            APSR_nzcv, FPSCR
BHI             loc_236164
MOV             R0, #1
VLDR            S1, [SP,#0xE0+var_B8]
VMOV            R7, S1
CMP             R7, #0x3F800000
EORGT           R0, R0, #1
CMP             R0, #0
BEQ             loc_23649C
VLDR            S1, [SP,#0xE0+var_90]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BLT             loc_236564
LDR             R1, [R4,#0x10C]
TST             R1, #0xC
LDRNE           R0, [R4,#0x10C]
BNE             loc_236418
VLDR            S1, [SP,#0xE0+var_74]
BIC             R0, R1, #0xC
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VLDRHI          S0, [SP,#0xE0+var_70]
VCMPEHI.F32     S0, S16
VMRSHI          APSR_nzcv, FPSCR
ORRLS           R0, R0, #4
ORRHI           R0, R0, #8
STR             R0, [R4,#0x10C]
MOV             R0, R0,LSL#28
CMP             R8, R0,LSR#30
BNE             loc_236454
VSUB.F32        S0, S16, S18
ADD             R1, SP, #0xE0+var_C8
VSUB.F32        S0, S0, S31
VSTR            S0, [SP,#0xE0+var_C4]
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0]
LDR             R2, [R2,#0x6C]
BLX             R2
B               loc_236564
VSUB.F32        S0, S16, S26
VLDR            S1, =0.0
ADD             R1, SP, #0xE0+var_C8
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSUB.F32        S0, S25, S0
VSUB.F32        S0, S0, S19
VADD.F32        S0, S0, S31
VSTR            S0, [SP,#0xE0+var_C4]
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0]
LDR             R2, [R2,#0x6C]
BLX             R2
B               loc_236564
VLDR            S1, [SP,#0xE0+var_94]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_236564
LDR             R1, [R4,#0x10C]
TST             R1, #0xC
LDRNE           R0, [R4,#0x10C]
BNE             loc_2364E4
VLDR            S1, [SP,#0xE0+var_74]
BIC             R0, R1, #0xC
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VLDRLT          S0, [SP,#0xE0+var_70]
VCMPELT.F32     S0, S16
VMRSLT          APSR_nzcv, FPSCR
ORRGE           R0, R0, #4
ORRLT           R0, R0, #8
STR             R0, [R4,#0x10C]
MOV             R0, R0,LSL#28
CMP             R8, R0,LSR#30
BNE             loc_236520
VSUB.F32        S0, S16, S19
ADD             R1, SP, #0xE0+var_C8
VADD.F32        S0, S0, S31
VSTR            S0, [SP,#0xE0+var_C4]
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0]
LDR             R2, [R2,#0x6C]
BLX             R2
B               loc_236564
VSUB.F32        S0, S25, S16
VLDR            S1, =0.0
ADD             R1, SP, #0xE0+var_C8
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VADD.F32        S0, S26, S0
VSUB.F32        S0, S0, S18
VSUB.F32        S0, S0, S31
VSTR            S0, [SP,#0xE0+var_C4]
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0]
LDR             R2, [R2,#0x6C]
BLX             R2
LDRB            R0, [R4,#0x9C]
CMP             R0, #0
BNE             loc_2366B4
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
NOP
NOP
BL              sub_5C6058
CMP             R0, #0
NOP
BEQ             loc_2366B4
LDR             R0, [R6]
BL              sub_1E4604
ADD             R1, R0, #0x400
VLDR            S2, [R0,#0x108]
VLDR            S3, [R1,#0x224]
VLDR            S5, [R0,#0x10C]
VLDR            S17, =0.0
VADD.F32        S3, S2, S3
VLDR            S1, [R1,#0x228]
VLDR            S0, [R1,#0x234]
VADD.F32        S4, S5, S17
VADD.F32        S1, S2, S1
VADD.F32        S0, S5, S0
MOV             R6, R0
VCMPE.F32       S3, S22
VMRS            APSR_nzcv, FPSCR
BGT             loc_2366B4
VCMPE.F32       S1, S29
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S0, S26
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_2366B4
VCMPE.F32       S4, S25
VMRS            APSR_nzcv, FPSCR
BGT             loc_2366B4
VCMPE.F32       S21, S20
VLDR            S0, =0.5
ADD             R0, R4, #0xA8
VMRS            APSR_nzcv, FPSCR
VLDM            R0, {S1-S2}
VLDRLS          S16, [R4,#0xA4]
VLDRHI          S16, [R4,#0xA0]
VADD.F32        S1, S1, S2
VMUL.F32        S18, S1, S0
VLDR            S0, [SP,#0xE0+var_5C]
BL              sub_464318
VMUL.F32        S18, S0, S18
VLDR            S0, [SP,#0xE0+var_60]
BL              sub_464318
VMUL.F32        S0, S0, S16
VADD.F32        S16, S18, S0
VLDR            S0, [SP,#0xE0+var_64]
BL              sub_464318
VLDR            S0, [SP,#0xE0+var_68]
NOP
BL              sub_464318
VABS.F32        S0, S16
VCMPE.F32       S16, S17
VMRS            APSR_nzcv, FPSCR
VSUBCC.F32      S1, S28, S29
VSUBCS.F32      S1, S22, S28
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_2366B4
VDIV.F32        S2, S0, S1
VLDR            S0, [R5,#0x108]
VLDR            S1, [R6,#0x108]
ADD             R1, R6, #0x10C
VMOV            R0, S1
VSUB.F32        S0, S0, S1
LDM             R1, {R1,R2}
VSTR            S1, [SP,#0xE0+var_E0]
VMOV            S1, R0
ADD             R0, SP, #0xE0+var_DC
STM             R0, {R1,R2}
MOV             R1, SP
VMUL.F32        S0, S2, S0
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0xE0+var_E0]
LDR             R0, [R6]
LDR             R2, [R0,#0x6C]
MOV             R0, R6
BLX             R2
ADD             SP, SP, #0x88
VPOP            {D8-D15}
POP             {R4-R8,PC}
