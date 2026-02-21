PUSH            {R4-R11,LR}
MOV             R4, R0
LDR             R5, =off_6CE098
VPUSH           {D8-D12}
VMOV.F32        S17, S0
SUB             SP, SP, #0x94
VLDR            S0, [R0,#0x3C]
VLDR            S1, [R0,#8]
LDR             R0, [R5]
LDR             R1, [R4,#0xA74]
VMUL.F32        S0, S0, S1
LDR             R8, [R0,#0x8C]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x394
VLDR            S1, [R8,#0x194]
VLDR            S2, [R8,#0x1A8]
VMUL.F32        S16, S0, S17
VLDR            S0, [R1,#0x2C]
LDR             R1, [R0,#0x25C]
LDR             R1, [R1,#-0xC]
VLDR            S3, [R1,#0x90]
VADD.F32        S1, S3, S1
VADD.F32        S1, S1, S2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_2593DC
LDR             R0, [R0,#0x258]
VLDR            S1, [R8,#0x184]
LDR             R0, [R0]
VLDR            S2, [R0,#0x90]
VADD.F32        S1, S2, S1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVLS           R0, #1
BLS             loc_2593E0
MOV             R0, #0
LDR             R1, =off_6CE970
LDR             R2, =0x19B192
VLDR            S21, =0.0
LDR             R1, [R1]
LDRB            R2, [R2,R1]; loc_19B190
CMP             R2, #0
CMPNE           R0, #0
BEQ             loc_259458
LDR             R0, [R4,#0xB5C]
VLDR            S0, [R8,#0x26C]
VLDR            S2, [R8,#0x270]
VLDR            S3, [R0,#8]
LDR             R0, [R0]
VSUB.F32        S2, S2, S0
VLDR            S1, [R0,#0x1D0]
VLDR            S4, [R0,#0x1D4]
ADD             R0, R4, #0x800
VSUB.F32        S3, S3, S1
VSUB.F32        S4, S4, S1
VDIV.F32        S1, S3, S4
VMLA.F32        S0, S2, S1
VLDR            S1, [R0,#0x36C]
ADD             R0, R1, #0x100000
ADD             R0, R0, #0x9B000
VLDR            S2, [R0,#(loc_19B134 - 0x19B000)]
VMUL.F32        S1, S0, S1
VMOV.F32        S0, S21
VMUL.F32        S2, S2, S1
VMOV.F32        S1, S0
B               loc_259468
NOP
BL              sub_4635D8
VLDM            R0!, {S2}
VLDM            R0, {S0-S1}
VLDR            S3, [R4,#0x70]
VMUL.F32        S2, S2, S17
VLDR            S22, =1.0
VMUL.F32        S0, S0, S17
VMUL.F32        S1, S1, S17
VADD.F32        S2, S3, S2
VSTR            S2, [R4,#0x70]
VLDR            S2, [R4,#0x74]
VADD.F32        S0, S2, S0
VSTR            S0, [R4,#0x74]
VLDR            S0, [R4,#0x78]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x78]
VLDR            S1, [R8,#0x278]
VLDR            S0, [R4,#0x70]
VSUB.F32        S1, S22, S1
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#0x70]
VLDR            S2, [R8,#0x274]
VNEG.F32        S1, S2
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S2
BGT             loc_2594D4
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S1
ADD             R6, SP, #0xE0+var_CC
ADD             R11, SP, #0xE0+var_B0
MOV             R7, #0
VSTR            S0, [R4,#0x70]
VSTR            S16, [R4,#0x78]
LDR             R1, [R5]
VLDR            S16, =3.4028e38
ADD             R5, R1, #0x12400
LDR             R0, [R1,#0x8C]
ADD             R5, R5, #0x354
VLDR            S18, [R0,#0x1E4]
VLDR            S1, [R0,#0x1E8]
LDR             R0, [R4,#0xB5C]
VSUB.F32        S1, S1, S18
VLDR            S2, [R0,#8]
LDR             R0, [R0]
VLDR            S0, [R0,#0x1D0]
VLDR            S3, [R0,#0x1D4]
LDR             R0, [R4,#0xA74]
VSUB.F32        S2, S2, S0
VSUB.F32        S3, S3, S0
LDRD            R2, R3, [R0,#0x24]
LDR             R0, [R0,#0x2C]
STRD            R2, R3, [SP,#0xE0+var_D8]
STR             R0, [SP,#0xE0+var_D0]
VSTR            S21, [SP,#0xE0+var_D4]
LDR             R3, [SP,#0xE0+var_D0]
STR             R2, [SP,#0xE0+var_98]
VDIV.F32        S0, S2, S3
VSTR            S21, [SP,#0xE0+var_94]
ADD             R0, R4, #0x70 ; 'p'
STR             R3, [SP,#0xE0+var_90]
VMLA.F32        S18, S1, S0
VSTR            S18, [SP,#0xE0+var_8C]
LDM             R0, {R0,R2,R3}
VMOV            S0, R0
STM             R6, {R0,R2,R3}
VMOV            S2, R3
VLDR            S1, [R4,#8]
ADD             R0, SP, #0xE0+var_98
VMUL.F32        S0, S0, S1
VMOV            S1, R2
VMUL.F32        S2, S2, S17
VMUL.F32        S1, S1, S17
VSTR            S0, [SP,#0xE0+var_CC]
VMUL.F32        S0, S0, S17
VSTR            S18, [SP,#0xE0+var_7C]
VSTM            R11, {S0-S2}
BL              sub_2507B8
CMP             R0, #0
MOVEQ           R2, #0
BEQ             loc_2595B0
MOVS            R1, R0,ASR#16
MOVEQ           R2, #2
MOVNE           R2, #1
SXTH            R1, R0
VMOV            S1, R1
MOV             R0, R0,ASR#16
VMOV            S0, R0
VLDR            S23, =-1800.0
VLDR            S24, =-4712.4
VLDR            S4, [SP,#0xE0+var_98]
VCVT.F32.S32    S1, S1
ADD             R1, SP, #0xE0+var_94
VCVT.F32.S32    S0, S0
VLDM            R1, {S2-S3}
ADD             R1, SP, #0xE0+var_88
MOV             R12, #4
VADD.F32        S2, S2, S21
VMUL.F32        S1, S1, S23
VMUL.F32        S0, S0, S24
VADD.F32        S1, S4, S1
VADD.F32        S0, S3, S0
VCMPE.F32       S1, S21
VSTR            S0, [SP,#0xE0+var_80]
VSTM            R1, {S1-S2}
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S0, S21
MOVGT           R0, #1
MOVLE           R0, #0
VMRS            APSR_nzcv, FPSCR
MOVGT           R1, #1
MOVLE           R1, #0
ORR             R0, R0, R1,LSL#1
ADD             R1, SP, #0xE0+var_88
STR             R1, [SP,#0xE0+var_78]
LDM             R5, {R1,R3}
LDR             R2, [R1,R2,LSL#2]
ADD             R2, R2, R3
LDR             R3, [R2,R0,LSL#3]
ADD             R0, R12, R0,LSL#3
LDR             R0, [R2,R0]
ADD             R5, R2, R3
ADD             R3, R3, R2
ADD             R1, R0, R0,LSL#2
ADD             R0, R1, R0,LSL#3
ADD             R6, R3, R0,LSL#2
CMP             R5, R6
ADDNE           R9, SP, #0xE0+var_68
ADDNE           R10, SP, #0xE0+var_5C
BEQ             loc_2596B4
STR             R9, [SP,#0xE0+var_DC]; float
LDR             R0, [SP,#0xE0+var_78]; int
ADD             R3, SP, #0xE0+var_C0; int
MOV             R2, R5; int
MOV             R1, R11; int
STR             R10, [SP,#0xE0+var_E0]; int
BL              sub_2535D0
CMP             R0, #0
VLDRNE          S0, [SP,#0xE0+var_C0]
VCMPENE.F32     S16, S0
VMRSNE          APSR_nzcv, FPSCR
BLE             loc_2596A8
VMOV.F32        S16, S0
VLDR            S19, [SP,#0xE0+var_68]
VLDR            S20, [SP,#0xE0+var_60]
MOV             R7, R5
ADD             R5, R5, #0x34 ; '4'
CMP             R5, R6
BNE             loc_259668
LDR             R1, =0x7F7FFFFF
VMOV            R0, S16
CMP             R0, R1
BEQ             loc_2597D8
LDR             R0, [R4,#0xA74]
ADD             R0, R0, #0x24 ; '$'
BL              sub_2507B8
VMOV.F32        S0, S16
VMOV            R1, S0
CMP             R1, #0x34000000
BGE             loc_259810
SXTH            R1, R0
VMOV            S0, R1
MOV             R0, R0,ASR#16
VMOV            S1, R0
LDR             R0, [R4,#0xA74]
VCVT.F32.S32    S0, S0
ADD             R0, R0, #0x24 ; '$'
VCVT.F32.S32    S1, S1
VLDM            R0, {S3-S4}
VLDR            S2, [R0,#8]
VMUL.F32        S0, S0, S23
VMUL.F32        S1, S1, S24
VSUB.F32        S0, S19, S0
VSUB.F32        S1, S20, S1
VSUB.F32        S3, S0, S3
VSUB.F32        S0, S21, S4
VSUB.F32        S2, S1, S2
VMUL.F32        S1, S3, S3
VMLA.F32        S1, S0, S0
VMLA.F32        S1, S2, S2
VSQRT.F32       S0, S1
VLDR            S1, =1.1921e-7
VADD.F32        S1, S18, S1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_25985C
VLDR            S1, [SP,#0xE0+var_CC]
ADD             R0, SP, #0xE0+var_C8
VSUB.F32        S0, S18, S0
VMUL.F32        S1, S1, S1
VLDM            R0, {S2-S3}
VMLA.F32        S1, S2, S2
VMLA.F32        S1, S3, S3
VLDR            S3, [R7,#0x2C]
VSQRT.F32       S2, S1
VDIV.F32        S1, S0, S2
VLDR            S2, [R7,#0x24]
VMUL.F32        S2, S2, S0
VADD.F32        S16, S1, S16
VLDR            S1, [R7,#0x28]
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S3, S0
VLDR            S3, [SP,#0xE0+var_D8]
VADD.F32        S2, S3, S2
VSTR            S2, [SP,#0xE0+var_D8]
VLDR            S2, [SP,#0xE0+var_D4]
VADD.F32        S1, S2, S1
VSTR            S1, [SP,#0xE0+var_D4]
VLDR            S1, [SP,#0xE0+var_D0]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0xE0+var_D0]
B               loc_25985C
DCD off_6CE098
DCD off_6CE970
DCFS 0.0
DCD 0x19B192
DCFS 1.0
DCFS 3.4028e38
DCFS -1800.0
DCFS -4712.4
DCD 0x7F7FFFFF
DCFS 1.1921e-7
ADD             R0, SP, #0xE0+var_CC
VLDR            S3, [SP,#0xE0+var_D8]
VLDM            R0, {S0-S2}
VMUL.F32        S0, S0, S17
VMUL.F32        S1, S1, S17
VMUL.F32        S2, S2, S17
VADD.F32        S0, S3, S0
VSTR            S0, [SP,#0xE0+var_D8]
VLDR            S0, [SP,#0xE0+var_D4]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xE0+var_D4]
VLDR            S0, [SP,#0xE0+var_D0]
VADD.F32        S0, S0, S2
B               loc_2599A4
VLDR            S2, [SP,#0xE0+var_CC]
VLDR            S0, [SP,#0xE0+var_C4]
VLDR            S1, [SP,#0xE0+var_C8]
VMUL.F32        S3, S2, S17
VMUL.F32        S2, S0, S17
VMOV.F32        S0, S16
VMUL.F32        S1, S1, S17
VMUL.F32        S3, S3, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S2, S0
VLDR            S2, [SP,#0xE0+var_D8]
VADD.F32        S2, S2, S3
VSTR            S2, [SP,#0xE0+var_D8]
VLDR            S2, [SP,#0xE0+var_D4]
VADD.F32        S1, S2, S1
VSTR            S1, [SP,#0xE0+var_D4]
VLDR            S1, [SP,#0xE0+var_D0]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0xE0+var_D0]
VLDR            S2, [R7,#0x24]
VLDR            S1, [SP,#0xE0+var_CC]
VLDR            S3, [R7,#0x28]
VLDR            S5, [SP,#0xE0+var_C8]
VMUL.F32        S0, S2, S1
VLDR            S4, [R7,#0x2C]
VLDR            S6, [SP,#0xE0+var_C4]
VMLA.F32        S0, S3, S5
VMLA.F32        S0, S4, S6
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
BGT             loc_259944
VNEGCC.F32      S0, S0
VLDR            S7, [R8,#0x3A4]
VCMPE.F32       S0, S7
VMRS            APSR_nzcv, FPSCR
BHI             loc_2598D4
VMUL.F32        S0, S1, S2
ADD             R0, SP, #0xE0+var_88
VMLA.F32        S0, S5, S3
VMLA.F32        S0, S6, S4
VLDR            S4, [R7,#0x2C]
VMUL.F32        S2, S2, S0
VMUL.F32        S4, S4, S0
VMUL.F32        S3, S3, S0
VSUB.F32        S0, S1, S2
VSUB.F32        S2, S6, S4
VSUB.F32        S1, S5, S3
VSTM            R0, {S0-S2}
B               loc_2598F0
VLDR            S0, [R8,#0x3A8]
VMOV.F32        S2, S21
ADD             R2, SP, #0xE0+var_88
VMOV.F32        S1, S0
ADD             R1, R7, #0x24 ; '$'
ADD             R0, SP, #0xE0+var_CC
BL              sub_253710
ADD             R3, SP, #0xE0+var_88
VMOV.F32        S18, S21
LDM             R3, {R0-R2}
ADD             R3, R4, #0x70 ; 'p'
VMOV            S0, R2
STM             R3, {R0-R2}
VCMPE.F32       S18, S0
VMRS            APSR_nzcv, FPSCR
VMOV            S2, R0
VMOVLE.F32      S0, S18
VSTR            S0, [R4,#0x78]
VLDR            S0, [R8,#0x274]
VNEG.F32        S1, S0
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_259940
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S1
VMOVCS          S0, R0
VSTR            S0, [R4,#0x70]
VMOV.F32        S2, S16
VMOV.F32        S0, S21
VCMPE.F32       S2, S22
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S2, S22
BGT             loc_259968
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S2, S0
ADD             R0, R4, #0x70 ; 'p'
VSUB.F32        S0, S22, S2
VLDM            R0, {S1-S3}
VMUL.F32        S0, S0, S17
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VLDR            S3, [SP,#0xE0+var_D8]
VADD.F32        S1, S3, S1
VSTR            S1, [SP,#0xE0+var_D8]
VLDR            S1, [SP,#0xE0+var_D4]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0xE0+var_D4]
VLDR            S1, [SP,#0xE0+var_D0]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0xE0+var_D0]
LDR             R0, [R4,#0xB5C]
LDR             R0, [R0,#8]
STR             R0, [SP,#0xE0+var_D4]
LDR             R0, [R4,#0xA74]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0xE0+var_D8
BLX             R2
BL              sub_4635D8
VLDR            S1, [R0]
VLDR            S0, [R4,#0x70]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_259A08
VLDR            S1, [R4,#0x74]
VLDR            S2, [R0,#4]
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BNE             loc_259A08
VLDR            S1, [R4,#0x78]
VLDR            S2, [R0,#8]
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BEQ             loc_259BD4
VMUL.F32        S1, S0, S0
VLDR            S2, [R4,#0x74]
VLDR            S0, [R4,#0x78]
LDR             R0, [R4,#0xB5C]
VMLA.F32        S1, S2, S2
VMLA.F32        S1, S0, S0
VLDR            S0, [R0,#8]
LDR             R0, =dword_6CE0B0
LDR             R0, [R0]
TST             R0, #1
VSQRT.F32       S2, S1
VDIV.F32        S1, S2, S0
VMUL.F32        S19, S1, S17
BNE             loc_259A68
LDR             R0, =dword_6CE0B0
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_259A68
LDR             R0, =flt_6E1A78
VSTM            R0, {S21-S22}
VSTR            S21, [R0,#(flt_6E1A80 - 0x6E1A78)]
LDR             R0, =dword_6CE0B0
NOP
LDR             R0, =flt_6E1A78
VLDR            S4, [R4,#0x74]
VLDR            S7, [R4,#0x78]
VLDR            S6, [R4,#0x70]
VLDR            S3, [R0,#(flt_6E1A80 - 0x6E1A78)]
VLDR            S5, [R0]
VLDR            S8, [R0,#(flt_6E1A7C - 0x6E1A78)]
VMUL.F32        S2, S4, S3
VMUL.F32        S1, S7, S5
VMUL.F32        S0, S6, S8
ADD             R1, SP, #0xE0+var_80
ADD             R0, SP, #0xE0+var_98
VMLS.F32        S2, S7, S8
VMLS.F32        S1, S6, S3
VMLS.F32        S0, S4, S5
VMUL.F32        S3, S2, S2
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S0, S0
VSQRT.F32       S4, S3
VDIV.F32        S3, S22, S4
VMUL.F32        S17, S1, S3
VLDR            S1, =40.744
VMUL.F32        S16, S0, S3
VMUL.F32        S18, S2, S3
VNMUL.F32       S0, S1, S19
VLDR            S2, =0.024544
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
BL              sub_462B20
VMUL.F32        S1, S18, S18
VLDR            S0, [SP,#0xE0+var_80]
VLDR            S8, [SP,#0xE0+var_98]
ADD             R0, SP, #0xE0+var_C8
VSUB.F32        S7, S22, S0
VMOV.F32        S12, S0
ADD             R2, R4, #0x800
ADD             R2, R2, #0x2C4
ADD             R1, SP, #0xE0+var_C8
VMLA.F32        S1, S17, S17
VMLA.F32        S1, S16, S16
VSQRT.F32       S3, S1
VDIV.F32        S2, S22, S3
VMUL.F32        S1, S17, S2
VMUL.F32        S3, S18, S2
VMUL.F32        S2, S16, S2
VMUL.F32        S5, S7, S1
VMUL.F32        S10, S3, S3
VMUL.F32        S4, S7, S3
VMUL.F32        S13, S1, S1
VMUL.F32        S11, S2, S2
VMUL.F32        S5, S5, S2
VMLA.F32        S12, S7, S10
VMUL.F32        S6, S4, S1
VMUL.F32        S9, S4, S2
VMOV.F32        S10, S5
VMLA.F32        S5, S8, S3
VMOV.F32        S4, S9
VMLA.F32        S9, S8, S1
VMLS.F32        S10, S8, S3
VMOV.F32        S3, S0
VMLA.F32        S0, S7, S11
VMLS.F32        S4, S8, S1
VMLA.F32        S3, S7, S13
VMOV.F32        S13, S6
VMLA.F32        S6, S8, S2
VSTR            S9, [SP,#0xE0+var_C0]
VMLS.F32        S13, S8, S2
VSTM            R0, {S12-S13}
ADD             R0, SP, #0xE0+var_A8
VSTR            S21, [SP,#0xE0+var_BC]
VSTR            S6, [SP,#0xE0+var_B8]
VSTR            S3, [SP,#0xE0+var_B4]
VSTR            S10, [SP,#0xE0+var_B0]
VSTR            S21, [SP,#0xE0+var_AC]
VSTR            S0, [SP,#0xE0+var_A0]
VSTM            R0, {S4-S5}
MOV             R0, R2
VSTR            S21, [SP,#0xE0+var_9C]
BL              sub_141F30
ADD             R1, R4, #0x800
ADD             R1, R1, #0x2C4
LDR             R0, [R4,#0xA74]
LDM             R1, {R1-R3,R5-R8,R12}
ADD             R0, R0, #0x1800
ADD             R9, R0, #0x144
ADD             R0, R0, #0x164
STM             R9, {R1-R3,R5-R8,R12}
ADD             R1, R4, #0x800
ADD             R1, R1, #0x2E4
LDM             R1, {R1-R3,R12}
STM             R0, {R1-R3,R12}
ADD             SP, SP, #0x94
MOV             R0, R4
VPOP            {D8-D12}
POP             {R4-R11,LR}
B               sub_258628
