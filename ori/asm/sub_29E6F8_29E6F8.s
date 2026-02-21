PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8-D10}
SUB             SP, SP, #0x60
LDRH            R0, [R0,#0xC8]
VLDR            S1, =1.5708
ADD             R0, R0, #1
UXTH            R0, R0
VMOV            S0, R0
STRH            R0, [R4,#0xC8]
LDRH            R0, [R4,#0xCA]
VCVT.F32.U32    S0, S0
VMUL.F32        S1, S0, S1
VMOV            S0, R0
VCVT.F32.U32    S2, S0
VDIV.F32        S0, S1, S2
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464380
LDR             R0, [R4,#0xAC]
ADD             R1, R4, #0xCC
VMOV.F32        S19, S0
VLDM            R1, {S16-S18}
ADD             R1, R0, #4
VLDR            S0, [R0]
VLDR            S3, [R4,#0xD8]
VLDR            S2, [R4,#0xDC]
VLDR            S1, [R4,#0xE0]
VLDR            S21, =1.0
VLDM            R1, {S4-S10}
ADD             R1, SP, #0x80+var_7C
VSTR            S0, [SP,#0x80+var_80]
VMOV.F32        S0, S19
VSTM            R1, {S4-S10}
ADD             R1, R0, #0x20 ; ' '
LDR             R0, [R0,#0x2C]
LDM             R1, {R1-R3}
VMLA.F32        S18, S1, S0
STR             R0, [SP,#0x80+var_54]
ADD             R0, SP, #0x80+var_60
VMLA.F32        S16, S3, S0
STM             R0, {R1-R3}
VMLA.F32        S17, S2, S0
VLDR            S1, [R4,#0xF8]
VSUB.F32        S0, S6, S1
VSTR            S0, [SP,#0x80+var_74]
VLDR            S1, [R4,#0xFC]
VSUB.F32        S0, S10, S1
VSTR            S0, [SP,#0x80+var_64]
LDRB            R0, [R4,#0xBD]
CMP             R0, #0
BEQ             loc_29E818
CMP             R0, #1
BNE             loc_29E818
VLDR            S0, [R4,#0xF0]
VLDR            S1, =0.0055556
VLDR            S20, =0.0
VMUL.F32        S1, S0, S1
VMOV.F32        S0, S20
BL              sub_5982EC
VSUB.F32        S2, S21, S19
VLDR            S1, =3.1416
ADD             R0, SP, #0x80+var_50
VMUL.F32        S0, S0, S2
VMUL.F32        S2, S0, S1
VMOV.F32        S1, S20
VMOV.F32        S0, S20
BL              sub_462C40
MOV             R2, SP
ADD             R1, SP, #0x80+var_50
MOV             R0, R2
BL              sub_141F30
VLDR            S0, [SP,#0x80+var_74]
MOV             R1, SP
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x80+var_74]
VLDR            S0, [SP,#0x80+var_64]
VADD.F32        S0, S0, S17
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
NOP
BL              sub_29DBF0
LDRH            R0, [R4,#0xCA]
LDRH            R1, [R4,#0xC8]
CMP             R0, R1
BHI             loc_29E8CC
MOV             R0, #0
STRH            R0, [R4,#0xC8]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R1, #0x5A ; 'Z'
VLDR            S1, =0.5
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0x5A ; 'Z'
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R1, =unk_68A5A4
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VADDNE.F32      S0, S0, S21
VCVT.U32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R4,#0xCA]
LDRD            R0, R1, [R1,#(off_68A5F0 - 0x68A5A4)]
ADD             R4, R4, #0x114
STM             R4, {R0,R1}
ADD             SP, SP, #0x60 ; '`'
VPOP            {D8-D10}
POP             {R4,PC}
