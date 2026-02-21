PUSH            {R4,R5}
LDR             R1, [R0]
VLDR            S3, [R0,#0x10]
LDR             R12, =off_6CDF98
ADD             R1, R1, #0x570
ADD             R2, R1, #0xC
VLDR            S6, [R1]
VLDR            S5, [R1,#4]
VLDR            S4, [R1,#8]
VLDR            S9, [R1]
VLDR            S8, [R1,#4]
VLDR            S7, [R1,#8]
VLDM            R2, {S0-S2}
VSUB.F32        S6, S6, S0
VSUB.F32        S5, S5, S1
VSUB.F32        S4, S4, S2
VMLA.F32        S0, S3, S6
VMLA.F32        S1, S3, S5
VMLA.F32        S2, S3, S4
VLDR            S3, [R1,#0xC]
ADD             R1, R1, #0x10
VLDR            S6, [R0,#0x14]
VSUB.F32        S9, S9, S3
VLDM            R1, {S4-S5}
ADD             R1, R0, #0x18
VSUB.F32        S8, S8, S4
VSUB.F32        S7, S7, S5
VMLA.F32        S3, S6, S9
VMLA.F32        S4, S6, S8
VMLA.F32        S5, S6, S7
VSTM            R1, {S0-S5}
LDR             R1, [R0]
VLDR            S3, [R0,#0x10]
ADD             R1, R1, #0x400
ADD             R1, R1, #0x188
VLDM            R1, {S0-S2}
VLDR            S4, [R1,#0x14]
VLDR            S6, [R1,#0xC]
VLDR            S5, [R1,#0x10]
VSUB.F32        S4, S4, S2
VSUB.F32        S6, S6, S0
VSUB.F32        S5, S5, S1
VLDR            S9, [R1,#0xC]
VLDR            S8, [R1,#0x10]
VLDR            S7, [R1,#0x14]
VMLA.F32        S2, S3, S4
VMLA.F32        S0, S3, S6
VMLA.F32        S1, S3, S5
VLDR            S4, [R1]
VLDR            S3, [R1,#4]
VLDR            S5, [R1,#8]
VSUB.F32        S9, S9, S4
VSUB.F32        S8, S8, S3
VSUB.F32        S7, S7, S5
VLDR            S6, [R0,#0x14]
ADD             R1, R0, #0x30 ; '0'
VMLA.F32        S4, S6, S9
VMLA.F32        S3, S6, S8
VMLA.F32        S5, S6, S7
VSTR            S4, [R0,#0x3C]
VSTR            S3, [R0,#0x40]
VSTR            S5, [R0,#0x44]
VSTM            R1, {S0-S2}
LDR             R1, [R0]
ADD             R1, R1, #0x400
ADD             R1, R1, #0x2F8
LDM             R1, {R3,R4}
MOV             R1, #0
MOV             R2, R1
CMP             R4, #0
BEQ             loc_26A3A0
ADD             R1, R4, #0x400
VLDR            S2, [R0,#0x18]
VLDR            S0, [R1,#0x188]
VLDR            S1, [R1,#0x194]
VLDR            S3, [R0,#0x24]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S2, S1
VMRSLS          APSR_nzcv, FPSCR
VCMPE.F32       S0, S3
MOVHI           R4, #0
MOVLS           R4, #1
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S3, S1
VMRSLS          APSR_nzcv, FPSCR
MOVHI           R1, #0
MOVLS           R1, #1
TST             R4, R1
BNE             loc_26A394
CMP             R4, #0
LDR             R4, [R12]
LDR             R4, [R4,#0x124]
VLDR            S4, [R4,#0x3D4]
BEQ             loc_26A37C
VSUB.F32        S1, S3, S1
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
BLS             loc_26A394
CMP             R1, #0
BEQ             loc_26A39C
VSUB.F32        S0, S0, S2
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
BHI             loc_26A39C
MOV             R1, #1
B               loc_26A3A0
MOV             R1, #0
CMP             R3, #0
BEQ             loc_26A43C
ADD             R2, R3, #0x400
VLDR            S3, [R0,#0x30]
VLDR            S1, [R2,#0x17C]
VLDR            S2, [R2,#0x170]
VLDR            S0, [R0,#0x3C]
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S3, S2
VMRSLS          APSR_nzcv, FPSCR
VCMPE.F32       S1, S0
MOVHI           R3, #0
MOVLS           R3, #1
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S0, S2
VMRSLS          APSR_nzcv, FPSCR
MOVHI           R2, #0
MOVLS           R2, #1
TST             R3, R2
BNE             loc_26A430
CMP             R3, #0
LDR             R3, [R12]
LDR             R3, [R3,#0x124]
VLDR            S4, [R3,#0x3D4]
BEQ             loc_26A418
VSUB.F32        S0, S0, S2
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
BLS             loc_26A430
CMP             R2, #0
BEQ             loc_26A438
VSUB.F32        S0, S1, S3
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
BHI             loc_26A438
MOV             R2, #1
B               loc_26A43C
MOV             R2, #0
TST             R1, R2
MOVNE           R1, #0
BEQ             loc_26A454
STRB            R1, [R0,#0xC]
POP             {R4,R5}
BX              LR
CMP             R1, #0
MOVNE           R1, #2
BNE             loc_26A448
CMP             R2, #0
MOVNE           R1, #3
MOVEQ           R1, #1
B               loc_26A448
