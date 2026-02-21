PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8-D11}
LDRH            R0, [R0,#0xC8]
ADD             R0, R0, #1
STRH            R0, [R4,#0xC8]
MOV             R0, R4
BL              sub_29DBF0
LDRH            R0, [R4,#0xCA]
LDRH            R1, [R4,#0xC8]
CMP             R0, R1
BHI             loc_29EAB8
VLDR            S2, [R4,#0xD0]
VLDR            S5, [R4,#0xDC]
VLDR            S4, [R4,#0xCC]
VLDR            S0, [R4,#0xD8]
VADD.F32        S7, S2, S5
VLDR            S1, [R4,#0xD4]
VADD.F32        S17, S4, S0
VLDR            S3, [R4,#0xE0]
ADD             R0, R4, #0xE4
LDRH            R1, [R4,#0xF4]
VADD.F32        S2, S1, S3
VLDM            R0, {S3-S5}
MOV             R0, R4
VLDR            S8, =0.0
VMOV.F32        S16, S7
VMOV.F32        S6, S3
VMOV.F32        S0, S17
VMOV.F32        S1, S16
BL              sub_29D538
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
VLDR            S21, =2.0
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
VMOV.F32        S0, S21
LDRB            R1, [R0,#0x1C8]
MOV             R3, #1
MOV             R2, R3
MOV             R0, R4
BL              sub_29EC9C
LDR             R1, [R4,#0xA4]
MOV             R0, #1
VLDR            S18, =1.0
VLDR            S1, =3.0
STRH            R0, [R1,#0x16]
LDRH            R0, [R4,#0xCA]
VLDR            S20, =1.5708
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VDIV.F32        S2, S18, S0
VADD.F32        S0, S2, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S20
VMUL.F32        S0, S0, S1
BL              sub_464380
LDRH            R0, [R4,#0xCA]
VMOV.F32        S1, S0
VLDR            S3, =0.5
VMOV            S2, R0
VLDR            S0, [R4,#0xDC]
VLDR            S4, [R4,#0xE0]
VLDR            S19, [R4,#0xD4]
VADD.F32        S1, S1, S18
VLDR            S5, [R4,#0xD8]
VCVT.F32.U32    S2, S2
VMUL.F32        S2, S2, S21
VDIV.F32        S6, S18, S2
VADD.F32        S2, S6, S3
VMUL.F32        S1, S2, S1
VMLA.F32        S0, S1, S4
VMLA.F32        S19, S1, S5
VLDR            S1, =0.71111
VMUL.F32        S22, S0, S1
VMOV.F32        S0, S22
BL              sub_464318
VLDR            S21, [R4,#0xCC]
VMLA.F32        S21, S0, S19
VMOV.F32        S0, S22
BL              sub_464380
VMOV.F32        S1, S0
VLDR            S0, [R4,#0xD0]
VMOV.F32        S7, S16
VMLA.F32        S0, S1, S19
VSUB.F32        S1, S21, S17
VSUB.F32        S0, S0, S7
BL              sub_4645C0
VLDR            S1, =0.024544
VLDR            S2, =0.31831
VLDR            S3, =-0.6
VNMLS.F32       S20, S0, S1
MOV             R3, #2
MOV             R1, #4
MOV             R0, #0
MOV             R2, #6
VMUL.F32        S0, S20, S2
VSTR            S0, [R4,#0x100]
VSTR            S18, [R4,#0x108]
VSTR            S3, [R4,#0x10C]
STRB            R3, [R4,#0xC2]
STRB            R1, [R4,#0xC3]
LDR             R1, =unk_68A5A4
STRB            R0, [R4,#0xBE]
STRH            R0, [R4,#0xC4]
STRH            R0, [R4,#0xC6]
STRB            R2, [R4,#0xBC]
LDRD            R0, R1, [R1,#(off_68A5F8 - 0x68A5A4)]
ADD             R4, R4, #0x114
STM             R4, {R0,R1}
VPOP            {D8-D11}
POP             {R4,PC}
