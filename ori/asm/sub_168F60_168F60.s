PUSH            {R4-R11,LR}
CMP             R1, #4
MOV             R4, R0
MOV             R7, R1
VPUSH           {D8-D15}
SUB             SP, SP, #0xB4
BNE             loc_168F8C
LDR             R0, =0x276E
LDRB            R0, [R0,R4]
CMP             R0, #0
MOVNE           R7, #0
ADD             R10, R4, #0x2600
ADD             R10, R10, #0x86
LDRB            R0, [R10]
CMP             R0, R7
BEQ             loc_169AFC
ADD             R8, R4, #0x2400
VLDR            S26, =0.0
VLDR            S17, =10.0
ADD             R6, R4, #0x400
CMP             R0, #1
MOV             R9, #0
ADD             R8, R8, #0x2BC
ADD             R5, R4, #0x400
ADD             R6, R6, #0x64 ; 'd'
BEQ             loc_168FE4
CMP             R0, #2
BEQ             loc_169000
CMP             R0, #3
BEQ             loc_169038
CMP             R0, #4
BEQ             loc_1690D4
B               loc_1690E8
LDR             R0, [R4]
LDR             R1, [R4,#0x800]
MOV             R2, #0
LDR             R3, [R0,#0x278]
MOV             R0, R4
BLX             R3
B               loc_1690E8
LDR             R11, =off_6D1648
LDR             R0, [R11]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
CMP             R0, #0
BEQ             loc_169038
LDR             R0, [R11]
BL              sub_1E45C8
LDR             R1, [R0]
MOV             R2, #4
LDR             R3, [R1,#0x8C]
LDR             R1, =unk_68E7CC
BLX             R3
LDR             R0, [R8]
CMP             R0, #0
BEQ             loc_16904C
BL              sub_533330
STR             R9, [R8]
VSTR            S26, [R4,#0xFC]
VSTR            S26, [R4,#0x100]
VSTR            S26, [R4,#0x104]
VSTR            S26, [R4,#0xF0]
VSTR            S26, [R4,#0xF4]
VSTR            S26, [R4,#0xF8]
LDR             R0, [R4,#0x464]
MOV             R1, #8
BIC             R0, R0, #0x700
ORR             R0, R0, #0x300
STR             R0, [R6]
LDR             R0, [R4]
LDR             R2, [R0,#0x36C]
MOV             R0, R4
BLX             R2
LDR             R11, =off_6D1648
VMOV.F32        S16, S17
LDR             R0, [R11]
LDR             R0, [R0,#0xBC]
VMOV.F32        S0, S16
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_1E3014
STRH            R9, [R5,#0x68]
LDR             R0, [R11]
BL              sub_1E45C8
LDRH            R1, [R0,#0x4A]
BIC             R1, R1, #4
STRH            R1, [R0,#0x4A]
MOV             R0, R4
BL              sub_16EB64
NOP
NOP
B               loc_1690E8
MOV             R1, #0
MOV             R0, R4
BL              sub_169C80
LDR             R0, [R5,#0xE0]
STR             R0, [R5,#0xC8]
CMP             R7, #1
BEQ             loc_16910C
CMP             R7, #2
BEQ             loc_169130
CMP             R7, #3
BEQ             loc_169150
CMP             R7, #4
BNE             loc_169AF8
B               loc_169AC8
MOV             R1, #0
MOV             R0, R4
BL              sub_171CC8
ADD             R0, R4, #0x2000
ADD             R0, R0, #0x690
ADD             R4, R4, #0x2400
ADD             R4, R4, #0x28C
STR             R9, [R0]
B               loc_169AF4
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R0]
MOV             R2, #4
LDR             R3, [R1,#0x8C]
LDR             R1, =unk_68E7DC
BLX             R3
LDR             R0, =0x26AB
STRB            R9, [R0,R4]
LDR             R0, [R4]
LDR             R1, [R0,#0x220]
MOV             R0, R4
BLX             R1
LDR             R0, =0x26A0
ADD             R11, R4, #0x2600
ADD             R2, R0, #8
ORR             R1, R0, R0,ASR#10
STRB            R9, [R0,R4]
ORR             R3, R0, R0,ASR#13
STRB            R9, [R1,R4]
ADD             R12, R0, #0x18
STRB            R9, [R2,R4]
STRB            R9, [R3,R4]
ADD             LR, R0, #0x14
STRB            R9, [R12,R4]
STRH            R9, [R11,#0xB6]
STRB            R9, [LR,R4]
STR             R9, [R8]
LDR             R0, [R4,#0x464]
LDR             R8, =off_6D1648
BIC             R1, R0, #0x700
STR             R1, [R6]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, =0x2101D
NOP
BL              sub_164868
MOV             R1, R0
LDR             R0, [R4]
LDR             R2, [R0,#0x348]
MOV             R0, R4
BLX             R2
MOV             R1, #0x10
MOV             R0, #0xC8
VMOV.F32        S16, S17
STRH            R1, [R5,#0x68]
STRH            R0, [R11,#0x84]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S26
VMOV.F32        S0, S16
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
VMOV.F32        S4, S1
VMOV.F32        S3, S1
VMOV.F32        S2, S1
BL              sub_5A137C
LDR             R1, [R4,#0x4EC]
CMP             R7, #2
BIC             R1, R1, #4
ORR             R1, R1, #1
STR             R1, [R4,#0x4EC]
VLDR            S2, [R4,#0x10C]
VLDR            S1, [R4,#0x11C]
BEQ             loc_169318
VLDR            S0, =21.0
VADD.F32        S2, S2, S0
VADD.F32        S0, S1, S0
VSTR            S2, [R4,#0x10C]
VSTR            S0, [R4,#0x11C]
LDR             R1, =0x26AA
MOV             R0, #0
STR             R0, [SP,#0x118+var_B8]
VLDR            S1, =-15.0
STRB            R0, [R1,R4]
STR             R0, [SP,#0x118+var_B0]
STR             R0, [SP,#0x118+var_B4]
STR             R0, [SP,#0x118+var_AC]
STR             R0, [SP,#0x118+var_C4]
VLDR            S3, [R4,#0x108]
VLDR            S0, =10.0
VLDR            S2, [R4,#0x10C]
VMOV.F32        S4, S3
VADD.F32        S16, S3, S1
VADD.F32        S18, S3, S26
VLDR            S3, [R4,#0x10C]
VADD.F32        S17, S2, S0
VADD.F32        S19, S2, S0
VADD.F32        S21, S3, S0
VMOV.F32        S3, S4
VLDR            S2, =15.0
VLDR            S0, [R4,#0x10C]
VADD.F32        S22, S4, S1
VADD.F32        S20, S4, S2
VADD.F32        S23, S0, S26
VADD.F32        S24, S3, S2
VADD.F32        S25, S0, S26
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
VLDR            S29, =25.0
LDR             R0, [R0]
LDR             R1, [R0]
TST             R1, #1
BEQ             loc_169330
B               loc_169528
DCD 0x276E
DCFS 0.0
DCFS 10.0
DCD off_6D1648
DCD unk_68E7CC
DCD unk_68E7DC
DCD 0x26AB
DCD 0x26A0
DCD 0x2101D
DCFS 21.0
DCD 0x26AA
DCFS -15.0
DCFS 15.0
DCFS 25.0
VLDR            S0, =26.0
VADD.F32        S2, S2, S0
VADD.F32        S0, S1, S0
VSTR            S2, [R4,#0x10C]
VSTR            S0, [R4,#0x11C]
B               loc_16924C
VMOV.F32        S0, S29
ADD             R1, SP, #0x118+var_A0
VSUB.F32        S2, S16, S0
VADD.F32        S7, S22, S0
VSUB.F32        S6, S22, S0
VADD.F32        S4, S23, S0
VSUB.F32        S5, S23, S0
VADD.F32        S1, S16, S0
VADD.F32        S3, S17, S0
VSUB.F32        S8, S17, S0
VADD.F32        S9, S24, S0
VSUB.F32        S10, S24, S0
VADD.F32        S11, S25, S0
VSUB.F32        S12, S25, S0
VADD.F32        S15, S20, S0
VSUB.F32        S27, S20, S0
VADD.F32        S30, S21, S0
VSUB.F32        S14, S21, S0
VADD.F32        S28, S18, S0
VSUB.F32        S31, S18, S0
VADD.F32        S13, S19, S0
VSUB.F32        S0, S19, S0
VSTM            R1, {S1-S2}
LDR             R1, [R0]
TST             R1, #2
BNE             loc_16951C
LDR             R2, [R0,#4]
LDR             R2, [R2,#8]
TST             R2, #1
BEQ             loc_16951C
TST             R2, #0x400
TSTEQ           R1, #4
BNE             loc_16951C
TST             R1, #0x20
BNE             loc_16944C
VLDR            S1, [R0,#0x20]
VMOV.F32        S2, S1
VCMPE.F32       S1, S5
VMRS            APSR_nzcv, FPSCR
BLT             loc_169400
VLDR            S1, [R0,#0x24]
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
BHI             loc_169400
VLDR            S1, [R0,#0x28]
VCMPE.F32       S7, S1
VMRS            APSR_nzcv, FPSCR
VLDRGE          S1, [R0,#0x2C]
VCMPEGE.F32     S1, S6
VMRSGE          APSR_nzcv, FPSCR
MOVGE           R2, #1
STRGE           R2, [SP,#0x118+var_B0]
VMOV.F32        S1, S2
VCMPE.F32       S1, S8
VMRS            APSR_nzcv, FPSCR
BLT             loc_16944C
VLDR            S1, [R0,#0x24]
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BHI             loc_16944C
VLDR            S2, [R0,#0x28]
VLDR            S1, [SP,#0x118+var_A0]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_16944C
VLDR            S1, [R0,#0x2C]
VLDR            S2, [SP,#0x118+var_9C]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
MOVGE           R2, #1
STRGE           R2, [SP,#0x118+var_B8]
TST             R1, #8
BNE             loc_1694D8
VLDR            S1, [R0,#0x20]
VMOV.F32        S2, S1
VCMPE.F32       S1, S12
VMRS            APSR_nzcv, FPSCR
BLT             loc_169498
VLDR            S1, [R0,#0x24]
VCMPE.F32       S1, S11
VMRS            APSR_nzcv, FPSCR
BHI             loc_169498
VLDR            S1, [R0,#0x28]
VCMPE.F32       S9, S1
VMRS            APSR_nzcv, FPSCR
VLDRGE          S1, [R0,#0x2C]
VCMPEGE.F32     S1, S10
VMRSGE          APSR_nzcv, FPSCR
MOVGE           R1, #1
STRGE           R1, [SP,#0x118+var_C4]
VMOV.F32        S1, S2
VCMPE.F32       S1, S14
VMRS            APSR_nzcv, FPSCR
BLT             loc_1694D8
VLDR            S1, [R0,#0x24]
VCMPE.F32       S1, S30
VMRS            APSR_nzcv, FPSCR
BHI             loc_1694D8
VLDR            S1, [R0,#0x28]
VCMPE.F32       S15, S1
VMRS            APSR_nzcv, FPSCR
VLDRGE          S1, [R0,#0x2C]
VCMPEGE.F32     S1, S27
VMRSGE          APSR_nzcv, FPSCR
MOVGE           R1, #1
STRGE           R1, [SP,#0x118+var_B4]
VLDR            S1, [R0,#0x24]
VCMPE.F32       S1, S13
VMRS            APSR_nzcv, FPSCR
BHI             loc_16951C
VLDR            S1, [R0,#0x20]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_16951C
VLDR            S1, [R0,#0x28]
VCMPE.F32       S1, S28
VMRS            APSR_nzcv, FPSCR
BHI             loc_16951C
VLDR            S1, [R0,#0x2C]
VCMPE.F32       S1, S31
VMRS            APSR_nzcv, FPSCR
MOVGE           R1, #1
STRGE           R1, [SP,#0x118+var_AC]
LDR             R1, [R0,#0x34]!
TST             R1, #1
BEQ             loc_16938C
LDR             R0, [R8]
MOV             R11, R8
MOV             R5, R8
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x170]
STR             R0, [SP,#0x118+var_E4]
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x174]
STR             R0, [SP,#0x118+var_E0]
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16400
ADD             R0, R0, #0x4A ; 'J'
LDRB            R0, [R0]
CMP             R0, #0
BNE             loc_169594
LDR             R0, [R11]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
ADD             R3, SP, #0x118+var_E0
ADD             R2, SP, #0x118+var_E4
MOV             R1, R4
BL              sub_21DC20
LDR             R0, =0x2698
LDRB            R1, [R10]
LDR             R2, [SP,#0x118+var_E0]
LDR             R5, [SP,#0x118+var_E4]
LDRB            R0, [R0,R4]
CMP             R1, #1
BNE             loc_1695D4
CMP             R0, #0
BEQ             loc_1695D4
CMP             R0, #1
BEQ             loc_16960C
CMP             R0, #2
BEQ             loc_1695EC
CMP             R0, #3
BNE             loc_169644
B               loc_169624
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R4,#0x11C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_169638
B               loc_169640
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R4,#0x11C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_169638
B               loc_169640
DCFS 26.0
DCD 0x2698
VLDR            S0, [R4,#0x108]
VLDR            S1, [R4,#0x118]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_169638
B               loc_169640
VLDR            S0, [R4,#0x108]
VLDR            S1, [R4,#0x118]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_169640
MOV             R6, #1
B               loc_169644
MOV             R6, #0
SXTB            R0, R6
CMP             R0, #0
MOVEQ           R5, R2
CMP             R5, #0
BEQ             loc_1698A0
VMOV.F32        S0, S29
ADD             R8, SP, #0x118+var_F0
ADD             R9, SP, #0x118+var_EC
VSUB.F32        S1, S23, S0
VADD.F32        S27, S22, S0
VSUB.F32        S28, S22, S0
VADD.F32        S22, S23, S0
VADD.F32        S31, S25, S0
VADD.F32        S23, S16, S0
VSUB.F32        S30, S16, S0
VADD.F32        S29, S24, S0
VADD.F32        S16, S18, S0
VSTR            S1, [SP,#0x118+var_98]
VADD.F32        S1, S17, S0
VSUB.F32        S24, S24, S0
VSUB.F32        S18, S18, S0
VSTR            S1, [SP,#0x118+var_90]
VSUB.F32        S1, S17, S0
VADD.F32        S17, S20, S0
VSUB.F32        S20, S20, S0
VSTR            S1, [SP,#0x118+var_8C]
VSUB.F32        S1, S25, S0
VADD.F32        S25, S21, S0
VSTR            S1, [SP,#0x118+var_80]
VSUB.F32        S1, S21, S0
VADD.F32        S21, S19, S0
VSUB.F32        S19, S19, S0
VSTR            S1, [SP,#0x118+var_E8]
STR             R8, [SP,#0x118+var_114]
STR             R9, [SP,#0x118+var_118]
LDR             R0, [R4]
ADD             R3, SP, #0x118+var_7C
ADD             R2, SP, #0x118+var_FC
MOV             R1, R5
LDR             R12, [R0,#0x430]
MOV             R0, R4
BLX             R12
CMP             R0, #0
LDRBNE          R0, [SP,#0x118+var_FC]
CMPNE           R0, #0
BEQ             loc_169888
ADD             R0, R5, #0x400
VLDR            S0, [R5,#0x108]
VLDR            S1, [R0,#0x224]
VADD.F32        S1, S0, S1
VCMPE.F32       S1, S27
VMRS            APSR_nzcv, FPSCR
BHI             loc_169758
VLDR            S2, [R0,#0x228]
VADD.F32        S2, S0, S2
VCMPE.F32       S2, S28
VMRS            APSR_nzcv, FPSCR
BLT             loc_169758
VLDR            S2, [R5,#0x10C]
VCMPE.F32       S2, S22
VMRS            APSR_nzcv, FPSCR
BHI             loc_169758
VLDR            S3, [R0,#0x234]
VADD.F32        S3, S2, S3
VLDR            S2, [SP,#0x118+var_98]
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
MOVGE           R1, #1
STRGE           R1, [SP,#0x118+var_B0]
VCMPE.F32       S1, S23
VMRS            APSR_nzcv, FPSCR
BHI             loc_1697A8
VLDR            S2, [R0,#0x228]
VADD.F32        S2, S0, S2
VCMPE.F32       S2, S30
VMRS            APSR_nzcv, FPSCR
BLT             loc_1697A8
VLDR            S2, [R5,#0x10C]
VLDR            S3, [SP,#0x118+var_90]
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BHI             loc_1697A8
VLDR            S3, [R0,#0x234]
VADD.F32        S3, S2, S3
VLDR            S2, [SP,#0x118+var_8C]
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
MOVGE           R1, #1
STRGE           R1, [SP,#0x118+var_B8]
VCMPE.F32       S1, S29
VMRS            APSR_nzcv, FPSCR
BHI             loc_1697F4
VLDR            S2, [R0,#0x228]
VADD.F32        S2, S0, S2
VCMPE.F32       S2, S24
VMRS            APSR_nzcv, FPSCR
BLT             loc_1697F4
VLDR            S2, [R5,#0x10C]
VCMPE.F32       S2, S31
VMRS            APSR_nzcv, FPSCR
BHI             loc_1697F4
VLDR            S3, [R0,#0x234]
VADD.F32        S3, S2, S3
VLDR            S2, [SP,#0x118+var_80]
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
MOVGE           R1, #1
STRGE           R1, [SP,#0x118+var_C4]
VCMPE.F32       S1, S17
VMRS            APSR_nzcv, FPSCR
BHI             loc_169840
VLDR            S2, [R0,#0x228]
VADD.F32        S2, S0, S2
VCMPE.F32       S2, S20
VMRS            APSR_nzcv, FPSCR
BLT             loc_169840
VLDR            S2, [R5,#0x10C]
VCMPE.F32       S2, S25
VMRS            APSR_nzcv, FPSCR
BHI             loc_169840
VLDR            S3, [R0,#0x234]
VADD.F32        S3, S2, S3
VLDR            S2, [SP,#0x118+var_E8]
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
MOVGE           R1, #1
STRGE           R1, [SP,#0x118+var_B4]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_169888
VLDR            S1, [R0,#0x228]
VADD.F32        S0, S0, S1
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BLT             loc_169888
VLDR            S0, [R5,#0x10C]
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
BHI             loc_169888
VLDR            S1, [R0,#0x234]
VADD.F32        S0, S0, S1
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #1
STRGE           R0, [SP,#0x118+var_AC]
SXTB            R0, R6
CMP             R0, #0
LDRNE           R5, [R5,#0xC]
LDREQ           R5, [R5,#0x10]
CMP             R5, #0
BNE             loc_1696C8
LDR             R0, [R11]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
ADD             R3, SP, #0x118+var_E0
ADD             R2, SP, #0x118+var_E4
MOV             R1, R4
BL              sub_21DF60
LDR             R0, [SP,#0x118+var_AC]
ADD             R6, R4, #0x2600
ADD             R6, R6, #0xC1
CMP             R0, #0
MOV             R1, #1
ADD             R5, R4, #0x2400
ADD             R5, R5, #0x2DC
ADD             R0, R4, #0x2400
STRB            R1, [R6]
BEQ             loc_169954
LDR             R1, [SP,#0x118+var_B8]
CMP             R1, #0
BEQ             loc_169998
LDR             R1, [SP,#0x118+var_B4]
CMP             R1, #0
BEQ             loc_1699E4
LDR             R1, [SP,#0x118+var_B0]
CMP             R1, #0
BEQ             loc_169A30
LDR             R1, [SP,#0x118+var_C4]
CMP             R1, #0
BEQ             loc_169A7C
VSTR            S26, [R4,#0xF8]
VSTR            S26, [R0,#0x29C]
VSTR            S26, [R0,#0x298]
MOV             R0, R5
BL              sub_5A18EC
VSTR            S26, [R5,#0xC]
VSTR            S26, [R5,#4]
MOV             R0, #0
STRB            R0, [R6]
LDR             R0, [R11]
BL              sub_1E45C8
LDRH            R1, [R0,#0x4A]
ORR             R1, R1, #4
STRH            R1, [R0,#0x4A]
B               loc_169AF8
VSTR            S26, [R4,#0xF8]
VSTR            S26, [R0,#0x29C]
VSTR            S26, [R0,#0x298]
MOV             R0, R5
BL              sub_5A18EC
VSTR            S26, [R5,#0xC]
VSTR            S26, [R5,#4]
VLDR            S0, =10.0
VSTR            S26, [SP,#0x118+var_D4]
VSTR            S0, [SP,#0x118+var_D0]
VSTR            S26, [SP,#0x118+var_CC]
ADD             R1, SP, #0x118+var_D4
MOV             R0, R4
BL              sub_16B0AC
NOP
NOP
B               loc_169AF8
VLDR            S16, =-45.0
VSTR            S16, [R4,#0xF8]
VSTR            S16, [R0,#0x29C]
VSTR            S16, [R0,#0x298]
MOV             R0, R5
BL              sub_5A18EC
VSTR            S16, [R5,#0xC]
VLDR            S1, =-15.0
VSTR            S16, [R5,#4]
VLDR            S0, =10.0
VSTR            S1, [SP,#0x118+var_D4]
VSTR            S0, [SP,#0x118+var_D0]
VSTR            S26, [SP,#0x118+var_CC]
ADD             R1, SP, #0x118+var_D4
MOV             R0, R4
BL              sub_16B0AC
NOP
NOP
B               loc_169AF8
VLDR            S16, =45.0
VSTR            S16, [R4,#0xF8]
VSTR            S16, [R0,#0x29C]
VSTR            S16, [R0,#0x298]
MOV             R0, R5
BL              sub_5A18EC
VSTR            S16, [R5,#0xC]
VLDR            S1, =15.0
VSTR            S16, [R5,#4]
VLDR            S0, =10.0
VSTR            S1, [SP,#0x118+var_D4]
VSTR            S0, [SP,#0x118+var_D0]
VSTR            S26, [SP,#0x118+var_CC]
ADD             R1, SP, #0x118+var_D4
MOV             R0, R4
BL              sub_16B0AC
NOP
NOP
B               loc_169AF8
VLDR            S16, =-90.0
VSTR            S16, [R4,#0xF8]
VSTR            S16, [R0,#0x29C]
VSTR            S16, [R0,#0x298]
MOV             R0, R5
BL              sub_5A18EC
VSTR            S16, [R5,#0xC]
VLDR            S0, =-15.0
VSTR            S16, [R5,#4]
VSTR            S0, [SP,#0x118+var_D4]
VSTR            S26, [SP,#0x118+var_D0]
VSTR            S26, [SP,#0x118+var_CC]
ADD             R1, SP, #0x118+var_D4
VLDR            S0, =10.0
MOV             R0, R4
BL              sub_16B0AC
NOP
NOP
B               loc_169AF8
VLDR            S16, =90.0
VSTR            S16, [R4,#0xF8]
VSTR            S16, [R0,#0x29C]
VSTR            S16, [R0,#0x298]
MOV             R0, R5
BL              sub_5A18EC
VSTR            S16, [R5,#0xC]
VLDR            S0, =15.0
VSTR            S16, [R5,#4]
VSTR            S0, [SP,#0x118+var_D4]
VSTR            S26, [SP,#0x118+var_D0]
VSTR            S26, [SP,#0x118+var_CC]
ADD             R1, SP, #0x118+var_D4
VLDR            S0, =10.0
MOV             R0, R4
BL              sub_16B0AC
NOP
NOP
B               loc_169AF8
ADD             R0, R4, #0x2600
ADD             R1, R4, #0x2700
ADD             R0, R0, #0x9A
ADD             R2, R4, #0x2400
ADD             R1, R1, #0x6F ; 'o'
ADD             R2, R2, #0x29C
STRB            R9, [R0]
ADD             R4, R4, #0x2400
STRB            R9, [R1]
ADD             R4, R4, #0x2A4
STR             R9, [R2]
STR             R9, [R4]
STRB            R7, [R10]
ADD             SP, SP, #0xB4
VPOP            {D8-D15}
POP             {R4-R11,PC}
