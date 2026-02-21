VLDR            S2, [R1]
VLDR            S4, [R1,#4]
VLDR            S3, [R1,#8]
VMUL.F32        S1, S2, S2
ADD             R0, R2, #0x10
VMLA.F32        S1, S4, S4
VMLA.F32        S1, S3, S3
VSQRT.F32       S3, S1
VDIV.F32        S1, S3, S0
VMOV            R3, S1
CMP             R3, #0x3F800000
BLE             loc_22F1B8
VDIV.F32        S0, S2, S1
VSTR            S0, [R0]
VLDR            S0, [R1,#4]
VDIV.F32        S2, S0, S1
VSTR            S2, [R0,#4]
VLDR            S0, [R1,#8]
VDIV.F32        S2, S0, S1
VSTR            S2, [R0,#8]
B               loc_22F1C8
VMOV.F32        S0, S2
VMOV.F32        S1, S4
VLDR            S2, [R1,#8]
VSTM            R0, {S0-S2}
VLDR            S1, [R2,#0x10]
VLDR            S0, =0.0
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
LDREQ           R0, [R1]
STREQ           R0, [R2,#0x10]
VLDR            S1, [R2,#0x14]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
LDREQ           R0, [R1,#4]
STREQ           R0, [R2,#0x14]
VLDR            S1, [R2,#0x18]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
LDREQ           R0, [R1,#8]
STREQ           R0, [R2,#0x18]
BX              LR
