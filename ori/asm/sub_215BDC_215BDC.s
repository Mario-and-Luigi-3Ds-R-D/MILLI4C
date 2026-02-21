PUSH            {R4-R11,LR}
CMP             R1, #2
MOV             R8, #0
MOV             R7, R0
MOV             R9, R1
VPUSH           {D8}
SUB             SP, SP, #0x74
STRB            R2, [R0,#0x3F6]
STRB            R1, [R0,#0x3F5]
STRB            R8, [SP,#0xA0+var_40]
STRB            R8, [SP,#0xA0+var_40+1]
MOVEQ           R0, #1
MOVNE           R0, #0
STRB            R8, [SP,#0xA0+var_3E]
STRB            R0, [SP,#0xA0+var_40+1]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0xA0+var_78
LDR             R0, [R0,#8]
STR             R0, [SP,#0xA0+var_70]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1-R3}
ADD             R4, SP, #0xA0+var_6C
MOV             R0, #1
LDR             R10, =off_6CE970
STM             R4, {R1-R3,R8}
CMP             R9, #0
STRB            R0, [SP,#0xA0+var_5C]
LDRH            R0, [SP,#0xA0+var_40]
STRH            R0, [SP,#0xA0+var_5B]
LDRB            R0, [SP,#0xA0+var_3E]
STRB            R0, [SP,#0xA0+var_59]
BEQ             loc_215C74
CMP             R9, #1
CMPNE           R9, #2
BEQ             loc_215DE8
B               loc_215F3C
LDR             R0, =0x10645C
LDR             R1, [R10]
ADD             R4, SP, #0xA0+var_78
ADD             R0, R0, R1; loc_10645C
LDR             R0, [R0,#(loc_106460 - 0x10645C)]
CMP             R0, #0
BEQ             loc_215C9C
SUBS            R0, R0, #0x1AC
ADDNE           R0, R0, #0x1AC
BNE             loc_215CA0
MOV             R0, #0
CMP             R0, #0
LDRNE           R6, [R0,#8]
MOVEQ           R6, #0
MOVNE           R11, R8
BEQ             loc_215F3C
CMP             R0, #0
MOVEQ           R5, #0
SUBNE           R5, R0, #0x1AC
ADD             R1, R4, #0x1D
LDR             R0, [R5]
LDR             R2, [R0,#0x34]
MOV             R0, R5
BLX             R2
CMP             R0, #0
BEQ             loc_215DD0
LDR             R0, [R5]
MOV             R2, #1
ADD             R1, SP, #0xA0+var_58
LDR             R3, [R0,#0x38]
MOV             R0, R5
BLX             R3
LDRB            R0, [R4,#0x1C]
CMP             R0, #0
BEQ             loc_215D34
ADD             R3, SP, #0xA0+var_58
LDR             R0, [SP,#0xA0+var_50]
LDM             R3, {R1,R2}
ADD             R3, SP, #0xA0+var_6C
STR             R0, [SP,#0xA0+var_64]
STM             R3, {R1,R2}
MOV             R2, R1
LDR             R1, [SP,#0xA0+var_68]
STR             R0, [SP,#0xA0+var_70]
STR             R2, [SP,#0xA0+var_78]
STR             R1, [SP,#0xA0+var_74]
STRB            R11, [R4,#0x1C]
B               loc_215DC4
VLDR            S0, [SP,#0xA0+var_78]
VLDR            S1, [SP,#0xA0+var_58]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [SP,#0xA0+var_78]
VLDR            S0, [SP,#0xA0+var_74]
VLDR            S1, [SP,#0xA0+var_54]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [SP,#0xA0+var_74]
VLDR            S0, [SP,#0xA0+var_70]
VLDR            S1, [SP,#0xA0+var_50]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [SP,#0xA0+var_70]
VLDR            S0, [SP,#0xA0+var_6C]
VLDR            S1, [SP,#0xA0+var_58]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
VSTR            S0, [SP,#0xA0+var_6C]
VLDR            S1, [SP,#0xA0+var_68]
VLDR            S0, [SP,#0xA0+var_54]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [SP,#0xA0+var_68]
VLDR            S1, [SP,#0xA0+var_64]
VLDR            S0, [SP,#0xA0+var_50]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [SP,#0xA0+var_64]
LDR             R0, [SP,#0xA0+var_60]
ADD             R0, R0, #1
STR             R0, [SP,#0xA0+var_60]
MOVS            R0, R6
MOVEQ           R6, #0
LDRNE           R6, [R0,#8]
CMP             R0, R8
BNE             loc_215CB4
B               loc_215F3C
LDR             R0, =0x10646C
LDR             R1, [R10]
ADD             R4, SP, #0xA0+var_78
ADD             R0, R0, R1; loc_10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R0, #0
ADDNE           R0, R0, #0x1AC
CMP             R0, #0
LDRNE           R6, [R0,#8]
MOVEQ           R6, #0
MOVNE           R11, R8
BEQ             loc_215F3C
CMP             R0, #0
MOVEQ           R5, #0
SUBNE           R5, R0, #0x1AC
ADD             R1, R4, #0x1D
LDR             R0, [R5]
LDR             R2, [R0,#0x34]
MOV             R0, R5
BLX             R2
CMP             R0, #0
BEQ             loc_215F28
LDR             R0, [R5]
MOV             R2, #1
ADD             R1, SP, #0xA0+var_58
LDR             R3, [R0,#0x38]
MOV             R0, R5
BLX             R3
LDRB            R0, [R4,#0x1C]
CMP             R0, #0
BEQ             loc_215E8C
ADD             R3, SP, #0xA0+var_58
LDM             R3, {R0-R2}
ADD             R3, SP, #0xA0+var_6C
STM             R3, {R0-R2}
ADD             R3, SP, #0xA0+var_78
STM             R3, {R0-R2}
STRB            R11, [R4,#0x1C]
B               loc_215F1C
VLDR            S1, [SP,#0xA0+var_78]
VLDR            S0, [SP,#0xA0+var_58]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
VSTR            S0, [SP,#0xA0+var_78]
VLDR            S0, [SP,#0xA0+var_74]
VLDR            S1, [SP,#0xA0+var_54]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [SP,#0xA0+var_74]
VLDR            S0, [SP,#0xA0+var_70]
VLDR            S1, [SP,#0xA0+var_50]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [SP,#0xA0+var_70]
VLDR            S1, [SP,#0xA0+var_6C]
VLDR            S0, [SP,#0xA0+var_58]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [SP,#0xA0+var_6C]
VLDR            S0, [SP,#0xA0+var_68]
VLDR            S1, [SP,#0xA0+var_54]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
VSTR            S0, [SP,#0xA0+var_68]
VLDR            S0, [SP,#0xA0+var_64]
VLDR            S1, [SP,#0xA0+var_50]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
VSTR            S0, [SP,#0xA0+var_64]
LDR             R0, [SP,#0xA0+var_60]
ADD             R0, R0, #1
STR             R0, [SP,#0xA0+var_60]
MOVS            R0, R6
MOVEQ           R6, #0
LDRNE           R6, [R0,#8]
CMP             R0, R8
BNE             loc_215E20
LDR             R11, =flt_6E34B0
VLDR            S3, [SP,#0xA0+var_6C]
VLDR            S0, [SP,#0xA0+var_78]
ADD             R1, R11, #0xD0
ADD             R0, SP, #0xA0+var_4C
VLDM            R1, {S1-S2}
VSUB.F32        S3, S3, S0
MOV             R1, R0
VADD.F32        S0, S0, S2
VMLA.F32        S0, S3, S1
VSTR            S0, [SP,#0xA0+var_4C]
VLDR            S1, [R11,#(flt_6E358C - 0x6E34B0)]
VLDR            S0, [SP,#0xA0+var_74]
VLDR            S3, [SP,#0xA0+var_68]
VLDR            S2, [R11,#(flt_6E3588 - 0x6E34B0)]
VADD.F32        S1, S0, S1
VSUB.F32        S0, S3, S0
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0xA0+var_48]
VLDR            S1, [R11,#(flt_6E3594 - 0x6E34B0)]
VLDR            S0, [SP,#0xA0+var_70]
VLDR            S3, [SP,#0xA0+var_64]
VLDR            S2, [R11,#(flt_6E3590 - 0x6E34B0)]
VADD.F32        S1, S0, S1
VSUB.F32        S0, S3, S0
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0xA0+var_44]
BL              sub_480160
ADD             R3, SP, #0xA0+var_4C
VLDR            S0, =3.4028e38
LDM             R3, {R0-R2}
ADD             R3, SP, #0xA0+var_90
CMP             R9, #0
STM             R3, {R0-R2}
VSTR            S0, [SP,#0xA0+var_84]
LDRH            R0, [SP,#0xA0+var_40]
STRH            R0, [SP,#0xA0+var_7C]
LDRB            R0, [SP,#0xA0+var_3E]
STRB            R0, [SP,#0xA0+var_7A]
BEQ             loc_215FEC
CMP             R9, #1
CMPNE           R9, #2
BEQ             loc_2160D0
B               loc_2161A8
LDR             R0, =0x10645C
LDR             R1, [R10]
ADD             R6, SP, #0xA0+var_90
ADD             R0, R0, R1; loc_10645C
LDR             R0, [R0,#(loc_106460 - 0x10645C)]
CMP             R0, #0
BEQ             loc_216014
SUBS            R0, R0, #0x1AC
ADDNE           R0, R0, #0x1AC
BNE             loc_216018
MOV             R0, #0
CMP             R0, #0
LDRNE           R5, [R0,#8]
MOVEQ           R5, #0
BEQ             loc_2161A8
CMP             R0, #0
MOVEQ           R4, #0
SUBNE           R4, R0, #0x1AC
ADD             R1, R6, #0x14
LDR             R0, [R4]
LDR             R2, [R0,#0x34]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_2160B8
LDR             R0, [R4]
MOV             R2, #1
MOV             R1, SP
LDR             R3, [R0,#0x38]
MOV             R0, R4
BLX             R3
VLDR            S0, [SP,#0xA0+var_A0]
VLDR            S1, [SP,#0xA0+var_90]
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0xA0+var_A0]
VLDR            S1, [SP,#0xA0+var_9C]
VLDR            S2, [SP,#0xA0+var_8C]
VMUL.F32        S0, S0, S0
VSUB.F32        S2, S1, S2
VSTR            S2, [SP,#0xA0+var_9C]
VLDR            S1, [SP,#0xA0+var_98]
VLDR            S3, [SP,#0xA0+var_88]
VMLA.F32        S0, S2, S2
VSUB.F32        S1, S1, S3
VSTR            S1, [SP,#0xA0+var_98]
VMLA.F32        S0, S1, S1
VLDR            S1, [SP,#0xA0+var_84]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VSTRGT          S0, [SP,#0xA0+var_84]
STRGT           R4, [SP,#0xA0+var_80]
MOVS            R0, R5
MOVEQ           R5, #0
LDRNE           R5, [R0,#8]
CMP             R0, R8
BNE             loc_216028
B               loc_2161A8
LDR             R0, =0x10646C
LDR             R1, [R10]
ADD             R6, SP, #0xA0+var_90
ADD             R0, R0, R1; loc_10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R0, #0
ADDNE           R0, R0, #0x1AC
CMP             R0, #0
LDRNE           R5, [R0,#8]
MOVEQ           R5, #0
BEQ             loc_2161A8
CMP             R0, #0
MOVEQ           R4, #0
SUBNE           R4, R0, #0x1AC
ADD             R1, R6, #0x14
LDR             R0, [R4]
LDR             R2, [R0,#0x34]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_216194
LDR             R0, [R4]
MOV             R2, #1
ADD             R1, SP, #0xA0+var_58
LDR             R3, [R0,#0x38]
MOV             R0, R4
BLX             R3
VLDR            S0, [SP,#0xA0+var_58]
VLDR            S1, [SP,#0xA0+var_90]
VSUB.F32        S1, S0, S1
VSTR            S1, [SP,#0xA0+var_58]
VLDR            S2, [SP,#0xA0+var_54]
VLDR            S0, [SP,#0xA0+var_8C]
VMUL.F32        S1, S1, S1
VSUB.F32        S0, S2, S0
VSTR            S0, [SP,#0xA0+var_54]
VLDR            S2, [SP,#0xA0+var_50]
VLDR            S3, [SP,#0xA0+var_88]
VMLA.F32        S1, S0, S0
VSUB.F32        S2, S2, S3
VSTR            S2, [SP,#0xA0+var_50]
VMLA.F32        S1, S2, S2
VLDR            S0, [SP,#0xA0+var_84]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VSTRGT          S1, [SP,#0xA0+var_84]
STRGT           R4, [SP,#0xA0+var_80]
MOVS            R0, R5
MOVEQ           R5, #0
LDRNE           R5, [R0,#8]
CMP             R0, R8
BNE             loc_216104
LDR             R0, [SP,#0xA0+var_80]
ADD             R4, R7, #0x300
MOV             R2, #1
LDRH            R1, [R0,#0x10]
STRH            R1, [R4,#0xFE]
LDR             R1, [R0]
LDR             R3, [R1,#0x38]
ADD             R1, SP, #0xA0+var_4C
BLX             R3
ADD             R1, SP, #0xA0+var_4C
MOV             R0, R1
BL              sub_480160
STRH            R8, [R4,#0xFA]
LDRB            R0, [R7,#0x3F4]
CMP             R0, #5
BEQ             loc_2162D0
LDRB            R0, [R7,#0xF0]
CMP             R0, #1
BEQ             loc_21622C
LDR             R0, [R7]
MOV             R2, #0
ADD             R1, SP, #0xA0+var_3C
LDR             R3, [R0,#0x28]
MOV             R0, R7
BLX             R3
MOV             R1, #1
MOV             R0, R7
BL              sub_14C450
LDR             R0, [R7]
ADD             R1, SP, #0xA0+var_3C
LDR             R2, [R0,#0x20]
MOV             R0, R7
BLX             R2
ADD             R1, SP, #0xA0+var_4C
ADD             R0, R7, #0x24 ; '$'
BL              sub_214A94
ADD             R2, SP, #0xA0+var_4C
MOV             R1, #0
ADD             R0, R7, #0x1DC
BL              sub_5A2A74
LDR             R0, [R10]
NOP
BL              sub_528E64
LDRB            R0, [R0,#0x495]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, #2
AND             R1, R0, #0xFF
MOV             R0, R7
BL              sub_14C430
MOV             R5, #1
VLDR            S1, =1.0
STRB            R5, [R7,#0xF2]
LDR             R0, [R7,#0x204]
CMP             R9, #2
VMOVNE.F32      S16, S1
VLDREQ          S16, [R11,#(flt_6E35A0 - 0x6E34B0)]
VLDR            S0, [R0,#0x10]
ADD             R2, SP, #0xA0+var_58
MOV             R1, #0
VSTR            S16, [SP,#0xA0+var_58]
VSTR            S16, [SP,#0xA0+var_54]
VSTR            S1, [SP,#0xA0+var_50]
ADD             R0, R7, #0x158
BL              sub_5A2074
VMOV.F32        S0, S16
LDRH            R1, [R4,#0xFE]
ADD             R3, SP, #0xA0+var_40
MOV             R2, R9
ADD             R0, R7, #0x410
STR             R5, [SP,#0xA0+var_A0]
BL              sub_2E7CB4
MOV             R0, #5
STRB            R0, [R7,#0x3F4]
ADD             SP, SP, #0x74 ; 't'
VPOP            {D8}
POP             {R4-R11,PC}
