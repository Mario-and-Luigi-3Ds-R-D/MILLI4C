LDR             R2, =0x1464C
MOV             R0, #4
VLDR            S4, =4.0
LDR             R1, =0x40C90FDB
VCVT.F32.U32    S0, S0
VSTR            S2, [R5,#0x248]
VMUL.F32        S0, S0, S19
VMUL.F32        S0, S0, S18
VSUB.F32        S3, S1, S0
VSTR            S3, [R5,#0x244]
STRH            R0, [R2,R4]
VLDR            S0, [R4,#0x48]
VMOV            R0, S0
VSUB.F32        S1, S3, S0
CMP             R0, R1
VDIV.F32        S5, S1, S4
VSTR            S5, [R5,#0x23C]
VLDR            S1, [R4,#0x4C]
VSUB.F32        S5, S2, S1
VDIV.F32        S6, S5, S4
VSTR            S6, [R5,#0x240]
BLT             loc_1900AC
VSUB.F32        S0, S0, S18
VSUB.F32        S3, S3, S18
VSTR            S0, [R4,#0x48]
VSTR            S3, [R5,#0x244]
B               loc_1900C8
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BHI             loc_1900C8
VADD.F32        S0, S0, S18
VADD.F32        S3, S3, S18
VSTR            S0, [R4,#0x48]
VSTR            S3, [R5,#0x244]
VMOV            R0, S1
CMP             R0, R1
BLT             loc_190118
VSUB.F32        S0, S1, S18
VSUB.F32        S1, S2, S18
VSTR            S0, [R4,#0x4C]
VSTR            S1, [R5,#0x248]
B               loc_190134
DCFS 3.4028e38
DCFS 0.000015259
DCFS 6.2832
DCFS 40.744
DCFS 0.0
DCD 0x47800000
DCFS 65536.0
DCD flt_697140
DCFS 4.7124
DCFS 4.0
DCD 0x1464C
DCD 0x40C90FDB
VCMPE.F32       S1, S17
VMRS            APSR_nzcv, FPSCR
BHI             loc_190134
VADD.F32        S0, S1, S18
VADD.F32        S1, S2, S18
VSTR            S0, [R4,#0x4C]
VSTR            S1, [R5,#0x248]
ADD             R4, R4, #0x14400
ADD             R4, R4, #0x258
STRB            R8, [R4]
ADD             SP, SP, #0xBC
VPOP            {D8-D9}
POP             {R4-R9,PC}
