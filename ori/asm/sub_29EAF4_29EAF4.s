PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8-D10}
SUB             SP, SP, #0x60
LDR             R0, [R0,#0xA4]
VLDR            S3, =0.0039062
VLDR            S16, =0.0
VLDR            S1, [R4,#0x100]
VLDR            S2, [R0,#0x10]
LDRSH           R1, [R0,#0x18]
VCVT.F32.S32    S2, S2
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VMUL.F32        S2, S2, S3
VDIV.F32        S17, S2, S0
VMOV.F32        S0, S16
BL              sub_5982EC
VMOV.F32        S1, S0
VLDR            S0, [R4,#0xDC]
VLDR            S20, [R4,#0xD4]
VMUL.F32        S21, S1, S17
VLDR            S1, =0.71111
VMUL.F32        S18, S0, S1
VMOV.F32        S0, S18
BL              sub_464318
VLDR            S17, [R4,#0xCC]
VMLA.F32        S17, S0, S20
VMOV.F32        S0, S18
BL              sub_464380
LDR             R0, [R4,#0xAC]
VLDR            S19, [R4,#0xD0]
VLDR            S18, [R4,#0xE4]
ADD             R1, R0, #0x20 ; ' '
VLDM            R0, {S1-S8}
VMLA.F32        S19, S0, S20
VLDR            S0, =3.1416
VSTMEA          SP, {S1-S8}
LDR             R0, [R0,#0x2C]
LDM             R1, {R1-R3}
STR             R0, [SP,#0x80+var_54]
ADD             R0, SP, #0x80+var_60
STM             R0, {R1-R3}
ADD             R0, SP, #0x80+var_50
VLDR            S2, [R4,#0xF8]
VSUB.F32        S1, S4, S2
VSTR            S1, [SP,#0x80+var_74]
VLDR            S2, [R4,#0xFC]
VSUB.F32        S1, S8, S2
VMUL.F32        S2, S21, S0
VMOV.F32        S0, S16
VSTR            S1, [SP,#0x80+var_64]
VMOV.F32        S1, S16
BL              sub_462C40
MOV             R2, SP
ADD             R1, SP, #0x80+var_50
MOV             R0, R2
BL              sub_141F30
VLDR            S0, [SP,#0x80+var_74]
MOV             R1, SP
VADD.F32        S0, S0, S17
VSTR            S0, [SP,#0x80+var_74]
VLDR            S0, [SP,#0x80+var_64]
VADD.F32        S0, S0, S19
VSTR            S0, [SP,#0x80+var_64]
VLDR            S0, [SP,#0x80+var_54]
VADD.F32        S0, S0, S18
VSTR            S0, [SP,#0x80+var_54]
LDR             R0, [R4,#0xA4]
BL              sub_593188
LDR             R0, [R4,#0xB8]
CMP             R0, #0
MOVNE           R1, SP
BLNE            sub_532BB8
MOV             R0, R4
BL              sub_29DBF0
LDR             R0, [R4,#0xA4]
LDRH            R0, [R0,#0x1A]
TST             R0, #1
BNE             loc_29EC74
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
VLDR            S0, =2.0
LDRB            R1, [R0,#0x1C8]
MOV             R3, #1
MOV             R2, #2
MOV             R0, R4
BL              sub_29EC9C
LDR             R1, =unk_68A5A4
MOV             R0, #2
STRB            R0, [R4,#0xBC]
ADD             R4, R4, #0x114
LDRD            R0, R1, [R1,#(off_68A5C8 - 0x68A5A4)]
STM             R4, {R0,R1}
ADD             SP, SP, #0x60 ; '`'
VPOP            {D8-D10}
POP             {R4,PC}
