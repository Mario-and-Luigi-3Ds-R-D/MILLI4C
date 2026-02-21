ADD             R2, R1, #0x108
PUSH            {R4,R5}
SUB             SP, SP, #0x40
VLDM            R2, {S2-S3}
ADD             R2, R1, #0x400
VLDR            S0, =-36.0
VLDR            S4, [R2,#0x234]
VLDR            S5, [R2,#0x224]
VLDR            S1, =36.0
VADD.F32        S3, S3, S4
VADD.F32        S2, S2, S5
VLDR            S6, =0.0
MOV             R12, #0
VSTMEA          SP, {S2-S3}
VLDR            S3, [R1,#0x108]
VLDR            S5, [R2,#0x228]
VLDR            S2, [R1,#0x10C]
VLDR            S4, [R2,#0x234]
VADD.F32        S3, S3, S5
VADD.F32        S2, S2, S4
VSTR            S3, [SP,#0x48+var_40]
VSTR            S2, [SP,#0x48+var_3C]
VLDR            S2, [R1,#0x108]
VLDR            S3, [R2,#0x228]
LDR             R3, [R1,#0x10C]
VADD.F32        S2, S2, S3
VSTR            S2, [SP,#0x48+var_38]
STR             R3, [SP,#0x48+var_34]
VLDR            S3, [R2,#0x224]
VLDR            S2, [R1,#0x108]
LDR             R1, [R1,#0x10C]
ADD             R2, R0, #0x800
VADD.F32        S2, S2, S3
ADD             R3, SP, #0x48+var_28
ADD             R2, R2, #0x2A8
VSTR            S2, [SP,#0x48+var_30]
STR             R1, [SP,#0x48+var_2C]
LDR             R1, [R0,#4]
ADD             R1, R1, #0x19C00
LDR             R1, [R1,#0x20]
VSTR            S0, [SP,#0x48+var_28]
STR             R1, [SP,#0x48+var_24]
LDR             R1, [R0,#4]
ADD             R1, R1, #0x19C00
LDR             R1, [R1,#0x20]
VSTR            S1, [SP,#0x48+var_20]
STR             R1, [SP,#0x48+var_1C]
VSTR            S1, [SP,#0x48+var_18]
VSTR            S6, [SP,#0x48+var_14]
VSTR            S0, [SP,#0x48+var_10]
VSTR            S6, [SP,#0x48+var_C]
ADD             R1, R3, R12,LSL#3
VLDM            R2, {S3-S5}
ADD             R4, R2, #0xC
VLDR            S1, [R1]
VLDR            S0, [R1,#4]
ADD             R12, R12, #1
VMOV.F32        S2, S1
AND             R12, R12, #0xFF
CMP             R12, #4
VMUL.F32        S3, S3, S2
VMOV.F32        S2, S0
VMLA.F32        S3, S4, S2
VADD.F32        S2, S3, S5
VSTR            S2, [R1]
VLDM            R4, {S2-S4}
VMUL.F32        S1, S2, S1
VMLA.F32        S1, S3, S0
VADD.F32        S0, S1, S4
VSTR            S0, [R1,#4]
LDR             R4, [R0,#4]
VLDR            S1, [R1]
VLDR            S2, [R4,#0x108]
VADD.F32        S1, S1, S2
VSTR            S1, [R1]
LDR             R4, [R0,#4]
VLDR            S1, [R4,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#4]
BCC             loc_23D2F4
MOV             R2, #0
MOV             R12, SP
ADD             R1, R12, R2,LSL#3
MOV             R4, #0
VLDM            R1, {S4-S5}
ADD             R1, R4, #1
AND             R5, R1, #0xFF
CMP             R5, #4
MOVEQ           R5, #0
ADD             R4, R3, R4,LSL#3
ADD             R5, R3, R5,LSL#3
VLDM            R4, {S1-S2}
VLDR            S0, [R5]
VLDR            S3, [R5,#4]
VSUB.F32        S0, S0, S1
VSUB.F32        S3, S3, S2
VSUB.F32        S1, S4, S1
VSUB.F32        S2, S5, S2
VMUL.F32        S1, S1, S3
VMLS.F32        S1, S0, S2
VCMPE.F32       S1, S6
VMRS            APSR_nzcv, FPSCR
BLT             loc_23D3D4
AND             R4, R1, #0xFF
CMP             R4, #4
BCC             loc_23D37C
B               loc_23D44C
ADD             R1, R2, #1
AND             R2, R1, #0xFF
CMP             R2, #4
BCC             loc_23D370
LDR             R0, [R0,#4]
VLDR            S3, =12.0
VLDR            S5, =49.0
ADD             R0, R0, #0x23000
ADD             R0, R0, #0x4E0
VLDR            S4, [SP,#0x48+var_40]
VLDR            S2, [R0,#0x28]
VLDR            S0, [R0,#0x2C]
VSUB.F32        S1, S2, S3
VADD.F32        S2, S2, S3
VADD.F32        S3, S0, S5
VCMPE.F32       S4, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_23D45C
VLDR            S1, [SP,#0x48+var_48]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_23D45C
VLDR            S1, [SP,#0x48+var_44]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_23D45C
VLDR            S0, [SP,#0x48+var_34]
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
BHI             loc_23D45C
ADD             SP, SP, #0x40 ; '@'
MOV             R0, #1
POP             {R4,R5}
BX              LR
ADD             SP, SP, #0x40 ; '@'
MOV             R0, #0
POP             {R4,R5}
BX              LR
