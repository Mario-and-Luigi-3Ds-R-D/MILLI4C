PUSH            {R4-R8,LR}
MOV             R4, R0
VPUSH           {D8-D12}
LDRSH           R0, [R0,#0xF4]
LDRSH           R1, [R4,#0xF6]
ADD             R0, R0, #1
CMP             R1, R0
BGT             loc_158FCC
LDR             R0, [R4,#4]
BL              sub_50581C
CMP             R0, #0
BNE             loc_158FCC
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x28]
MOV             R0, R4
BLX             R2
LDR             R0, [R4,#4]
LDR             R1, [R0,#0xB10]
ORR             R1, R1, #1
STR             R1, [R0,#0xB10]
LDRSH           R1, [R4,#0xF4]
LDRSH           R0, [R4,#0xF6]
ADD             R1, R1, #1
CMP             R1, R0
BGE             loc_159530
VMOV            S0, R0
SXTH            R1, R1
VLDR            S19, =0.15
VLDR            S21, =1.0
VLDR            S18, =90.0
VLDR            S23, =35.0
VCVT.F32.S32    S1, S0
VMOV            S0, R1
VLDR            S20, =1.5
VLDR            S22, =0.71111
VLDR            S16, =0.0
LDR             R7, =dword_6E1320
STRH            R1, [R4,#0xF4]
VCVT.F32.S32    S0, S0
MOV             R6, #2
MOV             R5, #0
VMUL.F32        S1, S1, S19
VSTR            S21, [R4,#0xF0]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_15915C
VMOV            S0, R0
VMOV            S1, R1
VCVT.F32.S32    S3, S0
VCVT.F32.S32    S2, S1
VMOV.F32        S0, S18
VMUL.F32        S3, S3, S19
VDIV.F32        S1, S2, S3
VMLS.F32        S0, S1, S18
VMUL.F32        S0, S0, S22
BL              sub_464380
VMOV.F32        S17, S0
VLDR            S0, [R4,#0xE0]
VLDR            S1, [R4,#0xE4]
LDR             R0, [R7]
VMUL.F32        S0, S0, S0
TST             R0, #1
VMLA.F32        S0, S1, S1
VSQRT.F32       S18, S0
BNE             loc_1590A8
MOV             R0, R7
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1590A8
LDR             R0, =flt_6E1324
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_6E1328 - 0x6E1324)]
MOV             R0, R7
NOP
VLDR            S2, [R4,#0xE0]
VLDR            S1, [R4,#0xE4]
LDR             R0, =flt_6E1324
VMUL.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDREQ          S2, [R0]
VLDREQ          S1, [R0,#(flt_6E1328 - 0x6E1324)]
BEQ             loc_1590E0
VSQRT.F32       S3, S0
VDIV.F32        S0, S21, S3
VMUL.F32        S2, S2, S0
VMUL.F32        S1, S1, S0
VSUB.F32        S0, S18, S23
VLDR            S3, [R4,#0xC0]
ADD             R0, R4, #0xB0
VLDR            S4, [R4,#0xC4]
VMOV.F32        S5, S3
LDRSH           R1, [R4,#0xF4]
VMLA.F32        S23, S0, S17
VMUL.F32        S0, S2, S23
VMUL.F32        S1, S1, S23
VLDR            S2, [R4,#0xC4]
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S2
VLDM            R0, {S2-S3}
LDRSH           R0, [R4,#0xF6]
VSUB.F32        S2, S2, S5
VSUB.F32        S3, S3, S4
VMUL.F32        S2, S2, S17
VMUL.F32        S3, S3, S17
VADD.F32        S2, S0, S2
VADD.F32        S0, S1, S3
VSTR            S2, [R4,#0xC8]
VSTR            S0, [R4,#0xCC]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S19
VCVT.S32.F32    S0, S0
VMOV            R0, S0
CMP             R1, R0
MOVEQ           R5, #1
VSTREQ          S20, [R4,#0xF0]
B               loc_159424
VMOV            S1, R0
VMOV            S0, R1
VLDR            S24, =0.3
VLDR            S25, =0.5
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VMUL.F32        S1, S1, S24
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOV            S0, R1
VMOV            S1, R0
BCS             loc_159258
VLDR            S2, =6.6667
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VDIV.F32        S3, S0, S1
VSUB.F32        S0, S3, S19
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S18
VMUL.F32        S0, S0, S22
BL              sub_464380
VMOV.F32        S17, S0
LDR             R0, [R7]
TST             R0, #1
BNE             loc_1591E8
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1591E8
LDR             R0, =flt_6E1324
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
VLDR            S3, [R4,#0xE0]
VLDR            S1, [R4,#0xE4]
LDR             R0, =flt_6E1324
VMUL.F32        S0, S3, S3
VMLA.F32        S0, S1, S1
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDMEQ          R0, {S0-S1}
BEQ             loc_15921C
VSQRT.F32       S4, S0
VDIV.F32        S2, S21, S4
VMUL.F32        S0, S3, S2
VMUL.F32        S1, S1, S2
VMLA.F32        S20, S17, S25
VLDR            S2, =10.0
VLDR            S3, [R4,#0xF0]
ADD             R0, R4, #0xC0
VMLS.F32        S23, S17, S2
VMUL.F32        S3, S3, S20
VMUL.F32        S1, S1, S23
VMUL.F32        S0, S0, S23
VSTR            S3, [R4,#0xF0]
VLDM            R0, {S2-S3}
ADD             R0, R4, #0xC8
VADD.F32        S0, S0, S2
VADD.F32        S1, S1, S3
VSTM            R0, {S0-S1}
B               loc_159424
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VLDR            S3, =1.4286
VMOV.F32        S19, S18
VLDR            S2, =540.0
VDIV.F32        S4, S0, S1
VSUB.F32        S0, S4, S24
VMUL.F32        S17, S0, S3
VMUL.F32        S0, S17, S18
VNMLS.F32       S19, S17, S2
VMUL.F32        S0, S0, S22
BL              sub_464318
VMOV.F32        S20, S0
VLDR            S0, =180.0
VMLA.F32        S0, S17, S18
VMUL.F32        S0, S0, S22
BL              sub_464380
VADD.F32        S21, S0, S21
VMUL.F32        S0, S19, S22
BL              sub_464380
ADD             R2, R4, #0xE0
VMOV.F32        S19, S0
VLDM            R2, {S0-S1}
BL              sub_4645C0
VLDR            S1, [R4,#0xE0]
VLDR            S2, [R4,#0xE4]
VLDR            S3, =1.4062
VMUL.F32        S1, S1, S1
VMUL.F32        S0, S0, S3
VMLA.F32        S1, S2, S2
VMOV.F32        S2, S25
VCMPE.F32       S0, S16
VMLA.F32        S2, S20, S25
VSQRT.F32       S20, S1
VMRS            APSR_nzcv, FPSCR
VMUL.F32        S1, S20, S24
VMUL.F32        S1, S1, S2
VMOV.F32        S2, S1
VMLA.F32        S1, S19, S2
BLE             loc_159354
LDR             R1, =0x42B40000
VMOV            R0, S0
CMP             R0, R1
BGT             loc_15936C
B               loc_159364
DCFS 0.15
DCFS 1.0
DCFS 90.0
DCD dword_6E1320
DCFS 35.0
DCFS 1.5
DCFS 0.71111
DCFS 0.0
DCD flt_6E1324
DCFS 0.3
DCFS 0.5
DCFS 6.6667
DCFS 10.0
DCFS 1.4286
DCFS 540.0
DCFS 180.0
DCFS 1.4062
DCD 0x42B40000
LDR             R1, =0xC2B40000
VMOV            R0, S0
CMP             R0, R1
BLS             loc_15936C
VADD.F32        S0, S0, S1
B               loc_159370
VSUB.F32        S0, S0, S1
VMUL.F32        S22, S0, S22
VMOV.F32        S0, S22
BL              sub_464380
VMOV.F32        S18, S0
VMOV.F32        S0, S22
BL              sub_464318
VSUB.F32        S2, S20, S23
VLDR            S1, =0.025
LDRSH           R0, [R4,#0xF6]
VLDR            S3, =0.41667
LDRSH           R1, [R4,#0xF4]
VMUL.F32        S2, S2, S19
VMLA.F32        S23, S2, S1
VMUL.F32        S1, S23, S21
VMUL.F32        S2, S0, S1
VMUL.F32        S0, S18, S1
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S3
VCVT.S32.F32    S1, S1
VMOV            R0, S1
CMP             R1, R0
LDRBNE          R0, [R4,#0xF8]
STRBEQ          R6, [R4,#0xF8]
CMPNE           R0, #2
BEQ             loc_1594A8
VLDR            S3, [R4,#0xC4]
VLDR            S1, [R4,#0xC0]
VLDR            S5, [R4,#0xC0]
VADD.F32        S3, S2, S3
VADD.F32        S1, S0, S1
VLDR            S2, [R4,#0xB0]
VLDR            S0, [R4,#0xB4]
VLDR            S4, [R4,#0xC4]
VSUB.F32        S2, S2, S5
VSUB.F32        S0, S0, S4
VLDR            S4, =3.0
VMUL.F32        S2, S2, S17
VMUL.F32        S0, S0, S17
VMUL.F32        S2, S2, S4
VMUL.F32        S0, S0, S4
VADD.F32        S1, S1, S2
VADD.F32        S0, S3, S0
VSTR            S1, [R4,#0xC8]
VSTR            S0, [R4,#0xCC]
LDR             R0, [R4,#0xFC]
CMP             R5, #0
ORR             R0, R0, #0x10
STR             R0, [R4,#0xFC]
BEQ             loc_159530
LDRB            R0, [R4,#0xF8]
CMP             R0, #0
BNE             loc_159530
LDR             R0, [R4,#4]
LDR             R1, [R0,#0xB10]!
TST             R1, #1
BEQ             loc_159508
BIC             R1, R1, #1
STR             R1, [R0]
LDR             R0, [R4,#0xFC]
VLDR            S0, =2.0
MOV             R1, R0,LSL#28
CMP             R6, R1,LSR#30
BNE             loc_1594E8
VMOV.F32        S17, S0
TST             R0, #2
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, #1
BEQ             loc_1594C4
MOV             R1, #0x2B ; '+'
BL              sub_504304
VMOV.F32        S0, S17
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #0x2A ; '*'
B               loc_1594E0
VLDR            S1, [R4,#0xB4]
VLDR            S3, [R4,#0xB0]
ADD             R0, R4, #0xC8
VADD.F32        S1, S2, S1
VADD.F32        S0, S0, S3
VSTM            R0, {S0-S1}
B               loc_159424
MOV             R1, #0x2A ; '*'
BL              sub_504304
VMOV.F32        S0, S17
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #0x29 ; ')'
BL              sub_504208
B               loc_159508
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #0x30 ; '0'
BL              sub_504304
LDR             R0, [R4,#4]
NOP
BL              sub_50463C
MOV             R0, #1
STRB            R0, [R4,#0xF8]
VMOV.F32        S0, S16
VPOP            {D8-D12}
MOV             R2, #0
MOV             R1, R2
VMOV.F32        S1, S0
POP             {R4-R8,LR}
LDR             R0, =0x2003D
B               sub_1459F8
VPOP            {D8-D12}
POP             {R4-R8,PC}
