PUSH            {R4-R11,LR}
MOV             R0, R2
MOV             R4, R3
MOV             R10, R1
VPUSH           {D8-D11}
SUB             SP, SP, #0x144
VMOV.F64        D8, D0
ADD             R1, SP, #0x188+var_90
STM             R1, {R0,R4}
BL              sub_58F1A0
MOV             R11, R0
MOV             R0, R4
BL              sub_58F1A0
LDR             R6, =off_6CE970
STR             R0, [SP,#0x188+var_170]
MOV             R1, #1
LDR             R0, [R6]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_58F5A4
STR             R0, [SP,#0x188+var_164]
LDR             R0, [R6]
BL              sub_52FC34
MOV             R4, #0
ADD             R7, SP, #0x188+var_90
ADD             R8, SP, #0x188+var_D8
ADD             R9, SP, #0x188+var_A8
STR             R0, [SP,#0x188+var_160]
LDR             R1, [R6]
LDR             R0, [R7,R4,LSL#2]
ADD             R5, R1, #0x10C000
ADD             R5, R5, #0x214
BL              sub_58F1A0
MOV             R1, R0
MOV             R3, #0
MOV             R2, R3
MOV             R0, R5
BL              sub_4C638C
LDR             R0, [R6]
MOV             R1, #1
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_58EE44
LDR             R0, [SP,#0x188+var_160]
MOV             R2, #1
ADD             R1, SP, #0x188+var_17C
BL              sub_5EC884
ADD             R3, SP, #0x188+var_17C
LDM             R3, {R0-R2}
VMOV            S0, R1
STMEA           SP, {R0-R2}
MOV             R1, SP
MOV             R0, R1
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x188+var_184]
BL              sub_4800C0
LDR             R0, [R6]
MOV             R2, SP
MOV             R3, #1
ADD             R0, R0, #0x10C000
MOV             R1, R2
ADD             R0, R0, #0x214
BL              sub_5F1314
LDR             R1, [SP,#0x188+var_184]
ADD             R3, SP, #0x188+var_17C
STR             R1, [R8,R4,LSL#2]
LDM             R3, {R0-R2}
VMOV            S0, R0
STMEA           SP, {R0-R2}
MOV             R1, SP
MOV             R0, R1
VADD.F32        S0, S0, S17
VSTR            S0, [SP,#0x188+var_188]
BL              sub_4800C0
LDR             R0, [R6]
MOV             R2, SP
MOV             R3, #1
ADD             R0, R0, #0x10C000
MOV             R1, R2
ADD             R0, R0, #0x214
BL              sub_5F1314
LDR             R0, [SP,#0x188+var_188]
STR             R0, [R9,R4,LSL#2]
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_156B28
LDR             R0, [R6]
MOV             R3, #0
LDR             R1, [SP,#0x188+var_164]
ADD             R0, R0, #0x10C000
MOV             R2, R3
ADD             R0, R0, #0x214
BL              sub_58E7CC
VLDR            S18, =0.0
VLDR            S19, [SP,#0x188+var_D4]
VLDR            S17, [SP,#0x188+var_D8]
VMOV.F32        S16, S18
MOV             R0, #0x400
BL              sub_485B0C
VMOV            S0, R0
VLDR            S22, =0.5
VLDR            S20, =1.0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S22
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_156C80
VCMPE.F32       S19, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S16, S20
BGT             loc_156C80
VSUB.F32        S0, S17, S0
VSUB.F32        S1, S17, S19
VDIV.F32        S16, S0, S1
VMOV.F32        S19, S18
VLDR            S21, [SP,#0x188+var_A4]
VLDR            S17, [SP,#0x188+var_A8]
MOV             R0, #0x400
BL              sub_11C418
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S22
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_156CC8
VCMPE.F32       S21, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S19, S20
BGT             loc_156CC8
VSUB.F32        S0, S17, S0
VSUB.F32        S1, S17, S21
VDIV.F32        S16, S0, S1
LDR             R6, [SP,#0x188+var_170]
MOV             R5, R10
MOV             R4, R11
VCMPE.F32       S16, S19
VMRS            APSR_nzcv, FPSCR
VMOVLT.F32      S16, S19
VCMP.F32        S16, S18
VMRS            APSR_nzcv, FPSCR
BNE             loc_156D08
LDM             R4, {R0-R3,R6-R8,R12}
STM             R5, {R0-R3,R6-R8,R12}
LDRD            R0, R1, [R4,#0x20]
LDR             R2, [R11,#0x28]
STRD            R0, R1, [R5,#0x20]
STR             R2, [R10,#0x28]
B               loc_156F30
VMOV            R0, S16
CMP             R0, #0x3F800000
BEQ             loc_156F50
LDM             R4, {R0-R3,R7-R9,R12}
STM             R5, {R0-R3,R7-R9,R12}
ADD             R0, R4, #0x20 ; ' '
ADD             R3, R5, #0x20 ; ' '
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
MOV             R1, R11
VLDR            S1, [R6,#0x1C]
VLDR            S0, [R4,#0x1C]
ADD             R0, SP, #0x188+var_10C
VSUB.F32        S2, S1, S0
VMOV.F32        S1, S16
VMLA.F32        S0, S2, S1
VSTR            S0, [R5,#0x1C]
VLDR            S1, [R6,#0x20]
VLDR            S0, [R4,#0x20]
VSUB.F32        S2, S1, S0
VMOV.F32        S1, S16
VMLA.F32        S0, S2, S1
VSTR            S0, [R5,#0x20]
VLDR            S1, [R6,#0x24]
VLDR            S0, [R4,#0x24]
VSUB.F32        S2, S1, S0
VMOV.F32        S1, S16
VMLA.F32        S0, S2, S1
VSTR            S0, [R5,#0x24]
VLDR            S1, [R6,#0x28]
VLDR            S0, [R4,#0x28]
VSUB.F32        S2, S1, S0
VMOV.F32        S1, S16
VMLA.F32        S0, S2, S1
VSTR            S0, [R5,#0x28]
BL              sub_4800C0
MOV             R1, R6
ADD             R0, SP, #0x188+var_100
BL              sub_4800C0
ADD             R1, SP, #0x188+var_10C
VLDR            S0, [SP,#0x188+var_100]
VMOV.F32        S1, S16
VLDM            R1, {S5-S7}
ADD             R1, SP, #0x188+var_FC
MOV             R0, R5
VLDM            R1, {S2-S3}
VSUB.F32        S0, S0, S5
ADD             R1, SP, #0x188+var_88
VSUB.F32        S2, S2, S6
VSUB.F32        S3, S3, S7
VMUL.F32        S4, S0, S1
VMUL.F32        S2, S2, S1
VMUL.F32        S0, S3, S1
VADD.F32        S3, S5, S4
VADD.F32        S1, S6, S2
VADD.F32        S0, S7, S0
VSTR            S3, [SP,#0x188+var_88]
VSTR            S1, [SP,#0x188+var_84]
VSTR            S0, [SP,#0x188+var_80]
BL              sub_480160
MOV             R0, SP
NOP
BL              sub_2144C0
ADD             R1, R4, #0xC
MOV             R0, SP
VLDM            R1, {S0-S1}
MOV             R1, R4
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S1, S1
VLDR            S1, [R4,#0x14]
VSTR            S18, [SP,#0x188+var_A0]
VSTR            S18, [SP,#0x188+var_9C]
VMLA.F32        S0, S1, S1
VSQRT.F32       S1, S0
VNEG.F32        S0, S1
VSTR            S0, [SP,#0x188+var_98]
BL              sub_214100
ADD             R2, SP, #0x188+var_A0
ADD             R1, SP, #0x188+var_F4
MOV             R0, SP
BL              sub_5C8C34
VLDR            S0, [SP,#0x188+var_F4]
VLDR            S1, [SP,#0x188+var_10C]
MOV             R1, R6
MOV             R0, SP
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x188+var_F4]
VLDR            S0, [SP,#0x188+var_F0]
VLDR            S1, [SP,#0x188+var_108]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x188+var_F0]
VLDR            S0, [SP,#0x188+var_EC]
VLDR            S1, [SP,#0x188+var_104]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x188+var_EC]
BL              sub_214100
ADD             R2, SP, #0x188+var_A0
ADD             R1, SP, #0x188+var_E8
MOV             R0, SP
BL              sub_5C8C34
VLDR            S0, [SP,#0x188+var_E8]
VLDR            S1, [SP,#0x188+var_100]
ADD             R2, SP, #0x188+var_BC
MOV             R1, R5
VADD.F32        S0, S0, S1
ADD             R0, SP, #0x188+var_78
VSTR            S0, [SP,#0x188+var_E8]
VLDR            S1, [SP,#0x188+var_E4]
VLDR            S2, [SP,#0x188+var_FC]
VADD.F32        S4, S1, S2
VSTR            S4, [SP,#0x188+var_E4]
VLDR            S1, [SP,#0x188+var_E0]
VLDR            S2, [SP,#0x188+var_F8]
VADD.F32        S6, S1, S2
VMOV.F32        S1, S16
VSTR            S6, [SP,#0x188+var_E0]
VLDR            S2, [SP,#0x188+var_F4]
VLDR            S3, [SP,#0x188+var_F0]
VSUB.F32        S5, S0, S2
VLDR            S0, [SP,#0x188+var_EC]
VSUB.F32        S4, S4, S3
VSUB.F32        S6, S6, S0
VMUL.F32        S5, S5, S1
VMUL.F32        S4, S4, S1
VMUL.F32        S1, S6, S1
VADD.F32        S2, S2, S5
VADD.F32        S3, S3, S4
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x188+var_B4]
VSTM            R2, {S2-S3}
BL              sub_58F15C
ADD             R1, SP, #0x188+var_78
MOV             R0, R1
BL              sub_47EC14
ADD             R2, SP, #0x188+var_BC
ADD             R1, SP, #0x188+var_78
ADD             R0, R5, #0xC
BL              sub_1169FC
ADD             SP, SP, #0x144
VMOV.F32        S0, S16
VPOP            {D8-D11}
POP             {R4-R11,PC}
DCD off_6CE970
DCFS 0.0
DCFS 0.5
DCFS 1.0
LDM             R6, {R0-R4,R7,R8,R12}
ADD             R6, R6, #0x20 ; ' '
STM             R5, {R0-R4,R7,R8,R12}
LDM             R6, {R0-R2}
STRD            R0, R1, [R5,#0x20]
STR             R2, [R10,#0x28]
B               loc_156F30
