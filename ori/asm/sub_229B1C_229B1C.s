PUSH            {R4-R9,LR}
MOV             R5, R0
MOV             R8, R1
MOV             R7, R2
MOV             R4, R3
VPUSH           {D8-D10}
VMOV.F32        S19, S0
SUB             SP, SP, #0x7C
VLDR            S18, =0.0
BL              sub_4635D8
VLDR            S5, [R4]
VLDR            S2, [R4,#4]
VLDR            S0, =60.0
VMUL.F32        S1, S5, S5
VLDR            S4, =1.0
VMUL.F32        S20, S19, S0
VLDR            S0, [R4,#8]
BIC             R0, R6, #0xFF
VLDM            R8, {S6-S8}
ORR             R7, R7, R0
VLDR            S17, =-68.0
VLDR            S16, =-1.0
VLDR            S19, =10.0
VMLA.F32        S1, S2, S2
ADD             R0, R5, #4
VCMPE.F32       S20, S18
LDR             R8, =0x30303000
ADD             R5, R5, #0x9800
MOV             R4, R0
ADD             R5, R5, #4
VMLA.F32        S1, S0, S0
VSQRT.F32       S9, S1
VDIV.F32        S3, S4, S9
VMUL.F32        S1, S5, S3
VMUL.F32        S2, S2, S3
VMUL.F32        S0, S0, S3
VMRS            APSR_nzcv, FPSCR
BLE             loc_22A054
LDR             R0, =0x9ABC
MOV             R9, SP
ADD             R2, SP, #0xB0+var_AC
LDR             R0, [R0,R4]
STR             R0, [SP,#0xB0+var_B0]
VSTR            S20, [SP,#0xB0+var_88]
VSTR            S4, [SP,#0xB0+var_84]
VSTR            S0, [SP,#0xB0+var_8C]
ADD             R0, SP, #0xB0+var_94
VSTM            R0, {S1-S2}
ADD             R0, SP, #0xB0+var_AC
VSTM            R0, {S6-S8}
VLDR            S0, [R5,#0x2E8]
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BLS             loc_229D60
ADD             R12, R4, #0x9000
ADD             R12, R12, #0xAF0
VLDR            S1, [R12]
VCMP.F32        S1, S18
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R12,#4]
VCMPEQ.F32      S1, S18
VMRSEQ          APSR_nzcv, FPSCR
VLDREQ          S1, [R12,#8]
VCMPEQ.F32      S1, S18
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_229D60
LDR             R0, =0x9AEC
LDR             R0, [R0,R4]
CMP             R0, #0
VMULEQ.F32      S1, S0, S0
MOVEQ           R6, #0
BEQ             loc_229C50
CMP             R0, #1
VMULEQ.F32      S1, S0, S0
MOVEQ           R3, #0
BEQ             loc_229CE0
B               loc_229D60
LDR             R0, [R4,#0x300]
LDR             R3, [R4,#0x304]
CMP             R3, R0
BEQ             loc_229D60
VLDR            S3, [R2,#8]
VLDR            S0, [R2]
VLDR            S5, [R2,#4]
VLDR            S2, [R0,#4]
VLDR            S6, [R0,#8]
VLDR            S4, [R0,#0xC]
VSUB.F32        S2, S2, S0
VSUB.F32        S6, S6, S5
VSUB.F32        S4, S4, S3
VMUL.F32        S2, S2, S2
VMLA.F32        S2, S6, S6
VMLA.F32        S2, S4, S4
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLE             loc_229CD0
VLDR            S2, [R12]
ADD             R6, R6, #1
CMP             R6, #0x20 ; ' '
VADD.F32        S0, S0, S2
VSTR            S0, [R2]
VLDR            S2, [R12,#4]
VADD.F32        S0, S5, S2
VSTR            S0, [R2,#4]
VLDR            S2, [R12,#8]
VADD.F32        S0, S3, S2
VSTR            S0, [R2,#8]
BCC             loc_229C50
B               loc_229D60
ADD             R0, R0, #0x10
CMP             R3, R0
BNE             loc_229C6C
B               loc_229D60
LDR             R0, [R4,#0x300]
LDR             R1, [R4,#0x304]
CMP             R1, R0
VLDRNE          S0, [R2]
VLDRNE          S4, [R2,#4]
BEQ             loc_229D60
VLDR            S3, [R0,#4]
VLDR            S2, [R0,#8]
VSUB.F32        S3, S3, S0
VSUB.F32        S2, S2, S4
VMUL.F32        S3, S3, S3
VMLA.F32        S3, S2, S2
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BLE             loc_229D54
VLDR            S2, [R12]
ADD             R3, R3, #1
CMP             R3, #0x20 ; ' '
VADD.F32        S0, S0, S2
VSTR            S0, [R2]
VLDR            S2, [R12,#4]
VADD.F32        S0, S4, S2
VSTR            S0, [R2,#4]
VLDR            S0, [R2,#8]
VLDR            S2, [R12,#8]
VADD.F32        S0, S0, S2
VSTR            S0, [R2,#8]
BCC             loc_229CE0
B               loc_229D60
ADD             R0, R0, #0x10
CMP             R1, R0
BNE             loc_229CF8
MOV             R2, #0
ADD             R1, R9, #0x10
MOV             R0, R4
BL              sub_5C4F84
VLDR            S1, [SP,#0xB0+var_A0]
VMOV.F32        S0, S16
VLDR            S2, =8.0
VADD.F32        S1, S1, S17
VCMPE.F32       S0, S18
VSTR            S1, [SP,#0xB0+var_A0]
VMRS            APSR_nzcv, FPSCR
VLDR            S3, [SP,#0xB0+var_98]
VCMPE.F32       S16, S18
VADD.F32        S3, S3, S2
VSTR            S3, [SP,#0xB0+var_98]
LDR             R0, [R5,#0x2D4]
STR             R0, [SP,#0xB0+var_80]
VLDRCC          S0, [R5,#0x2D8]
VMRS            APSR_nzcv, FPSCR
VSTR            S0, [SP,#0xB0+var_7C]
BCS             loc_229DEC
VLDR            S2, [SP,#0xB0+var_AC]
VLDR            S4, [SP,#0xB0+var_9C]
VLDR            S5, [SP,#0xB0+var_A8]
VSUB.F32        S2, S1, S2
VLDR            S0, [SP,#0xB0+var_A4]
VSUB.F32        S1, S4, S5
VLDR            S16, [R5,#0x2DC]
VSUB.F32        S0, S3, S0
VMUL.F32        S2, S2, S2
VMLA.F32        S2, S1, S1
VLDR            S1, [R5,#0x2E0]
VMLA.F32        S2, S0, S0
VSQRT.F32       S0, S2
VMLA.F32        S16, S1, S0
ADD             R1, R5, #0x314
ADD             R9, SP, #0xB0+var_5C
ADD             R0, R4, #0x9A00
ADD             R6, R4, #0x9800
ADD             R6, R6, #0x2A8
VSTR            S16, [SP,#0xB0+var_78]
LDM             R1, {R1-R3}
STM             R9, {R1-R3}
ADD             R1, R5, #0x320
ADD             R9, SP, #0xB0+var_50
LDM             R1, {R1-R3}
STM             R9, {R1-R3}
ADD             R1, R5, #0x2FC
ADD             R9, SP, #0xB0+var_74
LDM             R1, {R1-R3}
ADD             R5, R5, #0x308
STM             R9, {R1-R3}
ADD             R9, SP, #0xB0+var_68
LDM             R5, {R1-R3}
STM             R9, {R1-R3}
LDRH            R1, [R0,#0xC0]
STRH            R1, [SP,#0xB0+var_44]
LDRH            R0, [R0,#0xC2]
STRB            R7, [SP,#0xB0+var_40]
ADD             R1, R4, #0x308
STRH            R0, [SP,#0xB0+var_42]
LDR             R0, [R6]
ADD             R0, R0, #1
AND             R0, R0, #0x1F
CMP             R0, #0x20 ; ' '
STR             R0, [R6]
BCS             loc_229F60
LDR             R2, =0x12D
MUL             R0, R0, R2
ADD             R0, R1, R0,LSL#2
LDR             R1, [R0,#0x80]
CMP             R1, #3
BCS             loc_229EEC
VLDR            S16, [R0,#0x30]
LDR             R5, [R0,#4]
VCMPE.F32       S16, S18
VMRS            APSR_nzcv, FPSCR
BLE             loc_229EDC
ADD             R0, R5, #0x9800
ADD             R0, R0, #0x2AC
LDR             R1, [R0]
TST             R1, #1
BNE             loc_229EDC
ORR             R1, R1, #1
STR             R1, [R0]
ADD             R0, R5, #0x9C00
ADD             R0, R0, #0x294
MOV             R7, R0
BL              sub_4E63E0
REV             R0, R8
VMOV.F32        S0, S19
STR             R0, [SP,#0xB0+var_3C]
ADD             R1, SP, #0xB0+var_3C
MOV             R0, R7
BL              sub_4E665C
ADD             R0, R5, #0x9800
VLDR            S0, [R0,#0x32C]
VADD.F32        S0, S0, S16
VSTR            S0, [R0,#0x32C]
ADD             R1, R4, #0x308
B               loc_229F20
DCFS 0.0
DCFS -68.0
DCFS -1.0
DCFS 1.0
DCFS 60.0
DCD 0x30303000
DCFS 10.0
DCD 0x9ABC
DCD 0x9AEC
DCFS 8.0
DCD 0x12D
LDR             R0, [R6]
CMP             R0, #0x20 ; ' '
BCS             loc_229F60
LDR             R2, =0x12D
MUL             R0, R0, R2
MOV             R2, #0x71 ; 'q'
ADD             R0, R1, R0,LSL#2
MOV             R1, SP
ADD             R0, R0, #8
BL              sub_127EB8
LDR             R0, [R6]
ADD             R1, R4, #0x9800
ADD             R1, R1, #0x188
CMP             R0, #0x20 ; ' '
ADD             R2, R4, #0x308
BCC             loc_229F68
NOP
BL              sub_2FE484
LDR             R3, =0x12D
ADD             R5, R1, #0x118
LDM             R5, {R5,R12}
MUL             R0, R0, R3
LDR             R3, [R1,#0x110]
ADD             R2, R2, R0,LSL#2
SUB             R0, R12, R5
MOV             R0, R0,ASR#2
SUB             R6, R0, #1
LDR             R0, [R1,#0x114]
CMP             R0, R3
SUBCC           R3, R12, R3
SUBCC           R12, R0, R5
MOVCC           R3, R3,ASR#2
ADDCC           R12, R3, R12,ASR#2
SUBCS           R3, R0, R3
MOVCS           R12, R3,ASR#2
CMP             R6, R12
MOV             R3, #1
BLS             loc_229FFC
STR             R2, [R0]
LDR             R0, [R1,#0x114]
LDR             R12, [R1,#0x11C]
LDR             R2, [R1,#0x118]
ADD             R0, R0, #4
CMP             R12, R0
BHI             loc_229FE4
SUB             R2, R2, R12
BIC             R2, R2, #3
ADD             R0, R0, R2
B               loc_229FF8
CMP             R2, R0
BLS             loc_229FF8
SUB             R2, R12, R2
BIC             R2, R2, #3
ADD             R0, R0, R2
STR             R0, [R1,#0x114]
LDR             R0, =0x9AE4
ADD             R1, SP, #0xB0+var_A8
LDR             R6, [R4,#0x300]
LDM             R1, {R2,R12}
LDR             R1, [R0,R4]
LDR             R0, [R4,#0x304]
LDR             R5, [SP,#0xB0+var_AC]
SUB             R6, R0, R6
ADD             R3, R3, R6,ASR#4
CMP             R3, #0x20 ; ' '
BHI             loc_22A048
CMP             R0, #0
BEQ             loc_22A03C
STM             R0, {R1,R5}
ADD             R0, R0, #8
STM             R0, {R2,R12}
LDR             R0, [R4,#0x304]
ADD             R0, R0, #0x10
STR             R0, [R4,#0x304]
ADD             SP, SP, #0x7C ; '|'
VPOP            {D8-D10}
POP             {R4-R9,PC}
VLDR            S0, [R5,#0x32C]
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
BCS             loc_22A0A8
ADD             R0, R4, #0x9800
ADD             R0, R0, #0x2AC
LDR             R1, [R0]
TST             R1, #1
BNE             loc_22A0A8
ORR             R1, R1, #1
STR             R1, [R0]
ADD             R0, R4, #0x9C00
ADD             R0, R0, #0x294
MOV             R4, R0
BL              sub_4E63E0
REV             R0, R8
VMOV.F32        S0, S19
STR             R0, [SP,#0xB0+var_B0]
MOV             R1, SP
MOV             R0, R4
BL              sub_4E665C
VCMPE.F32       S18, S20
VMRS            APSR_nzcv, FPSCR
VMOVLT.F32      S18, S20
VSTR            S18, [R5,#0x32C]
ADD             SP, SP, #0x7C ; '|'
VPOP            {D8-D10}
POP             {R4-R9,PC}
