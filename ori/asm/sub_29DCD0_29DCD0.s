PUSH            {R4-R6,LR}
MOV             R4, R0
VLDR            S1, =1.5
VLDR            S2, =3.1416
VPUSH           {D8-D13}
SUB             SP, SP, #0xB0
LDRH            R0, [R0,#0xC8]
VLDR            S25, =40.744
ADD             R0, R0, #1
UXTH            R0, R0
VMOV            S0, R0
STRH            R0, [R4,#0xC8]
LDRH            R0, [R4,#0xCA]
VCVT.F32.U32    S3, S0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VDIV.F32        S4, S3, S0
VADD.F32        S0, S4, S1
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S25
BL              sub_464380
LDR             R0, [R4,#0xAC]
ADD             R1, SP, #0xF0+var_D8
VLDR            S23, =1.0
VLDR            S1, =0.5
VLDM            R0, {S2-S9}
VADD.F32        S0, S0, S23
VSTM            R1, {S2-S9}
ADD             R1, R0, #0x24 ; '$'
LDR             R3, [R0,#0x20]
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
VMUL.F32        S21, S0, S1
STR             R0, [SP,#0xF0+var_AC]
ADD             R0, SP, #0xF0+var_B4
STR             R3, [SP,#0xF0+var_B8]
STM             R0, {R1,R2}
VLDR            S1, [R4,#0xF8]
VSUB.F32        S0, S5, S1
VSTR            S0, [SP,#0xF0+var_CC]
VLDR            S1, [R4,#0xFC]
VSUB.F32        S0, S9, S1
VSTR            S0, [SP,#0xF0+var_BC]
VLDR            S0, [R4,#0x110]
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
BLT             loc_29DDD0
VLDR            S0, [R4,#0x108]
ADD             R2, SP, #0xF0+var_D8
VSTR            S0, [SP,#0xF0+var_F0]
VSTR            S0, [SP,#0xF0+var_EC]
VSTR            S23, [SP,#0xF0+var_E8]
MOV             R1, SP
MOV             R0, R2
BL              sub_1420D0
VLDR            S0, [R4,#0xCC]
VLDR            S1, [R4,#0xD8]
VMLA.F32        S0, S1, S21
VSTR            S0, [SP,#0xF0+var_6C]
LDR             R0, [R4,#0xD0]
STR             R0, [SP,#0xF0+var_68]
LDR             R0, [R4,#0xD4]
STR             R0, [SP,#0xF0+var_64]
B               loc_29E064
LDRB            R0, [R4,#0xBC]
VLDR            S16, =0.0
CMP             R0, #3
BNE             loc_29DF08
VLDR            S18, [R4,#0xCC]
VLDR            S0, [R4,#0xD8]
ADD             R0, R4, #0xD0
VLDR            S5, [R4,#0xDC]
VMLA.F32        S18, S0, S21
VLDM            R0, {S0-S1}
VLDR            S6, [R4,#0xCC]
VLDR            S7, [R4,#0xD8]
VLDR            S3, [R4,#0xE0]
VADD.F32        S17, S0, S5
VADD.F32        S20, S6, S7
VADD.F32        S2, S1, S3
VMOV.F32        S19, S17
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_29DE38
VMOV.F32        S3, S18
VMOV.F32        S4, S20
VSUB.F32        S3, S3, S4
VABS.F32        S3, S3
VSUB.F32        S17, S17, S3
B               loc_29DE54
NOP
BLE             loc_29DE54
VMOV.F32        S3, S18
VMOV.F32        S4, S20
VSUB.F32        S3, S3, S4
VABS.F32        S3, S3
VADD.F32        S17, S3, S17
VMOV.F32        S3, S1
ADD             R0, R4, #0xE4
VSUB.F32        S2, S2, S3
VSUB.F32        S0, S0, S17
VSTM            R0, {S1-S2}
VMOV.F32        S1, S18
VMOV.F32        S2, S18
VSUB.F32        S1, S1, S2
VMOV.F32        S2, S16
VMUL.F32        S3, S1, S1
VMLA.F32        S3, S0, S0
VMLA.F32        S3, S2, S2
VMOV.F32        S2, S20
VSQRT.F32       S22, S3
VMOV.F32        S3, S18
VSUB.F32        S4, S2, S3
VSUB.F32        S3, S19, S17
VMOV.F32        S2, S16
VMUL.F32        S4, S4, S4
VMLA.F32        S4, S3, S3
VMLA.F32        S4, S2, S2
VSQRT.F32       S24, S4
BL              sub_4645C0
VMOV.F32        S2, S0
VLDR            S26, =1.4062
VSUB.F32        S0, S19, S17
VSUB.F32        S1, S20, S18
VMUL.F32        S19, S2, S26
BL              sub_4645C0
VMUL.F32        S1, S0, S26
VLDR            S0, =0.0055556
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S19, S0
BL              sub_5982EC
VLDR            S1, =180.0
VSUB.F32        S2, S24, S22
VSTR            S18, [R4,#0xCC]
VMUL.F32        S0, S0, S1
VSTR            S17, [R4,#0xD0]
VSTR            S22, [R4,#0xD4]
VSTR            S19, [R4,#0xDC]
MOV             R0, #4
VSTR            S2, [R4,#0xD8]
STRB            R0, [R4,#0xBC]
VSTR            S0, [R4,#0xE0]
VLDR            S1, [R4,#0x110]
VLDR            S0, [R4,#0x108]
VLDR            S2, [R4,#0x10C]
VSUB.F32        S3, S23, S1
VSUB.F32        S1, S21, S1
ADD             R2, SP, #0xF0+var_D8
ADD             R1, SP, #0xF0+var_4C
MOV             R0, R2
VDIV.F32        S17, S1, S3
VMLA.F32        S0, S17, S2
VSTR            S0, [SP,#0xF0+var_4C]
VSTR            S0, [SP,#0xF0+var_48]
VSTR            S23, [SP,#0xF0+var_44]
BL              sub_1420D0
VLDR            S20, =1.5708
VMUL.F32        S0, S17, S20
VMUL.F32        S0, S0, S25
BL              sub_464380
VMUL.F32        S1, S0, S17
VLDR            S19, [R4,#0xDC]
VLDR            S0, [R4,#0xE0]
VLDR            S18, [R4,#0xD4]
VLDR            S2, [R4,#0xD8]
VMLA.F32        S19, S17, S0
VLDR            S0, =0.71111
VMLA.F32        S18, S2, S1
VMUL.F32        S21, S19, S0
VMOV.F32        S0, S21
BL              sub_464318
VLDR            S1, [R4,#0xCC]
VMLA.F32        S1, S0, S18
VMOV.F32        S0, S21
VSTR            S1, [SP,#0xF0+var_6C]
BL              sub_464380
VLDR            S1, [R4,#0xD0]
ADD             R0, R4, #0xE4
VMLA.F32        S1, S0, S18
VSTR            S1, [SP,#0xF0+var_68]
VLDM            R0, {S0-S1}
VMLA.F32        S0, S17, S1
VSTR            S0, [SP,#0xF0+var_64]
LDRB            R0, [R4,#0xBD]
CMP             R0, #0
BEQ             loc_29E064
CMP             R0, #1
BEQ             loc_29DFF8
CMP             R0, #2
BNE             loc_29E064
B               loc_29E040
DCFS 1.5
DCFS 3.1416
DCFS 40.744
DCFS 1.0
DCFS 0.5
DCFS 0.0
DCFS 1.4062
DCFS 0.0055556
DCFS 180.0
DCFS 1.5708
DCFS 0.71111
VLDR            S1, =0.017453
VMOV.F32        S0, S16
VMUL.F32        S2, S19, S1
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VSUBGT.F32      S2, S2, S20
BGT             loc_29E018
VADDCC.F32      S2, S2, S20
VMOV.F32        S1, S0
ADD             R0, SP, #0xF0+var_A8
BL              sub_462C40
ADD             R2, SP, #0xF0+var_D8
ADD             R1, SP, #0xF0+var_A8
MOV             R0, R2
BL              sub_141F30
NOP
NOP
B               loc_29E064
VMOV.F32        S1, S16
VMOV.F32        S0, S16
VLDR            S2, [R4,#0x100]
ADD             R0, SP, #0xF0+var_A8
BL              sub_462C40
ADD             R2, SP, #0xF0+var_D8
ADD             R1, SP, #0xF0+var_A8
MOV             R0, R2
BL              sub_141F30
VLDR            S0, [SP,#0xF0+var_CC]
VLDR            S1, [SP,#0xF0+var_6C]
ADD             R1, SP, #0xF0+var_D8
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xF0+var_CC]
VLDR            S0, [SP,#0xF0+var_BC]
VLDR            S1, [SP,#0xF0+var_68]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xF0+var_BC]
VLDR            S0, [SP,#0xF0+var_AC]
VLDR            S1, [SP,#0xF0+var_64]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xF0+var_AC]
LDR             R0, [R4,#0xA4]
BL              sub_593188
LDR             R0, [R4,#0xB8]
CMP             R0, #0
ADDNE           R1, SP, #0xF0+var_D8
BLNE            sub_532BB8
MOV             R0, R4
NOP
BL              sub_29DBF0
LDRB            R1, [R4,#0xC2]
VLDR            S0, =255.0
MOV             R0, #0xFF
CMP             R1, #3
BEQ             loc_29E0E4
CMP             R1, #1
BEQ             loc_29E0F4
CMP             R1, #2
BEQ             loc_29E184
B               loc_29E218
LDRH            R1, [R4,#0xC8]
LDRB            R2, [R4,#0xC3]
CMP             R1, R2
BCS             loc_29E184
LDRH            R1, [R4,#0xC8]
LDRB            R2, [R4,#0xC3]
CMP             R1, R2
BCS             loc_29E218
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
ORR             R0, R0, R1
BIC             R0, R0, #0xFF000000
VMUL.F32        S0, S3, S0
ADD             R2, SP, #0xF0+var_EC
VDIV.F32        S2, S0, S1
VCVT.U32.F32    S0, S2
VMOV            R1, S0
ORR             R0, R0, R1,LSL#24
STR             R0, [SP,#0xF0+var_EC]
LDR             R0, [R4,#0xA4]
MOV             R1, #0
BL              sub_12C9C4
NOP
NOP
B               loc_29E218
LDRH            R1, [R4,#0xCA]
LDRH            R2, [R4,#0xC8]
LDRB            R3, [R4,#0xC3]
SUB             R1, R1, R2
CMP             R1, R3
BGE             loc_29E218
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
VCVT.F32.S32    S1, S1
ORR             R1, R5, R3
AND             R2, R2, #0xFF00
BIC             R1, R1, #0xFF00
VCVT.F32.U32    S2, S2
ORR             R1, R1, R2
BIC             R1, R1, #0xFF
ORR             R0, R0, R1
BIC             R0, R0, #0xFF000000
ADD             R2, SP, #0xF0+var_EC
VMUL.F32        S0, S1, S0
VDIV.F32        S1, S0, S2
VCVT.U32.F32    S0, S1
VMOV            R1, S0
ORR             R0, R0, R1,LSL#24
STR             R0, [SP,#0xF0+var_EC]
LDR             R0, [R4,#0xA4]
MOV             R1, #0
BL              sub_12C9C4
LDRH            R0, [R4,#0xCA]
LDRH            R1, [R4,#0xC8]
CMP             R0, R1
BHI             loc_29E298
LDRB            R0, [R4,#0xBE]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_29E244
CMP             R0, #1
BNE             loc_29E284
B               loc_29E270
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
B               loc_29E284
LDRH            R3, [R4,#0xC6]
LDRH            R2, [R4,#0xC4]
ADD             R1, SP, #0xF0+var_6C
MOV             R0, R4
BL              sub_29ED2C
LDR             R0, [R4,#0xB8]
CMP             R0, #0
BEQ             loc_29E298
BL              sub_533330
STR             R5, [R4,#0xB8]
ADD             SP, SP, #0xB0
VPOP            {D8-D13}
POP             {R4-R6,PC}
