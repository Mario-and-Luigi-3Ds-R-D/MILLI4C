PUSH            {R4-R10,LR}
MOV             R4, R0
VPUSH           {D8-D9}
VMOV.F32        S16, S0
SUB             SP, SP, #0x18
LDRB            R0, [R0,#0xB0]
CMP             R0, #0
BNE             loc_270EA4
VMOV.F32        S0, S16
ADD             R0, R4, #0x10
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0x44 ; 'D'
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0x78 ; 'x'
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0xDC
BL              sub_5A176C
LDR             R1, =off_6CDF98
LDRB            R0, [R4,#0xAD]
VLDR            S18, =0.0
MOV             R9, #0
LDR             R1, [R1]
CMP             R0, #0
MOV             R10, #1
LDR             R5, [R1,#0x124]
BEQ             loc_270D90
LDR             R0, [R4]
LDRB            R1, [R4,#0xAC]
VLDR            S19, =40.744
LDRB            R0, [R0,#0x68]
CMP             R1, R0
LDRBNE          R2, [R4,#0xAF]
CMPNE           R2, #0
BEQ             loc_270B54
CMP             R0, #5
STRB            R0, [R4,#0xAC]
ADDCC           R0, R0, R0,LSL#1
ADD             R1, R5, #0x6A0
ADDCC           R6, R1, R0,LSL#2
BCS             loc_270B68
VLDR            S0, [R4,#0xB4]
VMUL.F32        S0, S0, S19
BL              sub_464380
LDR             R0, [R4]
VCMPE.F32       S0, S18
ADD             R1, SP, #0x48+var_44
LDR             R0, [R0,#0x580]
VMRS            APSR_nzcv, FPSCR
VLDR            S17, [R6,#8]
LDR             R2, [R0],#4
VLDR            S1, [R6]
STR             R0, [SP,#0x48+var_44]
STR             R2, [SP,#0x48+var_48]
LDR             R2, [R0,#4]
VNEGCC.F32      S0, S0
STR             R2, [SP,#0x48+var_40]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x48+var_48]
VMLA.F32        S17, S0, S1
LDR             R1, [SP,#0x48+var_40]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x314]
ADD             R0, SP, #0x48+var_44
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
MOVCC           R6, #1
MOVCS           R6, #0
CMP             R1, R0
BNE             loc_270B20
LDR             R0, [SP,#0x48+var_48]
CMP             R0, #0
BEQ             loc_270B20
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
CMP             R6, #0
LDRD            R0, R1, [SP,#0x48+var_44]
VNEGNE.F32      S17, S17
STR             R1, [R0,#4]
STR             R0, [R1]
STRB            R9, [R4,#0xAD]
VMOV.F32        S0, S17
VLDR            S1, [R5,#0x268]
ADD             R0, R4, #0x10
BL              sub_5A14A4
STRB            R10, [R4,#0xAE]
NOP
B               loc_270D78
LDR             R0, [R4,#0xB4]
CMP             R1, #5
STR             R0, [R4,#0xB8]
ADD             R0, R5, #0x6A0
BCC             loc_270B70
NOP
BL              sub_2FE484
ADD             R1, R1, R1,LSL#1
ADD             R8, SP, #0x48+var_44
ADD             R6, R0, R1,LSL#2
LDR             R0, [R4]
ADD             R1, SP, #0x48+var_44
LDR             R0, [R0,#0x580]
LDR             R2, [R0],#4
STR             R0, [SP,#0x48+var_44]
STR             R2, [SP,#0x48+var_48]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x48+var_40]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x48+var_48]
LDR             R1, [SP,#0x48+var_40]
ADD             R0, R0, #0x400
CMP             R1, R8
VLDR            S17, [R0,#0x310]
BNE             loc_270BD4
LDR             R0, [SP,#0x48+var_48]
CMP             R0, #0
BEQ             loc_270BD4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
VLDR            S0, =57.296
LDRD            R0, R1, [SP,#0x48+var_44]
VMUL.F32        S0, S17, S0
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, R5
BL              sub_5CC9E4
VMUL.F32        S0, S0, S16
VMUL.F32        S0, S0, S19
BL              sub_464380
VMOV.F32        S1, S0
VLDR            S2, [R4,#0xBC]
VLDR            S0, [R4,#0xB4]
VMLA.F32        S0, S1, S2
VSTR            S0, [R4,#0xB4]
VMUL.F32        S0, S0, S19
BL              sub_464380
LDR             R0, [R4]
VCMPE.F32       S0, S18
ADD             R1, SP, #0x48+var_44
LDR             R0, [R0,#0x580]
VMRS            APSR_nzcv, FPSCR
VLDR            S17, [R6,#8]
LDR             R2, [R0],#4
VLDR            S1, [R6]
STR             R0, [SP,#0x48+var_44]
STR             R2, [SP,#0x48+var_48]
LDR             R2, [R0,#4]
VNEGCC.F32      S0, S0
STR             R2, [SP,#0x48+var_40]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x48+var_48]
VMLA.F32        S17, S0, S1
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x314]
LDR             R0, [SP,#0x48+var_40]
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
MOVCC           R7, #1
MOVCS           R7, #0
CMP             R0, R8
BNE             loc_270C98
LDR             R0, [SP,#0x48+var_48]
CMP             R0, #0
BEQ             loc_270C98
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x48+var_44]
CMP             R7, #0
VNEGNE.F32      S17, S17
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R0, R4, #0x10
BL              sub_5A18EC
VSTR            S17, [R4,#0x1C]
VSTR            S17, [R4,#0x14]
VLDR            S0, [R4,#0xB8]
VMUL.F32        S0, S0, S19
BL              sub_464380
LDR             R0, [R4]
VCMPE.F32       S0, S18
ADD             R1, SP, #0x48+var_38
LDR             R0, [R0,#0x580]
VMRS            APSR_nzcv, FPSCR
VLDR            S19, [R6,#8]
LDR             R2, [R0],#4
VLDR            S1, [R6]
STR             R0, [SP,#0x48+var_38]
STR             R2, [SP,#0x48+var_3C]
LDR             R2, [R0,#4]
VNEGCC.F32      S0, S0
STR             R2, [SP,#0x48+var_34]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x48+var_3C]
VMLA.F32        S19, S0, S1
LDR             R1, [SP,#0x48+var_34]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x314]
ADD             R0, SP, #0x48+var_38
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
MOVCC           R6, #1
MOVCS           R6, #0
CMP             R1, R0
BNE             loc_270D4C
LDR             R0, [SP,#0x48+var_3C]
CMP             R0, #0
BEQ             loc_270D4C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
CMP             R6, #0
VNEGNE.F32      S19, S19
LDRD            R0, R1, [SP,#0x48+var_38]
STR             R1, [R0,#4]
VSUB.F32        S0, S17, S19
STR             R0, [R1]
VSTR            S0, [R4,#0x110]
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S0, S0
VSTR            S0, [R4,#0x110]
ADD             R0, R4, #0x14
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
STRBCC          R9, [R4,#4]
STRBCS          R10, [R4,#4]
LDRB            R0, [R4,#0xAE]
CMP             R0, #0
BEQ             loc_270DB0
ADD             R0, R4, #0x10
BL              sub_5F1964
CMP             R0, #0
STRBEQ          R10, [R4,#0xAD]
STRBEQ          R9, [R4,#0xAE]
LDR             R0, [R4]
LDR             R3, =0x2AAAAAAB
ADD             R0, R0, #0x580
LDM             R0, {R0,R1}
SUB             R0, R1, R0
SMULL           R1, R0, R3, R0
MOV             R1, R0,ASR#1
SUB             R1, R1, R0,ASR#31
LDR             R0, =dword_6CDFC0
UXTH            R1, R1
CMP             R1, #3
VSTRCC          S18, [R0,#(flt_6CDFC4 - 0x6CDFC0)]
BCC             loc_270E68
VLDR            S0, [R4,#0x14]
VLDR            S1, [R4,#0xE0]
SUB             R1, R1, #1
VMUL.F32        S2, S0, S1
VMOV            S0, R1
VCVT.F32.U32    S0, S0
VDIV.F32        S1, S2, S0
VSTR            S1, [R0,#(flt_6CDFC4 - 0x6CDFC0)]
B               loc_270E20
DCD off_6CDF98
DCFS 0.0
DCFS 40.744
DCFS 57.296
DCD 0x2AAAAAAB
DCD dword_6CDFC0
LDR             R2, [R4]
VMOV            S0, R1
VLDR            S3, [R4,#0x7C]
ADD             R2, R2, #0x580
LDM             R2, {R2,R12}
VCVT.F32.U32    S0, S0
SUB             R2, R12, R2
SMULL           R3, R2, R3, R2
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
SUB             R1, R2, #2
VDIV.F32        S2, S3, S0
UXTH            R1, R1
ADD             R1, R5, R1,LSL#2
VLDR            S0, [R1,#0x3A8]
VMUL.F32        S0, S0, S1
VADD.F32        S0, S2, S0
VSTR            S0, [R0,#(flt_6CDFC4 - 0x6CDFC0)]
LDR             R1, [R4,#0x48]
STR             R1, [R0]
LDR             R0, [R4,#0xC]
TST             R0, #1
LDREQ           R1, [R4,#8]
ADD             R0, R4, R0,ASR#1
BEQ             loc_270E90
LDR             R1, [R0]
LDR             R2, [R4,#8]
LDR             R1, [R1,R2]
ADD             SP, SP, #0x18
VMOV.F32        S0, S16
VPOP            {D8-D9}
POP             {R4-R10,LR}
BX              R1
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R10,PC}
