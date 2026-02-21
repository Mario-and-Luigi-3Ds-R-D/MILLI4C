PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R0, #1
MOV             R6, #0
VPUSH           {D8-D15}
SUB             SP, SP, #0x78
MOV             R8, R6
STRH            R0, [SP,#0xD0+var_C8]
STRH            R0, [SP,#0xD0+var_C6]
STRB            R6, [SP,#0xD0+var_C4]
LDR             R0, [R5,#4]
VLDR            S30, =0.0
VLDR            S16, =1.0
ADD             R1, R0, #0x108
LDR             R0, [R0,#0x110]
LDM             R1, {R1,R2}
VMOV.F32        S19, S30
STR             R0, [SP,#0xD0+var_9C]
ADD             R0, SP, #0xD0+var_A4
STM             R0, {R1,R2}
MOV             R1, #0x12
STRH            R6, [SP,#0xD0+var_C8]
CMP             R6, R1
STRH            R1, [SP,#0xD0+var_C6]
BGE             loc_1AE510
LDR             R7, =0xBF800000
VLDR            S31, =360.0
VLDR            S28, =1.5708
VLDR            S27, =40.744
VLDR            S25, =90.0
VLDR            S18, =-90.0
VLDR            S20, =0.71111
VLDR            S26, =180.0
VLDR            S24, =85.0
ADD             R4, R5, #0x3800
ADD             R0, SP, #0xD0+var_C8
BL              sub_45AAB8
VSUB.F32        S0, S16, S0
VMUL.F32        S0, S0, S28
VMUL.F32        S0, S0, S27
BL              sub_464380
VSUB.F32        S21, S16, S0
VLDR            S0, =1.1765
VMUL.F32        S17, S21, S0
VMOV            R0, S17
CMP             R0, #0x3F800000
VMOVGT.F32      S17, S16
VMUL.F32        S0, S17, S25
VSTR            S0, [R4,#0x26C]
VADD.F32        S0, S0, S18
VMUL.F32        S0, S0, S20
BL              sub_464318
VMOV.F32        S1, S18
VMUL.F32        S23, S0, S26
VMLA.F32        S1, S17, S25
VMUL.F32        S0, S1, S20
BL              sub_464380
VMOV.F32        S1, S24
VMUL.F32        S3, S21, S31
VMUL.F32        S2, S19, S31
VMLA.F32        S1, S0, S24
VSTR            S1, [SP,#0xD0+var_BC]
VLDR            S0, [R4,#0x260]
VMOV            R0, S0
VNMUL.F32       S17, S3, S0
VNMUL.F32       S29, S2, S0
CMP             R0, R7
VMOVEQ.F32      S1, S26
VMOVNE.F32      S1, S30
VADD.F32        S22, S1, S17
VMUL.F32        S19, S22, S20
VMOV.F32        S0, S19
BL              sub_464318
VMUL.F32        S0, S0, S23
VSTR            S0, [SP,#0xD0+var_C0]
VMOV.F32        S0, S19
BL              sub_464380
VMUL.F32        S0, S0, S23
VSTR            S0, [SP,#0xD0+var_B8]
LDR             R0, [R5,#4]
VLDR            S1, [SP,#0xD0+var_C0]
ADD             R0, R0, #0x108
VLDR            S2, [R0]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0xD0+var_C0]
VLDR            S1, [R0,#4]
VLDR            S2, [SP,#0xD0+var_BC]
VADD.F32        S1, S2, S1
VSTR            S1, [SP,#0xD0+var_BC]
VLDR            S1, [R0,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xD0+var_B8]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0xD0+var_78
LDR             R0, [R0,#8]
STM             R3, {R0,R6}
ADD             R0, SP, #0xD0+var_80
STR             R6, [SP,#0xD0+var_70]
STM             R0, {R1,R2}
ADD             R3, SP, #0xD0+var_C0
STRB            R6, [SP,#0xD0+var_6C]
LDM             R3, {R0-R2}
ADD             R3, SP, #0xD0+var_68
STM             R3, {R0-R2}
ADD             R3, SP, #0xD0+var_80
LDR             R0, [SP,#0xD0+var_9C]
ADD             R2, SP, #0xD0+var_A4
ADD             R1, SP, #0xD0+var_68
STR             R0, [SP,#0xD0+var_60]
MOV             R0, R5
STR             R6, [SP,#0xD0+var_D0]
STR             R6, [SP,#0xD0+var_CC]
BL              sub_1AEC14
CMP             R0, #0
NOP
BNE             loc_1AE144
ADD             R3, SP, #0xD0+var_80
ADD             R2, SP, #0xD0+var_68
ADD             R1, SP, #0xD0+var_C0
MOV             R0, R5
STR             R6, [SP,#0xD0+var_D0]
STR             R6, [SP,#0xD0+var_CC]
BL              sub_1AEC14
CMP             R0, #0
NOP
BEQ             loc_1AE194
VMOV.F32        S0, S30
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S1, S17
VNEGHI.F32      S1, S1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1AE184
VCMPE.F32       S17, S0
LDR             R1, =0x42B40000
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S17, S17
VMOV            R0, S17
CMP             R0, R1
MOVLT           R8, #2
BLT             loc_1AE220
ADD             SP, SP, #0x78 ; 'x'
MOV             R0, #1
VPOP            {D8-D15}
POP             {R4-R8,PC}
ADD             R3, SP, #0xD0+var_C0
LDM             R3, {R0-R2}
ADD             R3, SP, #0xD0+var_A4
STM             R3, {R0-R2}
ADD             R0, SP, #0xD0+var_C8
BL              sub_45AA4C
LDR             R0, [R5,#4]
VLDR            S0, =23.0
ADD             R3, SP, #0xD0+var_90
ADD             R2, R0, #0x23400
ADD             R2, R2, #0x108
VMOV.F32        S19, S21
LDM             R2, {R0-R2}
VMOV            S1, R1
STM             R3, {R0-R2}
ADD             R2, SP, #0xD0+var_5C
ADD             R1, SP, #0xD0+var_90
VSUB.F32        S0, S1, S0
VSTR            S0, [SP,#0xD0+var_8C]
VMOV            S0, R0
VLDR            S1, [SP,#0xD0+var_C0]
MOV             R0, R5
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S30
VMRS            APSR_nzcv, FPSCR
VSUB.F32        S1, S22, S17
VNEGLT.F32      S0, S0
VADD.F32        S2, S1, S29
VMOV.F32        S1, S22
BL              sub_1B1FE0
CMP             R0, #0
NOP
BEQ             loc_1AE3F0
VMOV.F32        S0, S30
MOV             R8, #2
MOV             R1, #0
MOV             R0, #0xF
CMP             R1, R0
VLDRLT          S23, =270.0
STRH            R1, [SP,#0xD0+var_C8]
STRH            R0, [SP,#0xD0+var_C6]
VMULLT.F32      S17, S0, S23
STRB            R6, [SP,#0xD0+var_C4]
BGE             loc_1AE510
LDRSH           R0, [SP,#0xD0+var_C8]
CMP             R0, #0
VMOVLT.F32      S0, S30
BLT             loc_1AE280
LDRSH           R1, [SP,#0xD0+var_C6]
CMP             R1, R0
CMPGT           R1, #1
VMOVLE.F32      S0, S16
BLE             loc_1AE280
VMOV            S0, R1
VMOV            S1, R0
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VSUB.F32        S2, S0, S16
VDIV.F32        S0, S1, S2
VLDR            S1, =1.5708
VSUB.F32        S0, S16, S0
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S27
BL              sub_464380
VSUB.F32        S19, S16, S0
VLDR            S1, =1.6667
VMUL.F32        S28, S19, S1
VMOV            R0, S28
CMP             R0, #0x3F800000
VMOVGT.F32      S28, S16
VMUL.F32        S0, S28, S25
VSTR            S0, [R4,#0x26C]
VADD.F32        S0, S0, S18
VMUL.F32        S0, S0, S20
BL              sub_464318
VMOV.F32        S1, S18
VMUL.F32        S29, S0, S26
VMLA.F32        S1, S28, S25
VMUL.F32        S0, S1, S20
BL              sub_464380
VMOV.F32        S2, S24
VMUL.F32        S1, S19, S23
VMLA.F32        S2, S0, S24
VSTR            S2, [SP,#0xD0+var_BC]
VLDR            S0, [R4,#0x260]
VNMUL.F32       S21, S1, S0
VNMUL.F32       S22, S17, S0
VADD.F32        S19, S18, S21
VMUL.F32        S31, S19, S20
VMOV.F32        S0, S31
BL              sub_464318
VMUL.F32        S0, S0, S29
VSTR            S0, [SP,#0xD0+var_C0]
VMOV.F32        S0, S31
BL              sub_464380
VMUL.F32        S1, S0, S29
VSTR            S1, [SP,#0xD0+var_B8]
B               loc_1AE35C
DCFS 0.0
DCFS 1.0
DCD 0xBF800000
DCFS 360.0
DCFS 1.5708
DCFS 40.744
DCFS 90.0
DCFS -90.0
DCFS 0.71111
DCFS 180.0
DCFS 85.0
DCFS 1.1765
DCD 0x42B40000
DCFS 23.0
DCFS 270.0
DCFS 1.6667
LDR             R0, [R5,#4]
VLDR            S0, [SP,#0xD0+var_C0]
ADD             R0, R0, #0x108
VLDR            S2, [R0]
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0xD0+var_C0]
VLDR            S0, [R0,#4]
VLDR            S2, [SP,#0xD0+var_BC]
VADD.F32        S0, S2, S0
VSTR            S0, [SP,#0xD0+var_BC]
VLDR            S0, [R0,#8]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0xD0+var_B8]
BL              sub_4635D8
VLDM            R0, {S0-S2}
ADD             R0, SP, #0xD0+var_88
ADD             R3, SP, #0xD0+var_C0
VSTM            R0, {S0-S2}
STR             R6, [SP,#0xD0+var_7C]
STR             R6, [SP,#0xD0+var_78]
STRB            R6, [SP,#0xD0+var_74]
LDM             R3, {R0-R2}
ADD             R3, SP, #0xD0+var_6C
STM             R3, {R0-R2}
ADD             R3, SP, #0xD0+var_88
VLDR            S0, [SP,#0xD0+var_9C]
ADD             R2, SP, #0xD0+var_A4
VSTR            S0, [SP,#0xD0+var_64]
ADD             R1, SP, #0xD0+var_6C
MOV             R0, R5
STR             R6, [SP,#0xD0+var_D0]
STR             R6, [SP,#0xD0+var_CC]
BL              sub_1AEC14
CMP             R0, #0
NOP
BEQ             loc_1AE404
B               loc_1AE4F0
LDRSH           R0, [SP,#0xD0+var_C8]
LDRSH           R1, [SP,#0xD0+var_C6]
CMP             R0, R1
BLT             loc_1ADFD4
B               loc_1AE510
ADD             R3, SP, #0xD0+var_88
ADD             R2, SP, #0xD0+var_6C
ADD             R1, SP, #0xD0+var_C0
MOV             R0, R5
STR             R6, [SP,#0xD0+var_D0]
STR             R6, [SP,#0xD0+var_CC]
BL              sub_1AEC14
CMP             R0, #0
NOP
BNE             loc_1AE4F0
ADD             R3, SP, #0xD0+var_C0
LDM             R3, {R0-R2}
ADD             R3, SP, #0xD0+var_A4
STM             R3, {R0-R2}
LDRB            R0, [SP,#0xD0+var_C4]
CMP             R0, #0
BNE             loc_1AE488
LDRH            R0, [SP,#0xD0+var_C8]
ADD             R0, R0, #1
SXTH            R0, R0
VMOV            S0, R0
STRH            R0, [SP,#0xD0+var_C8]
LDRSH           R1, [SP,#0xD0+var_C6]
VCVT.F32.S32    S1, S0
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSUB.F32        S0, S0, S16
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1AE488
CMP             R1, R0
MOVLE           R0, R1
STRH            R0, [SP,#0xD0+var_C8]
LDR             R0, [R5,#4]
VLDR            S0, =23.0
ADD             R3, SP, #0xD0+var_98
ADD             R2, R0, #0x23400
ADD             R2, R2, #0x108
LDM             R2, {R0-R2}
VMOV            S1, R1
STM             R3, {R0-R2}
ADD             R2, SP, #0xD0+var_60
ADD             R1, SP, #0xD0+var_98
VSUB.F32        S0, S1, S0
VSTR            S0, [SP,#0xD0+var_94]
VMOV            S0, R0
VLDR            S1, [SP,#0xD0+var_C0]
MOV             R0, R5
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S30
VMRS            APSR_nzcv, FPSCR
VSUB.F32        S1, S19, S21
VNEGLT.F32      S0, S0
VADD.F32        S2, S1, S22
VMOV.F32        S1, S19
BL              sub_1B1FE0
CMP             R0, #0
NOP
BEQ             loc_1AE500
ADD             SP, SP, #0x78 ; 'x'
MOV             R0, #3
VPOP            {D8-D15}
POP             {R4-R8,PC}
LDRSH           R0, [SP,#0xD0+var_C8]
LDRSH           R1, [SP,#0xD0+var_C6]
CMP             R0, R1
BLT             loc_1AE244
ADD             SP, SP, #0x78 ; 'x'
MOV             R0, R8
VPOP            {D8-D15}
POP             {R4-R8,PC}
