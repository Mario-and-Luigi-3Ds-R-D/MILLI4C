LDR             R1, [R0,#4]
ADD             R1, R1, #0x13C00
ADD             R1, R1, #0x78 ; 'x'
LDR             R1, [R1]
CMP             R1, #0
BXEQ            LR
PUSH            {R4-R9}
MOV             R2, #0xFFFFFFFF
ADD             R9, R0, #0x800
VPUSH           {D8-D9}
SUB             SP, SP, #0x20 ; ' '
LDRB            R1, [R0,#0x8BA]
STRB            R1, [R0,#0x8BB]
STRB            R2, [R0,#0x8BA]
LDRB            R1, [R0,#0xDE]
TST             R1, #1
BEQ             loc_170D80
TST             R1, #4
BEQ             loc_170D94
STRB            R2, [R0,#0x8BB]
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8-D9}
POP             {R4-R9}
BX              LR
LDR             R1, =0x2686
VLDR            S1, [R0,#0x108]
VLDR            S14, =1.0
VLDR            S15, =-1.0
LDRB            R1, [R1,R0]
VLDR            S9, =0.0
MOV             R7, #0
CMP             R1, #2
MOVEQ           R1, #0x19
MOVNE           R1, #0x14
VMOV            S0, R1
MOV             R8, SP
MOV             R3, #1
VCVT.F32.U32    S0, S0
VADD.F32        S16, S1, S0
VSTR            S16, [SP,#0x48+var_44]
VSTR            S16, [SP,#0x48+var_48]
VLDR            S1, [R0,#0x108]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x48+var_40]
VSTR            S0, [SP,#0x48+var_3C]
LDR             R1, [R0,#0x110]
STR             R1, [SP,#0x48+var_2C]
STR             R1, [SP,#0x48+var_38]
LDR             R1, [R0,#0x110]
STR             R1, [SP,#0x48+var_30]
STR             R1, [SP,#0x48+var_34]
LDR             R1, [R0,#4]
ADD             R1, R1, #0x13C00
ADD             R1, R1, #0x78 ; 'x'
LDR             R1, [R1]
LDR             R6, [R1,#0x28]
TST             R6, #0x80000
BNE             loc_171214
VLDR            S1, [R1,#0x20]
VLDR            S0, [R0,#0x10C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_171214
VLDR            S1, [R1,#0x24]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_171214
MOV             R5, R6,LSL#28
MOV             R4, R8
CMP             R3, R5,LSR#30
MOVEQ           R2, #4
MOVNE           R2, #1
ANDS            R6, R6, #3
ADD             R12, R8, #0x10
BEQ             loc_170E74
CMP             R6, #1
BEQ             loc_170F74
CMP             R6, #2
BNE             loc_171214
B               loc_1710C0
VLDM            R1, {S2-S3}
VLDR            S0, [R1,#8]
VLDR            S1, [R1,#0xC]
VSUB.F32        S4, S0, S2
VSUB.F32        S5, S1, S3
VLDR            S7, [R12]
VLDR            S6, [R4]
VSUB.F32        S8, S7, S1
VSUB.F32        S10, S6, S0
VMUL.F32        S8, S4, S8
VMLS.F32        S8, S5, S10
VCMPE.F32       S8, S9
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S8, S14
VMOVLE.F32      S8, S9
BGT             loc_170EB8
VMOVCC.F32      S8, S15
VCMPE.F32       S8, S9
VMRS            APSR_nzcv, FPSCR
BHI             loc_170F54
VLDR            S8, [R1,#0x10]
VLDR            S10, [R1,#0x14]
VMOV.F32        S13, S9
VSUB.F32        S11, S8, S0
VSUB.F32        S12, S7, S10
VSUB.F32        S17, S10, S1
VSUB.F32        S18, S6, S8
VMUL.F32        S11, S11, S12
VMLS.F32        S11, S17, S18
VCMPE.F32       S11, S13
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S11, S14
VMOVLE.F32      S11, S13
BGT             loc_170F00
VMOVCC.F32      S11, S15
VCMPE.F32       S11, S13
VMRS            APSR_nzcv, FPSCR
BHI             loc_170F54
VSUB.F32        S8, S2, S8
VSUB.F32        S7, S7, S3
VSUB.F32        S11, S6, S2
VSUB.F32        S10, S3, S10
VMUL.F32        S6, S8, S7
VMLS.F32        S6, S10, S11
VCMPE.F32       S6, S13
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S6, S14
VMOVLE.F32      S6, S13
BGT             loc_170F3C
VMOVCC.F32      S6, S15
VCMPE.F32       S6, S13
VMRS            APSR_nzcv, FPSCR
BHI             loc_170F54
SUBS            R2, R2, #1
BEQ             loc_17122C
B               loc_170F5C
CMP             R3, R5,LSR#30
BEQ             loc_171214
ADD             R6, R6, #1
CMP             R6, #4
ADD             R4, R4, #4
ADD             R12, R12, #4
BLT             loc_170E88
B               loc_171214
VLDR            S5, [R1]
VLDR            S0, [R1,#8]
VLDR            S4, [R1,#4]
VLDR            S1, [R1,#0xC]
VSUB.F32        S2, S0, S5
MOV             R6, #0
VSUB.F32        S3, S1, S4
VLDR            S8, [R12]
VLDR            S7, [R4]
VMOV.F32        S6, S9
VSUB.F32        S10, S8, S1
VSUB.F32        S11, S7, S0
VMUL.F32        S10, S2, S10
VMLS.F32        S10, S3, S11
VCMPE.F32       S10, S6
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S10, S14
BGT             loc_170FC4
VMOVCC.F32      S10, S15
VMOVCS.F32      S10, S6
VCMPE.F32       S10, S6
VMRS            APSR_nzcv, FPSCR
BHI             loc_1710A0
VLDR            S10, [R1,#0x10]
VLDR            S11, [R1,#0x14]
VSUB.F32        S12, S10, S0
VSUB.F32        S13, S8, S11
VSUB.F32        S17, S11, S1
VSUB.F32        S18, S7, S10
VMUL.F32        S12, S12, S13
VMLS.F32        S12, S17, S18
VCMPE.F32       S12, S6
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S12, S14
BGT             loc_171008
VMOVCC.F32      S12, S15
VMOVCS.F32      S12, S6
VCMPE.F32       S12, S6
VMRS            APSR_nzcv, FPSCR
BHI             loc_1710A0
VLDR            S12, [R1,#0x18]
VLDR            S13, [R1,#0x1C]
VSUB.F32        S10, S12, S10
VSUB.F32        S17, S8, S13
VSUB.F32        S11, S13, S11
VSUB.F32        S19, S7, S12
VMUL.F32        S10, S10, S17
VMLS.F32        S10, S11, S19
VCMPE.F32       S10, S6
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S18, S14
BGT             loc_17104C
VMOVCC.F32      S18, S15
VMOVCS.F32      S18, S6
VCMPE.F32       S18, S6
VMRS            APSR_nzcv, FPSCR
BHI             loc_1710A0
VSUB.F32        S10, S5, S12
VSUB.F32        S8, S8, S4
VSUB.F32        S12, S7, S5
VSUB.F32        S11, S4, S13
VMUL.F32        S7, S10, S8
VMLS.F32        S7, S11, S12
VCMPE.F32       S7, S6
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S7, S14
BGT             loc_171088
VMOVCC.F32      S7, S15
VMOVCS.F32      S7, S6
VCMPE.F32       S7, S6
VMRS            APSR_nzcv, FPSCR
BHI             loc_1710A0
SUBS            R2, R2, #1
BEQ             loc_17122C
B               loc_1710A8
CMP             R3, R5,LSR#30
BEQ             loc_171214
ADD             R6, R6, #1
CMP             R6, #4
ADD             R4, R4, #4
ADD             R12, R12, #4
BLT             loc_170F90
B               loc_171214
VLDR            S0, [R1]
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_171120
VLDR            S1, [R1,#8]
VCMPE.F32       S16, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_171120
VLDR            S2, [R1,#4]
VLDR            S1, [SP,#0x48+var_38]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_171120
VLDR            S2, [R1,#0xC]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_171120
SUBS            R2, R2, #1
BNE             loc_171128
B               loc_17122C
DCD 0x2686
DCFS 1.0
DCFS -1.0
DCFS 0.0
CMP             R3, R5,LSR#30
BEQ             loc_171214
VLDR            S1, [SP,#0x48+var_44]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDRLS          S2, [R1,#8]
VCMPELS.F32     S1, S2
VMRSLS          APSR_nzcv, FPSCR
BHI             loc_171174
VLDR            S2, [R1,#4]
VLDR            S1, [SP,#0x48+var_34]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_171174
VLDR            S2, [R1,#0xC]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_171174
SUBS            R2, R2, #1
BNE             loc_17117C
B               loc_17122C
CMP             R3, R5,LSR#30
BEQ             loc_171214
VLDR            S1, [SP,#0x48+var_40]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDRLS          S2, [R1,#8]
VCMPELS.F32     S1, S2
VMRSLS          APSR_nzcv, FPSCR
BHI             loc_1711C8
VLDR            S2, [R1,#4]
VLDR            S1, [SP,#0x48+var_30]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_1711C8
VLDR            S2, [R1,#0xC]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_1711C8
SUBS            R2, R2, #1
BNE             loc_1711D0
B               loc_17122C
CMP             R3, R5,LSR#30
BEQ             loc_171214
VLDR            S1, [SP,#0x48+var_3C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDRLS          S0, [R1,#8]
VCMPELS.F32     S1, S0
VMRSLS          APSR_nzcv, FPSCR
BHI             loc_171214
VLDR            S1, [R1,#4]
VLDR            S0, [SP,#0x48+var_2C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_171214
VLDR            S1, [R1,#0xC]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
SUBSLS          R2, R2, #1
BEQ             loc_17122C
LDR             R2, [R1,#0x28]
TST             R2, #0x100000
ADDEQ           R7, R7, #1
ADDEQ           R1, R1, #0x2C ; ','
BEQ             loc_170E10
B               loc_170D84
SXTB            R2, R7
STRB            R2, [R0,#0x8BA]
LDR             R12, [R1,#0x28]
TST             R12, #0x20
LDRSBEQ         R12, [R9,#0xBB]
CMPEQ           R12, R2
BNE             loc_170D84
B               loc_171214
