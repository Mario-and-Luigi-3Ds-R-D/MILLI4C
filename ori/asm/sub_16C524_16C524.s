PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
LDR             R0, [R0]
CMP             R0, #0
BEQ             locret_16C65C
VLDR            S0, [R4,#0x108]
VLDR            S1, [R4,#0x118]
ADD             R1, R4, #0x400
ADD             R0, R4, #0x2400
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S2, =16.0
VLDR            S3, =-16.0
VMOVCC.F32      S4, S0
VMOVCS.F32      S4, S1
VMOVGT.F32      S5, S0
VMOVLE.F32      S5, S1
VSTR            S4, [R1,#0x1D0]
VSTR            S5, [R1,#0x1D8]
VSTR            S2, [R1,#0x1D4]
VSTR            S3, [R1,#0x1DC]
VLDR            S3, [R4,#0x10C]
VLDR            S2, [R4,#0x11C]
ADD             R4, R4, #0x2400
ADD             R4, R4, #0x298
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S6, S3
VMOVCS.F32      S6, S2
VMOVGT.F32      S7, S3
VMOVLE.F32      S7, S2
VSTR            S6, [R0,#0x2A0]
VSTR            S7, [R0,#0x29C]
VSTR            S1, [R0,#0x2A8]
VSTR            S1, [R0,#0x2A4]
VSTR            S2, [R0,#0x2B0]
VSTR            S2, [R0,#0x2AC]
VSTR            S0, [R0,#0x2B8]
VSTR            S0, [R0,#0x2B4]
VSTR            S3, [R0,#0x2C0]
VSTR            S3, [R0,#0x2BC]
LDRB            R2, [R4]
CMP             R2, #0
BEQ             loc_16C660
CMP             R2, #1
BEQ             loc_16C6C0
CMP             R2, #2
BEQ             loc_16C720
CMP             R2, #3
BNE             locret_16C65C
VLDR            S5, [R1,#0x1CC]
VSUB.F32        S8, S4, S5
VSUB.F32        S4, S1, S5
VSUB.F32        S5, S0, S5
VMOV.F32        S1, S2
VSTR            S8, [R1,#0x1D0]
VLDR            S0, [R1,#0x1C0]
VADD.F32        S8, S7, S0
VADD.F32        S7, S1, S0
VMOV.F32        S1, S3
VADD.F32        S1, S1, S0
VSTR            S8, [R0,#0x29C]
VLDR            S0, [R1,#0x1BC]
VADD.F32        S6, S6, S0
VADD.F32        S2, S2, S0
VADD.F32        S0, S3, S0
VSTR            S6, [R0,#0x2A0]
VSTR            S4, [R0,#0x2A4]
VSTR            S7, [R0,#0x2AC]
VSTR            S2, [R0,#0x2B0]
VSTR            S5, [R0,#0x2B4]
VSTR            S1, [R0,#0x2BC]
VSTR            S0, [R0,#0x2C0]
POP             {R4,PC}
VLDR            S6, [R1,#0x1BC]
ADD             R2, R0, #0x2A8
VADD.F32        S9, S4, S6
VMOV.F32        S4, S1
VADD.F32        S8, S4, S6
VMOV.F32        S4, S0
VSTR            S9, [R1,#0x1D0]
VADD.F32        S6, S4, S6
VLDR            S4, [R1,#0x1C0]
VADD.F32        S5, S5, S4
VADD.F32        S1, S1, S4
VADD.F32        S4, S0, S4
VSTR            S5, [R1,#0x1D8]
VLDR            S0, [R1,#0x1CC]
VADD.F32        S5, S7, S0
VADD.F32        S2, S2, S0
VADD.F32        S0, S3, S0
VSTR            S5, [R0,#0x29C]
VSTR            S8, [R0,#0x2A4]
VSTR            S6, [R0,#0x2B4]
VSTR            S4, [R0,#0x2B8]
VSTR            S0, [R0,#0x2BC]
VSTM            R2, {S1-S2}
POP             {R4,PC}
VLDR            S4, [R1,#0x1CC]
VADD.F32        S8, S5, S4
VADD.F32        S5, S1, S4
VADD.F32        S4, S0, S4
VMOV.F32        S1, S2
VSTR            S8, [R1,#0x1D8]
VLDR            S0, [R1,#0x1BC]
VSUB.F32        S8, S7, S0
VSUB.F32        S7, S1, S0
VMOV.F32        S1, S3
VSUB.F32        S1, S1, S0
VSTR            S8, [R0,#0x29C]
VLDR            S0, [R1,#0x1C0]
VSUB.F32        S6, S6, S0
VSUB.F32        S2, S2, S0
VSUB.F32        S0, S3, S0
VSTR            S6, [R0,#0x2A0]
VSTR            S5, [R0,#0x2A8]
VSTR            S7, [R0,#0x2AC]
VSTR            S2, [R0,#0x2B0]
VSTR            S4, [R0,#0x2B8]
VSTR            S1, [R0,#0x2BC]
VSTR            S0, [R0,#0x2C0]
POP             {R4,PC}
VLDR            S7, [R1,#0x1C0]
VSUB.F32        S9, S4, S7
VMOV.F32        S4, S1
VSUB.F32        S8, S4, S7
VMOV.F32        S4, S0
VSTR            S9, [R1,#0x1D0]
VSUB.F32        S7, S4, S7
VLDR            S4, [R1,#0x1BC]
VSUB.F32        S5, S5, S4
VSUB.F32        S1, S1, S4
VSUB.F32        S4, S0, S4
VSTR            S5, [R1,#0x1D8]
VLDR            S0, [R1,#0x1CC]
VSUB.F32        S5, S6, S0
VSUB.F32        S2, S2, S0
VSUB.F32        S0, S3, S0
VSTR            S5, [R0,#0x2A0]
VSTR            S8, [R0,#0x2A4]
VSTR            S1, [R0,#0x2A8]
VSTR            S2, [R0,#0x2B0]
VSTR            S7, [R0,#0x2B4]
VSTR            S4, [R0,#0x2B8]
B               loc_16C658
