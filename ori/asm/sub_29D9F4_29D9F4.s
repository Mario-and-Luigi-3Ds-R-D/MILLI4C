PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
VLDR            S2, =3.0
VLDR            S3, =1.5708
MOV             R6, R2
VPUSH           {D8-D10}
MOV             R7, R3
LDRH            R0, [R0,#0xC8]
LDRH            R1, [R4,#0xCA]
ADD             R0, R0, #1
VMOV            S1, R1
UXTH            R0, R0
VMOV            S0, R0
STRH            R0, [R4,#0xC8]
VCVT.F32.U32    S1, S1
VCVT.F32.U32    S0, S0
VDIV.F32        S4, S0, S1
VLDR            S1, =40.744
VADD.F32        S0, S4, S2
VMUL.F32        S0, S0, S3
VMUL.F32        S0, S0, S1
BL              sub_464380
LDRH            R0, [R4,#0xCA]
LDRH            R1, [R4,#0xC8]
VLDR            S20, =2.0
VMOV            S3, R0
VMOV            S2, R1
VMOV.F32        S1, S0
VLDR            S7, =1.0
VLDR            S6, =0.5
VLDR            S0, [R4,#0xDC]
VCVT.F32.U32    S3, S3
VCVT.F32.U32    S2, S2
VADD.F32        S1, S1, S7
VLDR            S4, [R4,#0xE0]
VLDR            S17, [R4,#0xD4]
VLDR            S5, [R4,#0xD8]
VMUL.F32        S3, S3, S20
VDIV.F32        S7, S2, S3
VADD.F32        S2, S7, S6
VMUL.F32        S16, S2, S1
VLDR            S1, =0.71111
VMLA.F32        S0, S16, S4
VMLA.F32        S17, S16, S5
VMUL.F32        S19, S0, S1
VMOV.F32        S0, S19
BL              sub_464318
VLDR            S18, [R4,#0xCC]
VMLA.F32        S18, S0, S17
VMOV.F32        S0, S19
BL              sub_464380
VMOV.F32        S1, S0
VLDR            S0, [R4,#0xD0]
ADD             R0, R4, #0xEC
VLDR            S2, [R4,#0xE4]
VLDR            S6, [R4,#0xE8]
VLDR            S5, =8.0
VMLA.F32        S0, S1, S17
VLDM            R0, {S3-S4}
VMLA.F32        S2, S16, S6
ADD             R0, R4, #0xCC
VLDR            S19, =0.0
VSUB.F32        S1, S18, S3
VSTM            R0, {S3-S4}
VSTR            S19, [R4,#0xE0]
VSUB.F32        S0, S0, S4
VSTR            S2, [R4,#0xD4]
VMUL.F32        S3, S1, S5
VMUL.F32        S2, S0, S5
VSTR            S3, [R4,#0xD8]
VSTR            S2, [R4,#0xDC]
BL              sub_4645C0
VMOV.F32        S1, S0
VLDR            S2, =1.4062
VLDR            S0, =90.0
VNMLS.F32       S0, S1, S2
VSTR            S0, [R4,#0xF0]
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BCS             loc_29DB44
VLDR            S1, =360.0
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0xF0]
LDR             R1, [R5]
MOV             R0, #0
STR             R1, [R4,#0xE4]
LDR             R1, [R5,#4]
STR             R1, [R4,#0xE8]
LDR             R1, [R5,#8]
STR             R1, [R4,#0xEC]
STRH            R0, [R4,#0xC8]
LDR             R0, =off_6D1648
STRH            R6, [R4,#0xCA]
STRH            R7, [R4,#0xF4]
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
VMOV.F32        S0, S20
LDRB            R1, [R0,#0x1C8]
MOV             R3, #1
MOV             R2, #0
MOV             R0, R4
BL              sub_29EC9C
LDR             R1, =unk_68A5A4
MOV             R0, #6
STRB            R0, [R4,#0xBC]
ADD             R4, R4, #0x114
LDRD            R0, R1, [R1,#(off_68A5E0 - 0x68A5A4)]
STM             R4, {R0,R1}
VPOP            {D8-D10}
POP             {R4-R8,PC}
