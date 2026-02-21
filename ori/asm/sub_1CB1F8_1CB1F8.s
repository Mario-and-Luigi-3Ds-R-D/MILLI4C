SUB             R12, R0, #1
CMP             R12, #0
MOV             R0, #0
PUSH            {R4,R5}
BLE             loc_1CB240
ADD             R4, R0, R12
ADD             R4, R4, R4,LSR#31
MOV             R4, R4,ASR#1
ADD             R5, R2, R4,LSL#2
VLDR            S1, [R5]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
ADDCC           R0, R4, #1
MOVCS           R12, R4
CMP             R0, R12
BLT             loc_1CB20C
CMP             R0, #0
SUBGT           R0, R0, #1
ADD             R2, R2, R0,LSL#2
ADD             R3, R3, R0,LSL#2
ADD             R0, R1, R0,LSL#2
VLDR            S6, [R2]
VLDR            S7, [R2,#4]
VLDR            S4, [R0,#4]
VLDR            S5, [R0]
VSUB.F32        S2, S0, S6
VSUB.F32        S0, S7, S6
VSUB.F32        S6, S4, S5
VLDR            S3, [R3,#4]
VLDR            S1, [R3]
VLDR            S7, =3.0
POP             {R4,R5}
VSUB.F32        S8, S3, S1
VDIV.F32        S4, S6, S0
VMUL.F32        S9, S8, S2
VLDR            S8, =2.0
VMLA.F32        S3, S1, S8
VDIV.F32        S6, S9, S0
VMLS.F32        S4, S3, S0
VMLA.F32        S6, S1, S7
VMUL.F32        S0, S6, S2
VADD.F32        S0, S0, S4
VMLA.F32        S5, S0, S2
VMOV.F32        S0, S5
BX              LR
