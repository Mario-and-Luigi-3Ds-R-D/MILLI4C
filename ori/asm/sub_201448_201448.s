PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
ADD             R0, R0, #8
VLDR            S0, =1.0
BL              sub_5A176C
LDRH            R0, [R4,#0x70]
VMOV.F32        S17, S0
TST             R0, #1
VLDREQ          S16, =0.5
VLDRNE          S16, =1.5
ADD             R0, R4, #8
BL              sub_5F1964
CMP             R0, #0
VSTREQ          S16, [R4,#0x3C]
BEQ             loc_2014F4
LDRH            R0, [R4,#0x70]
VLDR            S0, =0.6
VLDR            S1, =2.0
TST             R0, #2
LDRSH           R0, [R4,#0x6A]
BEQ             loc_2014FC
VMOV            S2, R0
VLDR            S4, [R4,#0x40]
VLDR            S3, =0.0
VCVT.F32.S32    S2, S2
VMUL.F32        S0, S2, S0
VDIV.F32        S2, S1, S0
VSUB.F32        S2, S4, S2
VSTR            S2, [R4,#0x40]
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
VADDGT.F32      S0, S2, S1
BLE             loc_2014D4
VSTR            S0, [R4,#0x40]
VLDR            S0, [R4,#0x40]
VLDR            S1, =3.1416
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464380
VMLA.F32        S16, S0, S17
VSTR            S16, [R4,#0x3C]
VPOP            {D8}
POP             {R4,PC}
VMOV            S2, R0
VLDR            S3, [R4,#0x40]
VCVT.F32.S32    S2, S2
VMUL.F32        S0, S2, S0
VDIV.F32        S2, S1, S0
VADD.F32        S2, S2, S3
VMOV            R0, S2
VSTR            S2, [R4,#0x40]
CMP             R0, #0x40000000
VSUBGE.F32      S0, S2, S1
BLT             loc_2014D4
B               loc_2014D0
