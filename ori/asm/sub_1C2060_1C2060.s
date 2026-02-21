PUSH            {R4-R12,LR}
MOV             R7, #1
MOV             R11, R0
VPUSH           {D8-D12}
SUB             SP, SP, #0x2800
LDR             R0, [R0,#8]
VLDR            S17, =1.0
LDRSH           R1, [R0]
CMP             R1, #0x13
BEQ             loc_1C20BC
BLT             def_1C2098; jumptable 001C2098 default case, cases 0,2,3
SUB             R0, R1, #0x14
VLDR            S20, =0.0
CMP             R0, #7; switch 7 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1C2098; jumptable 001C2098 default case, cases 0,2,3
DCD def_1C2098; jump table for switch statement
LDRSH           R1, [R0,#8]
LDRSH           R0, [R0,#6]
VMOV            S1, R1
VMOV            S0, R0
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S17
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             def_1C2098; jumptable 001C2098 default case, cases 0,2,3
LDR             R0, [R11,#4]
VLDR            S2, =-30.0
VLDR            S1, =1.6
ADD             R0, R0, #0x17000
ADD             R0, R0, #0x4B0
VLDR            S0, =15.25
BL              sub_53EB38
LDR             R0, [R11,#4]
ADD             R1, R0, #0x17800
LDR             R0, [R0,#0x4B8]
STR             R0, [R1,#0x16C]
LDR             R1, [R11,#4]
ADD             R1, R1, #0x17800
STR             R0, [R1,#0x168]
LDR             R0, [R11,#4]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x19C
LDR             R1, [R0]
ORR             R1, R1, #0x10
STR             R1, [R0]
LDR             R0, [R11,#4]
ADD             R0, R0, #0x17400
ADD             R0, R0, #0xAD
STRB            R7, [R0]
ADD             SP, SP, #0x2800; jumptable 001C2098 default case, cases 0,2,3
VPOP            {D8-D12}
POP             {R4-R12,PC}
LDR             R0, [R11,#4]; jumptable 001C2098 case 1
ADD             R0, R0, #0x400
VSTR            S20, [R0,#0x78]
ADD             SP, SP, #0x2800
VPOP            {D8-D12}
POP             {R4-R12,PC}
ADD             R1, R11, #0x1000; jumptable 001C2098 cases 4-6
ADD             R1, R1, #0x198
MOV             R9, #0
LDM             R1, {R1,R2}
ADD             R0, R11, #0x1000
ADD             R0, R0, #0x1A0
LDR             R6, =dword_6E1320
STR             R9, [SP,#0x2850+var_2834]
STR             R9, [SP,#0x2850+var_2830]
ADD             R8, R11, #0x1000
STM             R0, {R1,R2}
VMOV.F32        S16, S20
STRB            R9, [R8,#0x1B0]
LDR             R0, [R6]
ADD             R4, R11, #0x1100
TST             R0, #1
BNE             loc_1C21D4
MOV             R0, R6
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1C21D4
LDR             R0, =flt_6E1324
VSTR            S20, [R0]
VSTR            S20, [R0,#(flt_6E1328 - 0x6E1324)]
MOV             R0, R6
NOP
LDR             R5, =flt_6E1324
LDR             R10, =off_6D1648
LDRD            R0, R1, [R5]
STRD            R0, R1, [SP,#0x2850+var_2828]
LDR             R0, [R11,#8]
LDRH            R0, [R0]
CMP             R0, #0x18
BEQ             loc_1C2244
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
LDR             R2, [R0]
ADD             R1, SP, #0x2850+var_2828
LDR             R2, [R2,#0x7C]
BLX             R2
VLDR            S2, [SP,#0x2850+var_2828]
VLDR            S1, [SP,#0x2850+var_2824]
VMUL.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VCMP.F32        S0, S20
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1C2244
VSQRT.F32       S3, S0
VMOV.F32        S16, S17
VDIV.F32        S0, S17, S3
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S1, S0
VSTR            S2, [SP,#0x2850+var_2828]
VSTR            S0, [SP,#0x2850+var_2824]
LDRH            R0, [R4,#0xC0]
VLDR            S25, =180.0
VLDR            S18, =0.71111
CMP             R0, #0
LDR             R0, [R10]
BEQ             loc_1C23CC
LDR             R0, [R0,#0xBC]
NOP
NOP
BL              sub_5C6090
CMP             R0, #0
NOP
BEQ             loc_1C2344
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
MOV             R1, #0
NOP
BL              sub_166500
LDR             R0, [R6]
TST             R0, #1
BNE             loc_1C22C0
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1C22C0
LDR             R0, =flt_6E1324
VSTR            S20, [R0]
VSTR            S20, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDRD            R0, R1, [R5]
STRD            R0, R1, [SP,#0x2850+var_2810]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R1, SP, #0x2850+var_2810
NOP
BL              sub_166510
VLDR            S0, [R8,#0x1C4]
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VSTR            S0, [R8,#0x1AC]
LDR             R0, [R6]
TST             R0, #1
BNE             loc_1C2328
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1C2328
VMOV.F32        S0, S20
LDR             R0, =flt_6E1324
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDRD            R0, R1, [R5]
STRD            R0, R1, [SP,#0x2850+var_2828]
VLDR            S0, [R8,#0x1C4]
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
VSTRCC          S25, [R8,#0x1A8]
VSTRCS          S20, [R8,#0x1A8]
VLDR            S0, [R8,#0x1A8]
VMUL.F32        S0, S0, S18
BL              sub_464318
VMOV.F32        S16, S0
VLDR            S0, [R8,#0x1A8]
VMUL.F32        S0, S0, S18
BL              sub_464380
VMOV.F32        S1, S0
VLDR            S0, [R8,#0x1AC]
VLDR            S2, [R8,#0x1C8]
VLDR            S3, =4.0
VMLA.F32        S0, S2, S3
VSTR            S0, [R8,#0x1AC]
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S20
VSTR            S0, [R8,#0x1AC]
VMUL.F32        S17, S16, S0
VMUL.F32        S16, S1, S0
LDRH            R0, [R4,#0xC0]
SUB             R0, R0, #1
STRH            R0, [R4,#0xC0]
B               loc_1C2554
DCFS 1.0
DCFS 0.0
DCFS -30.0
DCFS 1.6
DCFS 15.25
DCD dword_6E1320
DCD flt_6E1324
DCD off_6D1648
DCFS 180.0
DCFS 0.71111
DCFS 4.0
NOP
LDR             R0, [R0,#0xBC]
NOP
NOP
BL              sub_5C6090
CMP             R0, #0
NOP
BNE             loc_1C2458
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
LDR             R1, =0xF0001FFB
NOP
BL              sub_166500
LDR             R0, =dword_6E1314
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1C2438
LDR             R0, =dword_6E1314
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1C2438
LDR             R0, =flt_6E1318
VSTR            S17, [R0]
VSTR            S17, [R0,#(flt_6E131C - 0x6E1318)]
LDR             R0, =dword_6E1314
NOP
LDR             R1, =flt_6E1318
LDRD            R0, R1, [R1]
STRD            R0, R1, [SP,#0x2850+var_2820]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R1, SP, #0x2850+var_2820
NOP
BL              sub_166510
ADD             R0, SP, #0x2850+var_2828
VLDM            R0, {S0-S1}
VMUL.F32        S17, S0, S16
VLDR            S0, [R8,#0x1A8]
VMUL.F32        S19, S1, S16
VMUL.F32        S0, S0, S18
BL              sub_464318
VMOV.F32        S16, S0
VLDR            S0, [R8,#0x1A8]
VMUL.F32        S0, S0, S18
BL              sub_464380
VMUL.F32        S2, S17, S17
VMOV.F32        S1, S0
VMOV.F32        S0, S16
VMLA.F32        S2, S19, S19
VCMP.F32        S2, S20
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1C252C
VLDR            S3, [R8,#0x1AC]
VMUL.F32        S2, S0, S3
VMUL.F32        S0, S1, S3
VADD.F32        S1, S2, S17
VADD.F32        S16, S0, S19
VMUL.F32        S0, S1, S1
VMOV.F32        S17, S1
VMLA.F32        S0, S16, S16
VSQRT.F32       S2, S0
VMOV.F32        S0, S16
VSTR            S2, [R8,#0x1AC]
BL              sub_4645C0
VLDR            S1, =1.4062
LDR             R0, [R8,#0x1AC]
LDR             R1, =0x40C00000
VMUL.F32        S0, S0, S1
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
VLDRCC          S1, =360.0
VADDCC.F32      S0, S0, S1
CMP             R0, R1
VSTR            S0, [R8,#0x1A8]
BLE             loc_1C2554
VMUL.F32        S0, S0, S18
VLDR            S1, =6.0
VSTR            S1, [R8,#0x1AC]
BL              sub_464318
VMOV.F32        S16, S0
VLDR            S0, [R8,#0x1A8]
VMUL.F32        S0, S0, S18
BL              sub_464380
VLDR            S1, [R8,#0x1AC]
VMUL.F32        S17, S16, S1
VMUL.F32        S16, S0, S1
B               loc_1C2554
VLDR            S2, [R8,#0x1AC]
VLDR            S3, =-2.0
VADD.F32        S2, S2, S3
VSTR            S2, [R8,#0x1AC]
VCMPE.F32       S2, S20
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S2, S20
VSTR            S2, [R8,#0x1AC]
VMUL.F32        S17, S0, S2
VMUL.F32        S16, S1, S2
ADD             R0, R11, #0x1000
ADD             R0, R0, #0x198
VMOV.F32        S19, S20
VLDR            S0, [R0,#4]
VLDR            S1, [R0]
VADD.F32        S1, S1, S17
VADD.F32        S0, S0, S16
VSTR            S1, [R0]
VSTR            S0, [R0,#4]
VCMPE.F32       S0, S19
VMOV            R1, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S19
VSTRCC          S19, [R8,#0x19C]
BCC             loc_1C25A4
LDR             R0, =0x43700000
CMP             R1, R0
VMOVLT          S0, R1
VLDRGE          S0, =240.0
VSTR            S0, [R8,#0x19C]
VLDR            S2, =0.20833
VLDR            S23, =200.0
VLDR            S1, [R8,#0x198]
VMUL.F32        S0, S0, S2
VADD.F32        S0, S0, S23
VNEG.F32        S2, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BCS             loc_1C25D8
VSTR            S2, [R8,#0x198]
MOV             R0, #1
STR             R0, [SP,#0x2850+var_2834]
B               loc_1C25F0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_1C25F0
VSTR            S0, [R8,#0x198]
MOV             R0, #1
STR             R0, [SP,#0x2850+var_2834]
ADD             R6, SP, #0x2850+var_27D0
LDR             R1, [R11,#4]
MOV             R0, R6
BL              sub_17223C
LDR             R0, [SP,#0x2850+var_2188]
VLDR            S24, =47.0
VLDR            S22, =-12.0
BIC             R0, R0, #0x20000
ORR             R0, R0, #0x18
STR             R0, [SP,#0x2850+var_2188]
LDR             R0, [SP,#0x2850+var_21F0]
VLDR            S21, =24.0
VLDR            S20, =20.0
BIC             R0, R0, #0x40 ; '@'
STR             R0, [SP,#0x2850+var_21F0]
LDR             R0, [SP,#0x2850+var_22E4]
MOV             R4, R7
VMOV.F32        S4, S20
ORR             R0, R0, #1
STR             R0, [SP,#0x2850+var_22E4]
ADD             R0, SP, #0x2850+var_2450
VMOV.F32        S3, S24
VSTR            S16, [R0,#0x144]
ADD             R0, SP, #0x2850+var_850
VMOV.F32        S2, S21
VMOV.F32        S1, S19
VMOV.F32        S0, S22
STRB            R4, [R0,#0x706]
MOV             R0, R6
BL              sub_575D3C
VMOV.F32        S4, S20
VMOV.F32        S3, S24
VMOV.F32        S2, S21
VMOV.F32        S1, S19
VMOV.F32        S0, S22
MOV             R0, R6
BL              sub_22D56C
VMOV.F32        S4, S20
VMOV.F32        S3, S24
VMOV.F32        S2, S21
VMOV.F32        S1, S19
VMOV.F32        S0, S22
MOV             R0, R6
BL              sub_575C24
VMOV.F32        S3, S20
VMOV.F32        S2, S21
VMOV.F32        S1, S19
VMOV.F32        S0, S22
MOV             R0, R6
BL              sub_53FA70
VMOV.F32        S3, S20
VMOV.F32        S2, S21
VMOV.F32        S1, S19
VMOV.F32        S0, S22
MOV             R0, R6
BL              sub_53FAA0
VMOV.F32        S3, S20
VMOV.F32        S2, S21
VMOV.F32        S1, S19
VMOV.F32        S0, S22
MOV             R0, R6
BL              sub_53FA50
LDR             R0, [SP,#0x2850+var_21F0]
ADD             R1, SP, #0x2850+var_27FC
BIC             R0, R0, #0x7E00
STR             R0, [SP,#0x2850+var_21F0]
LDR             R0, [R11,#4]
VLDR            S1, [R8,#0x198]
VLDR            S0, [R8,#0x19C]
ADD             R0, R0, #0x108
VLDM            R0, {S2-S3}
VADD.F32        S1, S1, S2
VADD.F32        S0, S0, S3
VSTR            S1, [SP,#0x2850+var_27FC]
VSTR            S0, [SP,#0x2850+var_27F8]
VSTR            S19, [SP,#0x2850+var_27F4]
LDR             R0, [SP,#0x2850+var_27D0]
LDR             R2, [R0,#0x6C]
MOV             R0, R6
BLX             R2
ADD             R0, R8, #0x1A0
VLDM            R0, {S0-S1}
LDR             R0, [R11,#4]
ADD             R0, R0, #0x108
VLDM            R0, {S2-S3}
ADD             R0, SP, #0x2850+var_26B8
VSTR            S19, [SP,#0x2850+var_26B0]
VSTR            S17, [SP,#0x2850+var_26AC]
VADD.F32        S0, S0, S2
VADD.F32        S1, S1, S3
VSTR            S16, [SP,#0x2850+var_26A8]
VSTR            S19, [SP,#0x2850+var_26A4]
VSTM            R0, {S0-S1}
LDR             R0, [R11,#4]
LDR             R1, [R0,#0x610]
MOV             R0, R6
STR             R1, [R0,#0x610]
VLDR            S16, [SP,#0x2850+var_26C8]
MOV             R0, R6
STRB            R9, [SP,#0x2850+var_2818]
BL              sub_171C88
MOV             R0, R6
NOP
BL              sub_169ED8
MOV             R1, #0
MOV             R0, R6
BL              sub_168F60
LDR             R0, [R10]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x174]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
MOV             R3, R6
LDR             R1, [R0,#0x170]
STR             R4, [SP,#0x2850+var_2850]
LDR             R0, [R11,#4]
MOV             R2, R5
ADD             R0, R0, #0x2400
ADD             R0, R0, #0x378
BL              sub_326C94
LDR             R0, [R10]
MOV             R9, #2
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, #2
BLS             loc_1C2A28
ADD             R5, SP, #0x2850+var_850
VLDR            S17, =12.0
VLDR            S20, =40.0
VLDR            S21, =30.0
VLDR            S22, =52.0
ADD             R4, SP, #0x2850+var_2818
ADD             R7, SP, #0x2850+var_27D8
ADD             R6, SP, #0x2850+var_2820
ADD             R5, R5, #0x7F0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R9,LSL#2
ADD             R0, R0, #0x14000
LDR             R10, [R0,#0x184]
LDR             R0, [R10]
LDR             R1, [R0,#8]
MOV             R0, R10
BLX             R1
CMP             R0, #8
BNE             loc_1C2A04
LDRB            R0, [R10,#0xAAC]
CMP             R0, #9
BEQ             loc_1C2860
CMP             R0, #0xA
BNE             loc_1C2A04
VLDR            S1, [R10,#0x108]
VLDR            S0, [SP,#0x2850+var_26C8]
VSUB.F32        S2, S1, S20
VADD.F32        S3, S0, S17
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BHI             loc_1C2A04
VSUB.F32        S2, S0, S17
VADD.F32        S1, S1, S20
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_1C2A04
VLDR            S2, [R10,#0x10C]
VLDR            S1, [SP,#0x2850+var_26C4]
VSUB.F32        S3, S2, S21
B               loc_1C28F0
DCD 0xF0001FFB
DCD dword_6E1314
DCD flt_6E1318
DCFS 1.4062
DCFS 360.0
DCD 0x40C00000
DCFS 6.0
DCFS -2.0
DCD 0x43700000
DCFS 240.0
DCFS 0.20833
DCFS 200.0
DCFS 47.0
DCFS -12.0
DCFS 24.0
DCFS 20.0
DCFS 12.0
DCFS 40.0
DCFS 30.0
DCFS 52.0
VADD.F32        S4, S1, S24
VCMPE.F32       S3, S4
VMRS            APSR_nzcv, FPSCR
VADDLS.F32      S2, S2, S20
VCMPELS.F32     S1, S2
VMRSLS          APSR_nzcv, FPSCR
BHI             loc_1C2A04
ADD             R12, SP, #0x2850+var_2810
ADD             LR, SP, #0x2850+var_26B8
VSTM            R12, {S0-S1}
ADD             R1, SP, #0x2850+var_2808
ADD             R0, SP, #0x2850+var_27E0
VLDM            LR, {S0-S1}
ADD             LR, R10, #0x108
ADD             R2, SP, #0x2850+var_27F0
ADD             R3, SP, #0x2850+var_27E8
VSTM            R1, {S0-S1}
VLDR            S1, [R10,#0x108]
VLDR            S0, [R10,#0x10C]
VSUB.F32        S1, S1, S22
VADD.F32        S0, S0, S20
VSTR            S1, [SP,#0x2850+var_27F0]
VSTR            S0, [SP,#0x2850+var_27EC]
VLDR            S1, [R10,#0x108]
VLDR            S0, [R10,#0x10C]
ADD             R10, R10, #0x108
VADD.F32        S1, S1, S22
VADD.F32        S0, S0, S20
VSTR            S1, [SP,#0x2850+var_27E8]
VSTR            S0, [SP,#0x2850+var_27E4]
VLDM            LR, {S0-S1}
VSUB.F32        S2, S1, S21
VSUB.F32        S1, S0, S22
VSUB.F32        S0, S2, S24
VSTR            S1, [SP,#0x2850+var_27E0]
VSTR            S0, [SP,#0x2850+var_27DC]
VLDM            R10, {S0-S1}
VSUB.F32        S2, S1, S21
VADD.F32        S1, S0, S22
VSUB.F32        S0, S2, S24
VSTR            S1, [SP,#0x2850+var_27D8]
VSTR            S0, [SP,#0x2850+var_27D4]
VMOV.F32        S0, S19
STR             R4, [SP,#0x2850+var_2840]
STR             R5, [SP,#0x2850+var_2844]
STR             R6, [SP,#0x2850+var_2848]
STMEA           SP, {R0,R7}
MOV             R0, R12
BL              sub_45A5B0
CMP             R0, #0
NOP
BEQ             loc_1C2A04
LDRB            R0, [SP,#0x2850+var_2818]
TST             R0, #0xA
BEQ             loc_1C29E4
VLDR            S0, [SP,#0x2850+var_26C8]
VLDR            S1, [SP,#0x2850+var_26B8]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
LDRNE           R1, [SP,#0x2850+var_2820]
STRNE           R1, [SP,#0x2850+var_26C8]
TST             R0, #0x30
BEQ             loc_1C2A04
VLDR            S0, [SP,#0x2850+var_26C4]
VLDR            S1, [SP,#0x2850+var_26B4]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
LDRNE           R0, [SP,#0x2850+var_281C]
STRNE           R0, [SP,#0x2850+var_26C4]
ADD             R0, R9, #1
AND             R9, R0, #0xFF
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, R9
BHI             loc_1C281C
LDR             R0, [SP,#0x2850+var_2178]
ADD             R2, SP, #0x2850+var_2180
AND             R0, R0, #0x3F ; '?'
STRB            R0, [R8,#0x1B0]
LDM             R2, {R0,R1}
ADD             R2, R8, #0x1B8
STM             R2, {R0,R1}
LDR             R0, [SP,#0x2850+var_2080]
CMP             R0, #0
MOVNE           R4, R0
BEQ             loc_1C2AF0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R4,#0xAAC]
CMPEQ           R0, #0x11
BNE             loc_1C2AF0
LDR             R0, [R11,#4]
LDR             R1, [SP,#0x2850+var_2080]
LDR             R2, [R0,#0x750]
CMP             R2, #0
BEQ             loc_1C2ACC
LDR             R2, [R1,#0x4EC]
TST             R2, #0xE0
BNE             loc_1C2AA0
LDR             R3, [R0,#0x754]
CMP             R3, R1
BNE             loc_1C2ACC
AND             R2, R2, #0xE0
CMP             R2, #0x80
BNE             loc_1C2AF0
LDR             R2, [R0,#0x754]
CMP             R2, R1
BNE             loc_1C2ACC
ADD             R2, R0, #0x400
LDRH            R3, [R2,#0x6C]
LDRH            R2, [R2,#0x6E]
CMP             R3, R2
BEQ             loc_1C2AF0
STR             R1, [R0,#0x750]
LDR             R3, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
ORR             R3, R3, #0xFC0
STR             R3, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
VLDR            S0, [SP,#0x2850+var_26C8]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
MOVNE           R0, #1
STRNE           R0, [SP,#0x2850+var_2830]
LDR             R0, [SP,#0x2850+var_21F0]
TST             R0, #0x1400
BNE             loc_1C2B2C
LDRB            R0, [SP,#0x2850+var_2818]
TST             R0, #0xA
BEQ             loc_1C2B68
VLDR            S1, [SP,#0x2850+var_26B8]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1C2B68
VLDR            S0, [R8,#0x1A8]
VMUL.F32        S0, S0, S18
BL              sub_464380
VCMPE.F32       S19, S0
LDR             R0, [R8,#0x1A8]
LDR             R1, =0x43340000
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R8,#0x1AC]
VNEGHI.F32      S0, S0
CMP             R0, R1
VMUL.F32        S0, S0, S1
VSTR            S0, [R8,#0x1AC]
VLDRLT          S0, =90.0
VLDRGE          S0, =270.0
VSTR            S0, [R8,#0x1A8]
LDR             R0, [SP,#0x2850+var_21F0]
TST             R0, #0x6000
BNE             loc_1C2B94
LDRB            R0, [SP,#0x2850+var_2818]
TST             R0, #0x30
BEQ             loc_1C2BD0
VLDR            S0, [SP,#0x2850+var_26C4]
VLDR            S1, [SP,#0x2850+var_26B4]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1C2BD0
VLDR            S0, [R8,#0x1A8]
VMUL.F32        S0, S0, S18
BL              sub_464318
VCMPE.F32       S19, S0
LDR             R0, [R8,#0x1A8]
ADD             R0, R0, #0xC0000000
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R8,#0x1AC]
SUB             R0, R0, #0x2B40000
VNEGHI.F32      S0, S0
CMP             R0, #0xD30000
VMOVCS.F32      S25, S19
VMUL.F32        S0, S0, S1
VSTR            S0, [R8,#0x1AC]
VSTR            S25, [R8,#0x1A8]
LDR             R1, [R11,#4]
VLDR            S0, [SP,#0x2850+var_26C8]
ADD             R3, SP, #0x2850+var_2834
VLDR            S1, [R1,#0x108]
LDM             R3, {R0,R2}
VSUB.F32        S0, S0, S1
TST             R0, R2
VSTR            S0, [R8,#0x198]
VMOV            R0, S0
VLDR            S1, [R1,#0x10C]
VLDR            S0, [SP,#0x2850+var_26C4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R8,#0x19C]
BEQ             loc_1C2C6C
VMOV.F32        S0, S19
LDR             R1, =0xC3480000
CMP             R0, R1
BCS             loc_1C2C30
VMOV            S0, R0
VSUB.F32        S0, S23, S0
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BGE             loc_1C2C54
B               loc_1C2C50
LDR             R1, =0x43480000
CMP             R0, R1
BLE             loc_1C2C54
VMOV            S0, R0
VSUB.F32        S0, S0, S23
VCMPE.F32       S19, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_1C2C54
VNEG.F32        S0, S0
VCMP.F32        S0, S19
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1C2C6C
VLDR            S1, =4.8
VMUL.F32        S0, S0, S1
VSTR            S0, [R8,#0x19C]
LDR             R1, =off_6AE51C
LDR             R0, =off_6AE0A4
ADD             R4, SP, #0x2850+var_850
ADD             R2, R1, #0x18
STR             R1, [SP,#0x2850+var_26F0]
STR             R0, [SP,#0x2850+var_27D0]
LDR             R1, =off_6B7BFC
ADD             R0, SP, #0x2850+var_850
STR             R2, [SP,#0x2850+var_2078]
STR             R1, [R0,#0x790]
LDR             R1, =sub_5A2F60
ADD             R4, R4, #0x790
MOV             R3, #1
MOV             R2, #0x28 ; '('
ADD             R0, SP, #0x2850+var_90
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
LDR             R0, =off_6B7BEC
LDR             R1, =nullsub_300
MOV             R3, #1
STR             R0, [R4]
MOV             R2, #0x1C
ADD             R0, R4, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x2400
SUB             R0, R0, #0x2DC
BL              sub_540C2C
ADD             SP, SP, #0x2800
VPOP            {D8-D12}
POP             {R4-R12,PC}
