LDRB            R3, [R0,#0xC]
VLDR            S0, =0.0
VLDR            S1, =1.0
CMP             R3, #0
BEQ             loc_15AA24
MOV             R3, #0
STRB            R3, [R0,#0xC]
VSTM            R1, {S0-S1}
B               loc_15AA84
VLDR            S2, [R2]
VLDR            S3, [R0]
VSUB.F32        S2, S2, S3
VSTR            S2, [R1]
VLDR            S2, [R2,#4]
VLDR            S3, [R0,#4]
VSUB.F32        S2, S2, S3
VSTR            S2, [R1,#4]
VLDR            S2, [R2,#8]
VLDR            S3, [R0,#8]
VSUB.F32        S2, S2, S3
VSTR            S2, [R1,#8]
VLDR            S5, [R1]
VMOV.F32        S4, S2
VLDR            S3, [R1,#4]
VMUL.F32        S2, S5, S5
VMLA.F32        S2, S3, S3
VMLA.F32        S2, S4, S4
VCMP.F32        S2, S0
VMRS            APSR_nzcv, FPSCR
BNE             loc_15AA8C
VMOV.F32        S2, S0
VSTR            S2, [R1]
VSTR            S1, [R1,#4]
VSTR            S0, [R1,#8]
B               loc_15AAA8
VSQRT.F32       S6, S2
VDIV.F32        S0, S1, S6
VMUL.F32        S1, S5, S0
VMUL.F32        S2, S3, S0
VMUL.F32        S0, S4, S0
VSTR            S0, [R1,#8]
VSTM            R1, {S1-S2}
LDM             R2, {R1,R3}
LDR             R2, [R2,#8]
STR             R2, [R0,#8]
STM             R0, {R1,R3}
BX              LR
