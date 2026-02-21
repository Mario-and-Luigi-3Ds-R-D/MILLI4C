PUSH            {R4,R5}
ADD             R4, R1, #0xC
VPUSH           {D8-D15}
SUB             SP, SP, #0x48
MOV             R3, #0
MOV             R2, SP
VLDM            R4, {S3-S11}
ADD             R12, R3, R3,LSL#1
ADD             R3, R3, #1
ADD             R4, R0, R12,LSL#2
ADD             R12, R2, R12,LSL#2
VLDR            S0, [R4,#0xC]
VLDR            S2, [R4,#0x10]
VLDR            S1, [R4,#0x14]
VMUL.F32        S12, S0, S3
VMUL.F32        S13, S0, S6
VMUL.F32        S0, S0, S9
CMP             R3, #3
VMLA.F32        S12, S2, S4
VMLA.F32        S13, S2, S7
VMLA.F32        S0, S2, S10
VMLA.F32        S12, S1, S5
VMLA.F32        S13, S1, S8
VMLA.F32        S0, S1, S11
VSTR            S0, [R12,#8]
VSTM            R12, {S12-S13}
BCC             loc_275384
VLDR            S2, [R1]
VLDR            S5, [R0]
VLDR            S3, [R1,#4]
VLDR            S4, [R0,#4]
VSUB.F32        S2, S2, S5
VLDR            S0, [R1,#8]
VLDR            S1, [R0,#8]
VSUB.F32        S3, S3, S4
VLDR            S11, [R0,#0x24]
VSUB.F32        S4, S0, S1
VLDR            S0, [R0,#0xC]
VLDR            S1, [R0,#0x18]
ADD             R3, R0, #0x10
VLDR            S10, [R0,#0x1C]
VMUL.F32        S0, S2, S0
VMUL.F32        S1, S2, S1
VMUL.F32        S2, S2, S11
VLDM            R3, {S8-S9}
MOV             R3, #0
VLDR            S7, [R0,#0x28]
VLDR            S5, [R0,#0x20]
VLDR            S6, [R0,#0x2C]
ADD             R5, SP, #0x90+var_6C
VMLA.F32        S0, S3, S8
VMLA.F32        S1, S3, S10
VMLA.F32        S2, S3, S7
VMLA.F32        S0, S4, S9
VMLA.F32        S1, S4, S5
VMLA.F32        S2, S4, S6
VLDR            S4, =1.1921e-7
VLDR            S9, =0.0
ADD             R4, R3, R3,LSL#1
ADD             R3, R3, #1
ADD             R12, R2, R4,LSL#2
ADD             R4, R5, R4,LSL#2
VLDR            S3, [R12]
VCMPE.F32       S3, S9
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S3, S3
VADD.F32        S3, S3, S4
VSTR            S3, [R4]
VLDR            S3, [R12,#4]
VCMPE.F32       S3, S9
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S3, S3
VADD.F32        S3, S3, S4
VSTR            S3, [R4,#4]
VLDR            S3, [R12,#8]
VCMPE.F32       S3, S9
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S3, S3
CMP             R3, #3
VADD.F32        S3, S3, S4
VSTR            S3, [R4,#8]
BCC             loc_275450
VLDR            S4, [R1,#0x30]
VLDR            S11, [SP,#0x90+var_6C]
VCMPE.F32       S9, S0
VLDR            S5, [R1,#0x34]
VMUL.F32        S8, S4, S11
VLDR            S12, [SP,#0x90+var_68]
VLDR            S3, [R0,#0x30]
VLDR            S6, [R1,#0x38]
VLDR            S13, [SP,#0x90+var_64]
VMRS            APSR_nzcv, FPSCR
VMLA.F32        S8, S5, S12
VMOV.F32        S10, S3
VMOV.F32        S7, S0
VNEGGT.F32      S7, S7
VMLA.F32        S8, S6, S13
VADD.F32        S8, S10, S8
VCMPE.F32       S8, S7
VMRS            APSR_nzcv, FPSCR
BCC             loc_27582C
ADD             R1, SP, #0x90+var_60
VCMPE.F32       S9, S1
VLDM            R1, {S14-S15}
VLDR            S7, [R0,#0x34]
VLDR            S16, [SP,#0x90+var_58]
VMUL.F32        S10, S4, S14
VMLA.F32        S10, S5, S15
VMRS            APSR_nzcv, FPSCR
VMLA.F32        S10, S6, S16
VMOV.F32        S17, S7
VMOV.F32        S8, S1
VNEGGT.F32      S8, S8
VADD.F32        S10, S17, S10
VCMPE.F32       S10, S8
VMRS            APSR_nzcv, FPSCR
BCC             loc_27582C
ADD             R1, SP, #0x90+var_54
VCMPE.F32       S9, S2
VLDM            R1, {S17-S18}
VLDR            S8, [R0,#0x38]
VLDR            S19, [SP,#0x90+var_4C]
VMUL.F32        S20, S4, S17
VMLA.F32        S20, S5, S18
VMRS            APSR_nzcv, FPSCR
VMLA.F32        S20, S6, S19
VMOV.F32        S21, S8
VMOV.F32        S10, S2
VNEGGT.F32      S10, S10
VADD.F32        S20, S21, S20
VCMPE.F32       S20, S10
VMRS            APSR_nzcv, FPSCR
BCC             loc_27582C
VLDR            S20, [SP,#0x90+var_90]
VMUL.F32        S10, S3, S11
VLDR            S22, [SP,#0x90+var_84]
VMUL.F32        S21, S0, S20
VLDR            S23, [SP,#0x90+var_78]
VMLA.F32        S10, S7, S14
VMLA.F32        S21, S1, S22
VMLA.F32        S10, S8, S17
VMLA.F32        S21, S2, S23
VCMPE.F32       S9, S21
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S24, S4
VNEGGT.F32      S21, S21
VADD.F32        S10, S10, S24
VCMPE.F32       S10, S21
VMRS            APSR_nzcv, FPSCR
BCC             loc_27582C
VLDR            S29, [SP,#0x90+var_8C]
VMUL.F32        S21, S3, S12
VLDR            S28, [SP,#0x90+var_80]
VMUL.F32        S10, S0, S29
VLDR            S24, [SP,#0x90+var_74]
VMLA.F32        S21, S7, S15
VMLA.F32        S10, S1, S28
VMLA.F32        S21, S8, S18
VMLA.F32        S10, S2, S24
VCMPE.F32       S9, S10
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S25, S5
VNEGGT.F32      S10, S10
VADD.F32        S21, S21, S25
VCMPE.F32       S21, S10
VMRS            APSR_nzcv, FPSCR
BCC             loc_27582C
VLDR            S25, [SP,#0x90+var_88]
VMUL.F32        S21, S3, S13
VLDR            S26, [SP,#0x90+var_7C]
VMUL.F32        S10, S0, S25
VLDR            S27, [SP,#0x90+var_70]
VMLA.F32        S21, S7, S16
VMLA.F32        S10, S1, S26
VMLA.F32        S21, S8, S19
VMLA.F32        S10, S2, S27
VCMPE.F32       S9, S10
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S30, S6
VNEGGT.F32      S10, S10
VADD.F32        S21, S21, S30
VCMPE.F32       S21, S10
VMRS            APSR_nzcv, FPSCR
BCC             loc_27582C
VMUL.F32        S10, S2, S22
VMUL.F32        S21, S7, S17
VMUL.F32        S30, S5, S13
VMLS.F32        S10, S1, S23
VMLA.F32        S21, S8, S14
VMLA.F32        S30, S6, S12
VCMPE.F32       S9, S10
VMRS            APSR_nzcv, FPSCR
VADD.F32        S21, S21, S30
VNEGGT.F32      S10, S10
VCMPE.F32       S10, S21
VMRS            APSR_nzcv, FPSCR
BGT             loc_27582C
VMUL.F32        S10, S2, S28
VMUL.F32        S21, S7, S18
VMUL.F32        S30, S4, S13
VMLS.F32        S10, S1, S24
VMLA.F32        S21, S8, S15
VMLA.F32        S30, S6, S11
VCMPE.F32       S10, S9
VMRS            APSR_nzcv, FPSCR
VADD.F32        S21, S21, S30
VNEGCC.F32      S10, S10
VCMPE.F32       S10, S21
VMRS            APSR_nzcv, FPSCR
BGT             loc_27582C
VMUL.F32        S10, S2, S26
VMUL.F32        S21, S7, S19
VMUL.F32        S30, S4, S12
VMLS.F32        S10, S1, S27
VMLA.F32        S21, S8, S16
VMLA.F32        S30, S5, S11
VCMPE.F32       S10, S9
VMRS            APSR_nzcv, FPSCR
VADD.F32        S21, S21, S30
VNEGCC.F32      S10, S10
VCMPE.F32       S10, S21
VMRS            APSR_nzcv, FPSCR
BGT             loc_27582C
VMUL.F32        S10, S0, S23
VMUL.F32        S21, S3, S17
VMUL.F32        S30, S5, S16
VMLS.F32        S10, S2, S20
VMLA.F32        S21, S8, S11
VMLA.F32        S30, S6, S15
VCMPE.F32       S10, S9
VMRS            APSR_nzcv, FPSCR
VADD.F32        S21, S21, S30
VNEGCC.F32      S10, S10
VCMPE.F32       S10, S21
VMRS            APSR_nzcv, FPSCR
BGT             loc_27582C
VMUL.F32        S10, S0, S24
VMUL.F32        S21, S3, S18
VMUL.F32        S23, S4, S16
VMLS.F32        S10, S2, S20
VMLA.F32        S21, S8, S12
VMLA.F32        S23, S6, S14
VCMPE.F32       S10, S9
VMRS            APSR_nzcv, FPSCR
VADD.F32        S21, S21, S23
VNEGCC.F32      S10, S10
VCMPE.F32       S10, S21
VMRS            APSR_nzcv, FPSCR
BGT             loc_27582C
VMUL.F32        S10, S3, S19
VMUL.F32        S21, S4, S15
VMLA.F32        S10, S8, S13
VMUL.F32        S8, S0, S27
VMLA.F32        S21, S5, S14
VMLS.F32        S8, S2, S25
VCMPE.F32       S8, S9
VMRS            APSR_nzcv, FPSCR
VADD.F32        S2, S10, S21
VNEGCC.F32      S8, S8
VCMPE.F32       S8, S2
VMRS            APSR_nzcv, FPSCR
BGT             loc_27582C
VMUL.F32        S2, S1, S20
VMUL.F32        S8, S3, S14
VMUL.F32        S10, S5, S19
VMLS.F32        S2, S0, S22
VMLA.F32        S8, S7, S11
VMLA.F32        S10, S6, S18
VCMPE.F32       S2, S9
VMRS            APSR_nzcv, FPSCR
VADD.F32        S8, S8, S10
VNEGCC.F32      S2, S2
VCMPE.F32       S2, S8
VMRS            APSR_nzcv, FPSCR
BGT             loc_27582C
VMUL.F32        S2, S1, S29
VMUL.F32        S8, S3, S15
VMUL.F32        S10, S4, S19
VMLS.F32        S2, S0, S28
VMLA.F32        S8, S7, S12
VMLA.F32        S10, S6, S17
VCMPE.F32       S2, S9
VMRS            APSR_nzcv, FPSCR
VADD.F32        S6, S8, S10
VNEGCC.F32      S2, S2
VCMPE.F32       S2, S6
VMRS            APSR_nzcv, FPSCR
BGT             loc_27582C
VMUL.F32        S1, S1, S25
VMUL.F32        S2, S3, S16
VMUL.F32        S3, S4, S18
VMLS.F32        S1, S0, S26
VMLA.F32        S2, S7, S13
VMLA.F32        S3, S5, S17
VCMPE.F32       S1, S9
VMRS            APSR_nzcv, FPSCR
VADD.F32        S0, S2, S3
VNEGCC.F32      S1, S1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVLE           R0, #1
BLE             loc_275830
B               loc_27582C
DCFS 1.1921e-7
DCFS 0.0
MOV             R0, #0
ADD             SP, SP, #0x48 ; 'H'
VPOP            {D8-D15}
POP             {R4,R5}
BX              LR
