PUSH            {R4-R8,LR}
MOV             R6, R0
ADD             R4, R1, #0x400
VLDR            S5, =-12.0
VLDR            S7, =-50.0
VLDR            S0, =12.0
VLDR            S10, =50.0
VLDR            S2, =130.0
MOV             R5, R1
VPUSH           {D8-D9}
MOV             R7, R2
LDR             R0, [R0,#4]
VLDR            S9, [R4,#0x234]
VLDR            S4, [R4,#0x228]
VLDR            S1, [R4,#0x224]
VLDR            S16, [R0,#0x10C]
VSUB.F32        S5, S5, S4
VSUB.F32        S7, S7, S4
VSUB.F32        S8, S16, S9
VSUB.F32        S6, S0, S1
VSUB.F32        S4, S10, S1
VLDR            S3, [R1,#0x10C]
VNEG.F32        S1, S9
VCMPE.F32       S8, S3
VMRS            APSR_nzcv, FPSCR
VADDLS.F32      S8, S16, S2
VCMPELS.F32     S3, S8
VMRSLS          APSR_nzcv, FPSCR
BHI             loc_1BE5FC
VADD.F32        S8, S16, S1
VSUB.F32        S7, S7, S5
VSUB.F32        S5, S2, S1
VLDR            S1, [R0,#0x108]
VSUB.F32        S2, S3, S8
VLDR            S3, [R5,#0x108]
VDIV.F32        S8, S7, S5
VMOV.F32        S7, S1
VMLA.F32        S7, S8, S2
VCMPE.F32       S3, S7
VMRS            APSR_nzcv, FPSCR
BLT             loc_1BE5FC
VSUB.F32        S6, S4, S6
VDIV.F32        S4, S6, S5
VMLA.F32        S1, S4, S2
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BGE             loc_1BE6B8
ADD             R1, R0, #0x23000
ADD             R1, R1, #0x4E0
LDR             R2, [R6,#8]
VLDR            S2, [R1,#0x28]
VLDR            S3, =49.0
VLDR            S1, [R1,#0x2C]
LDRSH           R2, [R2]
VSUB.F32        S17, S2, S0
VADD.F32        S18, S2, S0
VADD.F32        S19, S1, S3
SUB             R1, R2, #0x18
CMP             R1, #3
VMOVLS.F32      S16, S1
CMPLS           R7, #0
BNE             loc_1BE64C
MOV             R1, R5
BL              sub_35844C
CMP             R0, #0
NOP
BNE             loc_1BE6B8
VLDR            S1, [R4,#0x228]
VLDR            S2, [R5,#0x108]
VLDR            S4, [R4,#0x224]
VLDR            S3, [R4,#0x234]
VADD.F32        S1, S2, S1
VLDR            S0, [R5,#0x10C]
VADD.F32        S2, S2, S4
VADD.F32        S3, S0, S3
VCMPE.F32       S17, S1
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S2, S18
VMRSLS          APSR_nzcv, FPSCR
BHI             loc_1BE698
VCMPE.F32       S3, S16
VMRS            APSR_nzcv, FPSCR
BLT             loc_1BE698
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BLS             loc_1BE6B8
CMP             R7, #0
BNE             loc_1BE6C4
LDR             R0, [R6,#4]
MOV             R1, R5
BL              sub_35844C
CMP             R0, #0
NOP
BEQ             loc_1BE6C4
VPOP            {D8-D9}
MOV             R0, #1
POP             {R4-R8,PC}
VPOP            {D8-D9}
MOV             R0, #0
POP             {R4-R8,PC}
