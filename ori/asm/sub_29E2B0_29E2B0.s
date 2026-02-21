PUSH            {R4-R6,LR}
MOV             R4, R0
VLDR            S2, =3.0
VLDR            S1, =1.5708
VPUSH           {D8-D10}
SUB             SP, SP, #0x88
LDRH            R0, [R0,#0xC8]
ADD             R0, R0, #1
UXTH            R0, R0
VMOV            S0, R0
STRH            R0, [R4,#0xC8]
LDRH            R0, [R4,#0xCA]
VCVT.F32.U32    S3, S0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VDIV.F32        S4, S3, S0
VADD.F32        S0, S4, S2
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464380
LDRH            R0, [R4,#0xCA]
LDRH            R1, [R4,#0xC8]
VLDR            S5, =2.0
VMOV            S2, R0
VMOV            S1, R1
VLDR            S19, =1.0
VLDR            S6, =0.5
VLDR            S17, [R4,#0xD8]
VADD.F32        S0, S0, S19
VCVT.F32.U32    S2, S2
VCVT.F32.U32    S1, S1
VLDR            S4, [R4,#0xDC]
VLDR            S3, [R4,#0xD4]
VMUL.F32        S2, S2, S5
VDIV.F32        S5, S1, S2
VADD.F32        S1, S5, S6
VMUL.F32        S16, S1, S0
VSUB.F32        S0, S19, S16
VMLA.F32        S17, S16, S4
VMUL.F32        S18, S3, S0
VLDR            S0, =0.71111
VMUL.F32        S20, S17, S0
VMOV.F32        S0, S20
BL              sub_464318
VLDR            S1, [R4,#0xCC]
VMLA.F32        S1, S0, S18
VMOV.F32        S0, S20
VSTR            S1, [SP,#0xB0+var_A8]
BL              sub_464380
VLDR            S1, [R4,#0xD0]
ADD             R0, R4, #0xE0
ADD             R1, SP, #0xB0+var_98
VMLA.F32        S1, S0, S18
VSTR            S1, [SP,#0xB0+var_A4]
VLDM            R0, {S0-S1}
VMLA.F32        S0, S16, S1
VSTR            S0, [SP,#0xB0+var_A0]
LDR             R0, [R4,#0xAC]
VLDM            R0, {S0-S7}
VSTM            R1, {S0-S7}
ADD             R1, R0, #0x20 ; ' '
LDR             R0, [R0,#0x2C]
LDM             R1, {R1-R3}
STR             R0, [SP,#0xB0+var_6C]
ADD             R0, SP, #0xB0+var_78
STM             R0, {R1-R3}
ADD             R0, R4, #0x108
VLDR            S1, [R4,#0xF8]
ADD             R2, SP, #0xB0+var_98
ADD             R1, SP, #0xB0+var_38
VSUB.F32        S0, S3, S1
VSTR            S0, [SP,#0xB0+var_8C]
VLDR            S1, [R4,#0xFC]
VSUB.F32        S0, S7, S1
VSTR            S0, [SP,#0xB0+var_7C]
VLDM            R0, {S0-S1}
MOV             R0, R2
VMLA.F32        S0, S16, S1
VSTR            S0, [SP,#0xB0+var_38]
VSTR            S0, [SP,#0xB0+var_34]
VSTR            S19, [SP,#0xB0+var_30]
BL              sub_1420D0
LDRB            R0, [R4,#0xBD]
CMP             R0, #0
BEQ             loc_29E488
CMP             R0, #1
VLDR            S0, =0.0
BEQ             loc_29E420
CMP             R0, #2
BNE             loc_29E488
B               loc_29E468
VLDR            S1, [R4,#0xDC]
VLDR            S2, =0.017453
ADD             R0, SP, #0xB0+var_68
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMUL.F32        S1, S17, S2
VMOVGT.F32      S2, S0
VLDRLE          S2, =3.1416
VADD.F32        S2, S2, S1
VMOV.F32        S1, S0
BL              sub_462C40
ADD             R2, SP, #0xB0+var_98
ADD             R1, SP, #0xB0+var_68
MOV             R0, R2
BL              sub_141F30
NOP
NOP
B               loc_29E488
VMOV.F32        S1, S0
VLDR            S2, [R4,#0x100]
ADD             R0, SP, #0xB0+var_68
BL              sub_462C40
ADD             R2, SP, #0xB0+var_98
ADD             R1, SP, #0xB0+var_68
MOV             R0, R2
BL              sub_141F30
VLDR            S0, [SP,#0xB0+var_8C]
VLDR            S1, [SP,#0xB0+var_A8]
ADD             R1, SP, #0xB0+var_98
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xB0+var_8C]
VLDR            S0, [SP,#0xB0+var_7C]
VLDR            S1, [SP,#0xB0+var_A4]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xB0+var_7C]
VLDR            S0, [SP,#0xB0+var_6C]
VLDR            S1, [SP,#0xB0+var_A0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xB0+var_6C]
LDR             R0, [R4,#0xA4]
BL              sub_593188
LDR             R0, [R4,#0xB8]
CMP             R0, #0
ADDNE           R1, SP, #0xB0+var_98
BLNE            sub_532BB8
MOV             R0, R4
NOP
BL              sub_29DBF0
LDRB            R1, [R4,#0xC2]
VLDR            S0, =255.0
MOV             R0, #0xFF
CMP             R1, #3
BEQ             loc_29E508
CMP             R1, #1
BEQ             loc_29E518
CMP             R1, #2
BEQ             loc_29E5D4
B               loc_29E668
LDRH            R1, [R4,#0xC8]
LDRB            R2, [R4,#0xC3]
CMP             R1, R2
BCS             loc_29E5D4
LDRH            R1, [R4,#0xC8]
LDRB            R2, [R4,#0xC3]
CMP             R1, R2
BCS             loc_29E668
LDRH            R2, [R4,#0xC8]
LDRB            R3, [R4,#0xC3]
MOV             R1, #0xFFFFFFFF
VMOV            S1, R2
VMOV            S2, R3
MOV             R2, R0,LSL#16
REV             R1, R1
AND             R3, R2, #0xFF0000
BIC             R1, R1, #0xFF0000
VCVT.F32.U32    S3, S1
VCVT.F32.U32    S1, S2
MOV             R2, R0,LSL#8
ORR             R1, R1, R3
AND             R2, R2, #0xFF00
BIC             R1, R1, #0xFF00
ORR             R1, R1, R2
BIC             R1, R1, #0xFF
ORR             R1, R1, R0
BIC             R1, R1, #0xFF000000
VMUL.F32        S0, S3, S0
MOV             R2, SP
VDIV.F32        S2, S0, S1
VCVT.U32.F32    S0, S2
VMOV            R0, S0
ORR             R0, R1, R0,LSL#24
STR             R0, [SP,#0xB0+var_B0]
LDR             R0, [R4,#0xA4]
MOV             R1, #0
BL              sub_12C9C4
NOP
NOP
B               loc_29E668
DCFS 3.0
DCFS 1.5708
DCFS 40.744
DCFS 2.0
DCFS 1.0
DCFS 0.5
DCFS 0.71111
DCFS 0.0
DCFS 0.017453
DCFS 3.1416
DCFS 255.0
LDRH            R1, [R4,#0xCA]
LDRH            R2, [R4,#0xC8]
LDRB            R3, [R4,#0xC3]
SUB             R1, R1, R2
CMP             R1, R3
BGE             loc_29E668
MOV             R1, #0xFFFFFFFF
LDRH            R3, [R4,#0xCA]
REV             R1, R1
UXTH            R12, R2
BIC             R5, R1, #0xFF0000
SUB             R1, R3, R12
VMOV            S1, R1
LDRB            R2, [R4,#0xC3]
MOV             R6, R0,LSL#16
AND             R3, R6, #0xFF0000
VMOV            S2, R2
MOV             R2, R0,LSL#8
VCVT.F32.S32    S3, S1
ORR             R1, R5, R3
AND             R2, R2, #0xFF00
BIC             R1, R1, #0xFF00
VCVT.F32.U32    S1, S2
ORR             R1, R1, R2
BIC             R1, R1, #0xFF
ORR             R0, R0, R1
BIC             R0, R0, #0xFF000000
MOV             R2, SP
VMUL.F32        S0, S3, S0
VDIV.F32        S2, S0, S1
VCVT.U32.F32    S0, S2
VMOV            R1, S0
ORR             R0, R0, R1,LSL#24
STR             R0, [SP,#0xB0+var_B0]
LDR             R0, [R4,#0xA4]
MOV             R1, #0
BL              sub_12C9C4
LDRH            R0, [R4,#0xCA]
LDRH            R1, [R4,#0xC8]
CMP             R0, R1
BHI             loc_29E6E8
LDRB            R0, [R4,#0xBE]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_29E694
CMP             R0, #1
BNE             loc_29E6D4
B               loc_29E6C0
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R4
BLX             R2
LDR             R1, =unk_68A5A4
STRB            R5, [R4,#0xBC]
ADD             R2, R4, #0x114
LDRD            R0, R1, [R1,#(dword_68A5B8 - 0x68A5A4)]
STM             R2, {R0,R1}
B               loc_29E6D4
LDRH            R3, [R4,#0xC6]
LDRH            R2, [R4,#0xC4]
ADD             R1, SP, #0xB0+var_A8
MOV             R0, R4
BL              sub_29ED2C
LDR             R0, [R4,#0xB8]
CMP             R0, #0
BEQ             loc_29E6E8
BL              sub_533330
STR             R5, [R4,#0xB8]
ADD             SP, SP, #0x88
VPOP            {D8-D10}
POP             {R4-R6,PC}
