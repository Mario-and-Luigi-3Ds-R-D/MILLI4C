PUSH            {R0-R2,R4-R11,LR}
MOV             R5, R0
MOV             R10, R1
ADD             R1, R5, #0x1800
VPUSH           {D8-D11}
SUB             SP, SP, #0x88
ADD             R1, R1, #0x124
LDR             R0, [R0]
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
LDR             R0, [R5]
ADD             R1, R5, #0x1000
ADD             R1, R1, #0x930
LDR             R2, [R0,#0x34]
MOV             R0, R5
BLX             R2
LDR             R11, =off_6CE970
LDR             R1, =flt_6E2A58
LDR             R2, =0x10C7AC
VLDR            S20, =1.0
LDR             R0, [R11]
MOV             R12, R1
LDRH            R3, [R1,#(word_6E2A5C - 0x6E2A58)]
ADD             R4, R0, R2; loc_10C7AC
ADD             R9, R0, #0x10C000
VLDR            S0, [R12,#(flt_6E2A60 - 0x6E2A58)]
LDR             R0, =dword_6D2418
VLDR            S17, [R1]
VSUB.F32        S18, S20, S0
LDRH            R2, [R12,#(word_6E2A5E - 0x6E2A58)]
LDR             R0, [R0]
LDRB            R1, [R5,#0xF7]
AND             R7, R3, #0xFF
LDRH            R3, [R12,#(word_6E2A5C - 0x6E2A58)]
STR             R0, [SP,#0xD8+var_B8]
AND             R0, R2, #0xFF
VLDR            S22, =0.25
VLDR            S21, =40.744
VLDR            S19, =0.0
AND             R2, R3, #0xFF
CMP             R1, #0
ADD             R9, R9, #0x7A0
ADD             R6, R5, #0x1800
SUB             R8, R0, R2
BEQ             loc_24EA64
CMP             R1, #1
BNE             loc_24EA54
LDR             R0, [R5]
MOV             R2, #1
ADD             R1, SP, #0xD8+var_C4
LDR             R3, [R0,#0x24]
MOV             R0, R5
BLX             R3
LDR             R0, [R11]
VLDR            S0, =-1.0
VLDR            S7, =3000.0
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x590
VLDR            S8, =6000.0
VLDM            R0!, {S3}
VLDM            R0, {S1-S2}
ADD             R0, SP, #0xD8+var_C0
VMUL.F32        S3, S3, S0
VLDM            R0, {S5-S6}
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S4, S2, S6
VMUL.F32        S6, S6, S6
VMUL.F32        S0, S2, S2
VMLA.F32        S4, S1, S5
VMLA.F32        S6, S5, S5
VMLA.F32        S0, S1, S1
VMLA.F32        S4, S1, S7
VMLA.F32        S6, S5, S8
VMUL.F32        S5, S4, S4
VMLS.F32        S5, S0, S6
VCMPE.F32       S5, S19
VMRS            APSR_nzcv, FPSCR
BCC             loc_24EA54
VSQRT.F32       S6, S5
VNEG.F32        S7, S4
VLDR            S5, =0.5
VSUB.F32        S4, S6, S4
VSUB.F32        S7, S7, S6
VDIV.F32        S6, S4, S0
VDIV.F32        S4, S7, S0
VADD.F32        S0, S6, S5
VADD.F32        S4, S4, S5
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
VMOVHI.F32      S0, S4
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BCC             loc_24EA54
VLDR            S4, [R5,#0x3C]
ADD             R3, SP, #0xD8+var_C4
VSUB.F32        S0, S0, S4
LDM             R3, {R0-R2}
ADD             R3, SP, #0xD8+var_D4
VMOV            S4, R1
STM             R3, {R0-R2}
ADD             R1, SP, #0xD8+var_D4
VMUL.F32        S1, S1, S0
VMUL.F32        S3, S3, S0
VMUL.F32        S0, S2, S0
VMOV            S2, R0
ADD             R0, SP, #0xD8+var_5C
VADD.F32        S4, S4, S1
VADD.F32        S1, S2, S3
VMOV            S2, R2
VADD.F32        S0, S2, S0
VSTR            S4, [SP,#0xD8+var_D0]
VSTR            S0, [SP,#0xD8+var_CC]
VLDR            S2, [R5,#0x74]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0xD8+var_D4]
VLDR            S1, [R5,#0x94]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xD8+var_CC]
BL              sub_480160
ADD             R2, SP, #0xD8+var_5C
MOV             R1, #0
ADD             R0, SP, #0xD8+var_AC
BL              sub_47EE74
VLDR            S6, [R4]
VLDR            S5, [SP,#0xD8+var_AC]
VLDR            S2, [R4,#(loc_10C7B0 - 0x10C7AC)]
VLDR            S1, [SP,#0xD8+var_A8]
VMUL.F32        S16, S5, S6
VLDR            S4, [R4,#(loc_10C7B4 - 0x10C7AC)]
VLDR            S3, [SP,#0xD8+var_A4]
VLDR            S0, [R6,#0x100]
VMLA.F32        S16, S1, S2
VMLA.F32        S16, S3, S4
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BGE             loc_24EA54
VLDR            S0, [R5,#0x74]
VLDR            S3, [SP,#0xD8+var_C4]
VLDR            S1, [R5,#0x84]
VLDR            S2, [R5,#0x94]
VADD.F32        S0, S3, S0
ADD             R0, SP, #0xD8+var_D0
VSTR            S0, [SP,#0xD8+var_C4]
VLDR            S3, [SP,#0xD8+var_C0]
VADD.F32        S1, S3, S1
VSTR            S1, [SP,#0xD8+var_C0]
VLDR            S3, [SP,#0xD8+var_BC]
VADD.F32        S3, S3, S2
VSTR            S3, [SP,#0xD8+var_BC]
VLDR            S2, [SP,#0xD8+var_D4]
LDRB            R1, [R5,#0x9F]
VSUB.F32        S2, S0, S2
VLDM            R0, {S4-S5}
VSUB.F32        S0, S1, S4
VSUB.F32        S1, S3, S5
VMUL.F32        S2, S2, S2
VMLA.F32        S2, S0, S0
VMLA.F32        S2, S1, S1
VSQRT.F32       S0, S2
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
VMOV            S2, R7
VLDR            S5, [R5,#0x64]
VMOVCC.F32      S0, S17
VDIV.F32        S1, S0, S17
VMOV            S0, R8
VSUB.F32        S4, S20, S1
VCVT.F32.S32    S3, S0
VCVT.F32.U32    S0, S2
VLDR            S2, [R5,#0x5C]
VMLA.F32        S0, S4, S3
VADD.F32        S3, S2, S5
VCVT.U32.F32    S4, S0
VMOV.F32        S0, S20
VMLS.F32        S0, S1, S18
VLDR            S1, [R5,#0x78]
VMOV            R0, S4
VLDR            S4, [R5,#0x68]
AND             R0, R0, #0xFF
VMUL.F32        S4, S4, S4
SMULBB          R0, R1, R0
VMOV.F32        S2, S0
VLDR            S0, [R5,#0x88]
ADD             R1, R0, R0,LSL#7
ADD             R0, R1, R0,LSL#15
MOV             R0, R0,LSL#1
VMLA.F32        S4, S1, S1
VLDR            S1, [R5,#0x90]
MOV             R7, R0,LSR#24
LDR             R0, [R5]
LDR             R1, [R0,#0x4C]
MOV             R0, R5
VMLA.F32        S4, S0, S0
VSQRT.F32       S0, S4
VADD.F32        S4, S0, S3
VLDR            S3, [R5,#0x70]
VLDR            S0, [R5,#0x80]
VMUL.F32        S3, S3, S3
VMLA.F32        S3, S0, S0
VMLA.F32        S3, S1, S1
VSQRT.F32       S0, S3
VADD.F32        S0, S0, S4
VMUL.F32        S0, S0, S22
VMUL.F32        S17, S0, S2
BLX             R1
CMP             R0, #0
STR             R0, [SP,#0xD8+var_B0]
BEQ             loc_24E89C
LDR             R4, =unk_63EFE4
ADD             R8, R4, #2
LDRB            R1, [R4]
LDR             R0, [SP,#0xD8+var_B0]
BL              sub_5F163C
LDRB            R0, [R0,#3]
ADD             R4, R4, #1
CMP             R4, R8
SMULBB          R0, R0, R7
ADD             R1, R0, R0,LSL#7
ADD             R0, R1, R0,LSL#15
MOV             R0, R0,LSL#1
MOV             R7, R0,LSR#24
BNE             loc_24E86C
VLDR            S0, [R6,#0x108]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLT             loc_24E8E0
VLDR            S3, [R6,#0x10C]
VLDR            S0, [R6,#0x110]
VMOV            S1, R7
VSUB.F32        S3, S16, S3
VSUB.F32        S4, S20, S0
VLDR            S2, [R6,#0x120]
VCVT.F32.U32    S1, S1
VMUL.F32        S3, S3, S4
VMLA.F32        S0, S2, S3
VMUL.F32        S0, S1, S0
VCVT.U32.F32    S0, S0
VMOV            R0, S0
AND             R7, R0, #0xFF
SUB             R0, R7, #0x100
ADD             R2, SP, #0xD8+var_60
REV             R0, R0
MOV             R1, #0
STR             R0, [SP,#0xD8+var_60]
MOV             R0, R10
BL              sub_12C9C4
LDR             R1, [R11]
ADD             R4, R10, #0x20 ; ' '
ADD             R0, R10, #0x40 ; '@'
ADD             R1, R1, #0x100000
ADD             R1, R1, #0xC400
ADD             R2, R1, #0x150
VLDM            R2, {S0-S7}
ADD             R2, R1, #0x170
VSTM            R4, {S0-S7}
VMOV.F32        S0, S17
LDM             R2, {R2,R3,R12}
LDR             R1, [R1,#(off_10C57C - 0x10C400)]
STR             R1, [R10,#0x4C]
STM             R0, {R2,R3,R12}
MOV             R0, R4
MOV             R1, R0
BL              sub_142014
NOP
NOP
B               loc_24E980
DCD flt_6E2A58
DCD off_6CE970
DCD 0x10C7AC
DCD dword_6D2418
DCFS 0.25
DCFS 40.744
DCFS 1.0
DCFS 0.0
DCFS -1.0
DCFS 3000.0
DCFS 6000.0
DCFS 0.5
DCD unk_63EFE4
LDR             R1, [SP,#0xD8+var_D4]
STR             R1, [R4,#0xC]
LDR             R1, [SP,#0xD8+var_D0]
STR             R1, [R4,#0x1C]
LDR             R1, [SP,#0xD8+var_CC]
STR             R1, [R4,#0x2C]
VLDR            S0, [R6,#0xFC]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLT             loc_24EA20
VLDR            S1, [R9]
VLDR            S9, [SP,#0xD8+var_AC]
VLDR            S6, [R6,#0x100]
VLDR            S0, [R9,#(loc_10C7A4 - 0x10C7A0)]
VMUL.F32        S1, S1, S9
VSUB.F32        S6, S16, S6
VLDR            S2, [SP,#0xD8+var_A8]
VLDR            S7, [R6,#0x118]
VLDR            S8, [R6,#0x104]
VLDR            S5, [R6,#0x114]
VLDR            S3, [R9,#(loc_10C7A8 - 0x10C7A0)]
VMUL.F32        S7, S7, S8
VLDR            S4, [SP,#0xD8+var_A4]
ADD             R0, SP, #0xD8+var_90
VMLA.F32        S1, S0, S2
VSUB.F32        S0, S5, S6
MOV             R1, #1
VMLA.F32        S1, S3, S4
VMUL.F32        S0, S0, S7
VCMPE.F32       S1, S19
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S1, S19
VNEGGT.F32      S0, S0
VMOV.F32        S2, S1
VMUL.F32        S0, S0, S21
BL              sub_463BA8
MOV             R1, R4
ADD             R2, SP, #0xD8+var_90
MOV             R0, R1
BL              sub_141F30
MOV             R0, #0
STR             R0, [SP,#0xD8+var_D8]
LDRSB           R1, [R5,#0xF6]
LDR             R2, [R11]
LDR             R0, =0x1219DC
ADD             R1, R2, R1,LSL#2
LDR             R2, [SP,#0xD8+var_B8]
LDR             R3, [R1,R0]
LDR             R1, [SP,#0xD8+var_28]
MOV             R0, R10
BL              sub_136908
LDR             R1, =dword_6D2418
STR             R0, [R1]
ADD             SP, SP, #0x88
VPOP            {D8-D11}
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
MOV             R2, #1
ADD             R1, SP, #0xD8+var_70
MOV             R0, R5
BL              sub_5C5308
ADD             R2, SP, #0xD8+var_70
MOV             R1, #0
ADD             R0, SP, #0xD8+var_D4
BL              sub_47EE74
VLDR            S6, [R4]
VLDR            S5, [SP,#0xD8+var_D4]
VLDR            S3, [R4,#(loc_10C7B0 - 0x10C7AC)]
VLDR            S2, [SP,#0xD8+var_D0]
VMUL.F32        S16, S5, S6
VLDR            S1, [R4,#(loc_10C7B4 - 0x10C7AC)]
VLDR            S4, [SP,#0xD8+var_CC]
VLDR            S0, [R6,#0x100]
VMLA.F32        S16, S2, S3
VMLA.F32        S16, S4, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BGE             loc_24EA54
VLDR            S1, [R5,#0x3C]
VLDR            S0, [SP,#0xD8+var_70]
VLDR            S2, [SP,#0xD8+var_68]
ADD             R2, SP, #0xD8+var_C4
ADD             R1, SP, #0xD8+var_C4
MOV             R0, R1
VSTM            R2, {S0-S2}
BL              sub_4800C0
VLDR            S1, [R5,#0x74]
VLDR            S0, [SP,#0xD8+var_C4]
MOV             R2, #1
ADD             R1, SP, #0xD8+var_B0
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xD8+var_C4]
VLDR            S1, [R5,#0x94]
VLDR            S0, [SP,#0xD8+var_BC]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xD8+var_BC]
LDR             R0, [R5]
LDR             R3, [R0,#0x24]
MOV             R0, R5
BLX             R3
VLDR            S1, [R5,#0x74]
VLDR            S2, [SP,#0xD8+var_B0]
VLDR            S0, [R5,#0x84]
VLDR            S3, [R5,#0x94]
VADD.F32        S2, S2, S1
ADD             R0, SP, #0xD8+var_C0
VSTR            S2, [SP,#0xD8+var_B0]
VLDR            S1, [SP,#0xD8+var_AC]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0xD8+var_AC]
VLDR            S1, [SP,#0xD8+var_A8]
VADD.F32        S1, S1, S3
VSTR            S1, [SP,#0xD8+var_A8]
VLDR            S3, [SP,#0xD8+var_C4]
LDRB            R1, [R5,#0x9F]
VSUB.F32        S3, S2, S3
VLDM            R0, {S4-S5}
VSUB.F32        S2, S0, S4
VSUB.F32        S0, S1, S5
VMUL.F32        S1, S3, S3
VMLA.F32        S1, S2, S2
VMLA.F32        S1, S0, S0
VSQRT.F32       S0, S1
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
VMOV            S2, R7
VLDR            S3, [R5,#0x5C]
VMOVCC.F32      S0, S17
VLDR            S5, [R5,#0x64]
VADD.F32        S3, S3, S5
VDIV.F32        S1, S0, S17
VMOV            S0, R8
VCVT.F32.S32    S4, S0
VCVT.F32.U32    S0, S2
VSUB.F32        S2, S20, S1
VMLA.F32        S0, S2, S4
VLDR            S4, [R5,#0x68]
VMOV.F32        S2, S20
VMUL.F32        S4, S4, S4
VMLS.F32        S2, S1, S18
VLDR            S1, [R5,#0x78]
VCVT.U32.F32    S0, S0
VMLA.F32        S4, S1, S1
VLDR            S1, [R5,#0x80]
VMOV            R0, S0
VLDR            S0, [R5,#0x88]
AND             R0, R0, #0xFF
VMLA.F32        S4, S0, S0
SMULBB          R0, R1, R0
ADD             R1, R0, R0,LSL#7
ADD             R0, R1, R0,LSL#15
MOV             R0, R0,LSL#1
VSQRT.F32       S0, S4
MOV             R7, R0,LSR#24
LDR             R0, [R5]
VADD.F32        S4, S0, S3
VLDR            S3, [R5,#0x70]
VLDR            S0, [R5,#0x90]
LDR             R1, [R0,#0x4C]
VMUL.F32        S3, S3, S3
MOV             R0, R5
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S0, S0
VSQRT.F32       S0, S3
VADD.F32        S0, S0, S4
VMUL.F32        S0, S0, S22
VMUL.F32        S17, S0, S2
BLX             R1
CMP             R0, #0
STR             R0, [SP,#0xD8+var_C8]
BEQ             loc_24EC64
LDR             R4, =unk_63EFE4
ADD             R8, R4, #2
LDRB            R1, [R4]
LDR             R0, [SP,#0xD8+var_C8]
BL              sub_5F163C
LDRB            R0, [R0,#3]
ADD             R4, R4, #1
CMP             R4, R8
SMULBB          R0, R0, R7
ADD             R1, R0, R0,LSL#7
ADD             R0, R1, R0,LSL#15
MOV             R0, R0,LSL#1
MOV             R7, R0,LSR#24
BNE             loc_24EC34
VLDR            S0, [R6,#0x108]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLT             loc_24ECA8
VLDR            S3, [R6,#0x10C]
VLDR            S0, [R6,#0x110]
VMOV            S1, R7
VSUB.F32        S3, S16, S3
VSUB.F32        S4, S20, S0
VLDR            S2, [R6,#0x120]
VCVT.F32.U32    S1, S1
VMUL.F32        S3, S3, S4
VMLA.F32        S0, S2, S3
VMUL.F32        S0, S1, S0
VCVT.U32.F32    S0, S0
VMOV            R0, S0
AND             R7, R0, #0xFF
SUB             R0, R7, #0x100
ADD             R2, SP, #0xD8+var_60
REV             R0, R0
MOV             R1, #0
STR             R0, [SP,#0xD8+var_60]
MOV             R0, R10
BL              sub_12C9C4
LDR             R1, [R11]
ADD             R4, R10, #0x20 ; ' '
ADD             R0, R10, #0x40 ; '@'
ADD             R1, R1, #0x100000
ADD             R1, R1, #0xC400
ADD             R2, R1, #0x150
VLDM            R2, {S0-S7}
ADD             R2, R1, #0x170
VSTM            R4, {S0-S7}
VMOV.F32        S0, S17
LDM             R2, {R2,R3,R12}
LDR             R1, [R1,#(off_10C57C - 0x10C400)]
STR             R1, [R10,#0x4C]
STM             R0, {R2,R3,R12}
MOV             R0, R4
MOV             R1, R0
BL              sub_142014
LDR             R1, [SP,#0xD8+var_C4]
STR             R1, [R4,#0xC]
LDR             R1, [SP,#0xD8+var_C0]
STR             R1, [R4,#0x1C]
LDR             R1, [SP,#0xD8+var_BC]
STR             R1, [R4,#0x2C]
VLDR            S0, [R6,#0xFC]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLT             loc_24EA20
VLDR            S2, [R9]
VLDR            S10, [SP,#0xD8+var_D4]
VLDR            S7, [R6,#0x100]
VLDR            S0, [R9,#(loc_10C7A4 - 0x10C7A0)]
VMUL.F32        S2, S2, S10
VSUB.F32        S7, S16, S7
VLDR            S3, [SP,#0xD8+var_D0]
VLDR            S8, [R6,#0x118]
VLDR            S9, [R6,#0x104]
VLDR            S6, [R6,#0x114]
VLDR            S4, [R9,#(loc_10C7A8 - 0x10C7A0)]
VMUL.F32        S8, S8, S9
VLDR            S5, [SP,#0xD8+var_CC]
VMOV.F32        S1, S19
VMLA.F32        S2, S0, S3
VSUB.F32        S0, S6, S7
ADD             R0, SP, #0xD8+var_A0
MOV             R1, #1
VMLA.F32        S2, S4, S5
VMUL.F32        S0, S0, S8
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S2, S1
VNEGGT.F32      S0, S0
VMUL.F32        S0, S0, S21
BL              sub_463BA8
MOV             R1, R4
ADD             R2, SP, #0xD8+var_A0
MOV             R0, R1
BL              sub_141F30
NOP
NOP
B               loc_24EA20
