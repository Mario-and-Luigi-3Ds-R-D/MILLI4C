LDR             R1, [R0,#4]
ADD             R1, R1, #0x13C00
ADD             R1, R1, #0x78 ; 'x'
LDR             R2, [R1]
CMP             R2, #0
BXEQ            LR
PUSH            {R4-R8}
MOV             R3, #0xFFFFFFFF
LDR             R2, =0x8BA
LDRSB           R8, [R2,R0]
STRB            R8, [R0,#0x8BB]
STRB            R3, [R0,#0x8BA]
LDRB            R2, [R0,#0xDE]
TST             R2, #1
BEQ             loc_170528
TST             R2, #4
BEQ             loc_170534
STRB            R3, [R0,#0x8BB]
POP             {R4-R8}
BX              LR
LDR             R2, [R0,#0x464]
LDR             R3, =unk_68E7EC
LDR             R1, [R1]
AND             R2, R2, #0xF
MOV             R12, #0
LDRB            R7, [R3,R2]
LDR             R2, =0x2698
MOV             R6, #1
LDRB            R4, [R2,R0]
ADD             R2, R0, #0x400
CMP             R4, #0
BEQ             loc_170580
CMP             R4, #1
BEQ             loc_1705D8
CMP             R4, #2
BEQ             loc_1705AC
CMP             R4, #3
BNE             loc_17062C
B               loc_170604
VLDR            S1, [R2,#0x1BC]
VLDR            S2, [R0,#0x108]
VLDR            S7, [R2,#0x1C0]
ADD             R3, R1, #0x20 ; ' '
VADD.F32        S1, S2, S1
VADD.F32        S2, S2, S7
VLDM            R3, {S5-S6}
VLDR            S4, [R0,#0x10C]
VLDR            S0, [R1]
VLDR            S3, [R1,#8]
B               loc_17062C
VLDR            S1, [R2,#0x1C0]
VLDR            S2, [R0,#0x108]
VLDR            S7, [R2,#0x1BC]
ADD             R3, R1, #0x20 ; ' '
VSUB.F32        S1, S2, S1
VSUB.F32        S2, S2, S7
VLDM            R3, {S5-S6}
VLDR            S4, [R0,#0x10C]
VLDR            S0, [R1]
VLDR            S3, [R1,#8]
B               loc_17062C
VLDR            S1, [R2,#0x1C0]
VLDR            S2, [R0,#0x10C]
VLDR            S7, [R2,#0x1BC]
VLDR            S4, [R0,#0x108]
VSUB.F32        S1, S2, S1
VSUB.F32        S2, S2, S7
VLDR            S5, [R1]
VLDR            S6, [R1,#8]
VLDR            S0, [R1,#0x20]
VLDR            S3, [R1,#0x24]
B               loc_17062C
VLDR            S1, [R2,#0x1BC]
VLDR            S2, [R0,#0x10C]
VLDR            S7, [R2,#0x1C0]
VLDR            S4, [R0,#0x108]
VADD.F32        S1, S2, S1
VADD.F32        S2, S2, S7
VLDR            S5, [R1]
VLDR            S6, [R1,#8]
VLDR            S0, [R1,#0x20]
VLDR            S3, [R1,#0x24]
LDR             R3, [R1,#0x28]
TST             R3, #0x80000
BNE             loc_1706E4
VCMPE.F32       S4, S5
VMRS            APSR_nzcv, FPSCR
BLT             loc_1706E4
VCMPE.F32       S4, S6
VMRS            APSR_nzcv, FPSCR
BHI             loc_1706E4
TST             R3, #0x10
BNE             loc_170664
LDR             R5, [R0,#0x4EC]
TST             R5, #1
BNE             loc_1706E4
MOV             R5, R3,LSL#13
TST             R7, R5,LSR#28
BEQ             loc_1706E4
MOV             R3, R3,LSL#28
CMP             R6, R3,LSR#30
BNE             loc_170694
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_170694
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BLS             loc_1706CC
CMP             R6, R3,LSR#30
BEQ             loc_1706E4
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1706B4
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BLS             loc_1706CC
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1706E4
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BHI             loc_1706E4
SXTB            R3, R12
STRB            R3, [R0,#0x8BA]
LDR             R5, [R1,#0x28]
TST             R5, #0x20
CMPEQ           R8, R3
BNE             loc_17052C
LDR             R3, [R1,#0x28]
TST             R3, #0x100000
ADDEQ           R12, R12, #1
ADDEQ           R1, R1, #0x2C ; ','
BEQ             loc_17055C
POP             {R4-R8}
BX              LR
