PUSH            {R4-R7,LR}
MOV             R4, R0
VPUSH           {D8-D10}
VMOV.F32        S16, S0
SUB             SP, SP, #0x3C
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0x6C ; 'l'
BL              sub_5A2484
ADD             R1, R4, #0x580
LDM             R1, {R0,R1}
CMP             R0, R1
BEQ             loc_272354
LDR             R2, [R4,#0x6C8]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x2C8
CMP             R2, #0
BEQ             loc_271FAC
ADD             R0, R0, #4
STR             R0, [SP,#0x68+var_58]
STR             R2, [SP,#0x68+var_5C]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x68+var_58
STR             R2, [SP,#0x68+var_54]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x68+var_5C]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, [SP,#0x68+var_54]
ADD             R0, SP, #0x68+var_58
CMP             R1, R0
BNE             loc_271FA0
LDR             R0, [SP,#0x68+var_5C]
CMP             R0, #0
BEQ             loc_271FA0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x68+var_58]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R0, R4, #0x580
LDM             R0, {R0,R1}
CMP             R0, R1
BEQ             loc_272354
VMOV.F32        S0, S16
ADD             R0, R4, #0x5B0
BL              sub_2709E4
MOV             R2, #0
MOV             R3, #0x3F800000
STR             R2, [R4,#0x38]
STR             R3, [R4,#0x34]
STR             R2, [R4,#0x3C]
LDR             R12, [R4,#0x598]
ADD             R0, R4, #0x34 ; '4'
VMOV.F32        S0, S16
STR             R12, [R4,#0x40]
STRD            R2, R3, [R0,#0x10]
STR             R2, [R4,#0x4C]
LDR             R12, [R4,#0x59C]
STR             R2, [R4,#0x54]
VLDR            S19, =0.0
STR             R12, [R4,#0x50]
STRD            R2, R3, [R0,#0x24]
LDR             R1, [R4,#0x5A0]
VLDR            S18, =1.0
STR             R1, [R0,#0x2C]
MOV             R0, R4
BL              sub_2735B8
LDR             R0, [R4,#0x580]
ADD             R1, SP, #0x68+var_64
ADD             R5, SP, #0x68+var_64
MOV             R6, #0
LDR             R2, [R0],#4
STR             R0, [SP,#0x68+var_64]
STR             R2, [SP,#0x68+var_68]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x68+var_60]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x68+var_68]
LDR             R1, [SP,#0x68+var_60]
ADD             R0, R0, #0x400
VLDR            S16, [R0,#0x310]
VCMPE.F32       S19, S16
VMRS            APSR_nzcv, FPSCR
VNEGGT.F32      S16, S16
CMP             R1, R5
BNE             loc_272084
LDR             R0, [SP,#0x68+var_68]
CMP             R0, #0
BEQ             loc_272084
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x68+var_64]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x580]
ADD             R1, SP, #0x68+var_64
LDR             R2, [R0],#4
STR             R0, [SP,#0x68+var_64]
STR             R2, [SP,#0x68+var_68]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x68+var_60]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x68+var_68]
ADD             R0, R0, #0x400
VLDR            S17, [R0,#0x314]
LDR             R0, [SP,#0x68+var_60]
VCMPE.F32       S17, S19
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S17, S17
CMP             R0, R5
BNE             loc_2720F0
LDR             R0, [SP,#0x68+var_68]
CMP             R0, #0
BEQ             loc_2720F0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x68+var_64]
VLDR            S20, =57.296
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, =off_6CDF98
VMUL.F32        S0, S16, S20
LDR             R0, [R0]
LDR             R7, [R0,#0x124]
MOV             R0, R7
BL              sub_5CC954
STRB            R0, [R4,#0x67]
LDR             R1, [R4,#0x584]
LDR             R2, [R4,#0x580]
LDR             R0, =0x2AAAAAAB
SUB             R1, R1, R2
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, #1
UXTH            R0, R0
CMP             R0, #1
STRBEQ          R6, [R4,#0x68]
BEQ             loc_27215C
VMUL.F32        S0, S17, S20
MOV             R0, R7
BL              sub_5CC954
STRB            R0, [R4,#0x68]
LDR             R0, [R4,#0x584]
ADD             R1, SP, #0x68+var_64
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x68+var_64]
STR             R2, [SP,#0x68+var_68]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x68+var_60]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x68+var_68]
ADD             R1, R4, #0xC8
BL              sub_5CCFE8
LDR             R0, [SP,#0x68+var_60]
CMP             R0, R5
BNE             loc_2721B4
LDR             R0, [SP,#0x68+var_68]
CMP             R0, #0
BEQ             loc_2721B4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x68+var_64]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x580]
ADD             R1, SP, #0x68+var_64
LDR             R2, [R0],#4
STR             R0, [SP,#0x68+var_64]
STR             R2, [SP,#0x68+var_68]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x68+var_60]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R3, [SP,#0x68+var_68]
ADD             R1, SP, #0x68+var_5C
MOV             R0, R3
BL              sub_5CCFE8
VLDR            S1, [R4,#0xC8]
VLDR            S0, [SP,#0x68+var_5C]
ADD             R6, R3, #0x400
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_5C]
VLDR            S2, [R4,#0xD0]
VLDR            S1, [SP,#0x68+var_54]
VMUL.F32        S0, S0, S0
VSUB.F32        S2, S1, S2
VSTR            S2, [SP,#0x68+var_54]
VLDR            S1, [SP,#0x68+var_58]
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VSQRT.F32       S2, S0
VSTR            S2, [R6,#0x30C]
VCMP.F32        S2, S19
VMRS            APSR_nzcv, FPSCR
VSTREQ          S19, [R6,#0x310]
BEQ             loc_27224C
VDIV.F32        S0, S1, S2
BL              sub_5F5B2C
VSTR            S0, [R6,#0x310]
LDR             R0, [SP,#0x68+var_60]
CMP             R0, R5
BNE             loc_272270
LDR             R0, [SP,#0x68+var_68]
CMP             R0, #0
BEQ             loc_272270
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x68+var_64]
STR             R1, [R0,#4]
STR             R0, [R1]
LDRB            R0, [R4,#0x4C8]
CMP             R0, #0
BEQ             loc_272354
ADD             R2, SP, #0x68+var_5C
ADD             R1, SP, #0x68+var_50
MOV             R0, R4
BL              sub_5CC72C
VLDR            S0, [SP,#0x68+var_5C]
VLDR            S1, [SP,#0x68+var_50]
ADD             R5, R7, #0x400
ADD             R1, SP, #0x68+var_44
VSUB.F32        S1, S0, S1
VLDR            S2, [R5,#0x288]
ADD             R0, R4, #0xD4
VDIV.F32        S0, S1, S2
VSTR            S0, [SP,#0x68+var_44]
VSTR            S18, [SP,#0x68+var_40]
VSTR            S18, [SP,#0x68+var_3C]
BL              sub_14EA04
VLDR            S0, [SP,#0x68+var_50]
VLDR            S5, [SP,#0x68+var_5C]
VLDR            S2, [SP,#0x68+var_4C]
VLDR            S4, [SP,#0x68+var_58]
VLDR            S1, [SP,#0x68+var_48]
VLDR            S3, [SP,#0x68+var_54]
VADD.F32        S0, S0, S5
VADD.F32        S2, S2, S4
VADD.F32        S1, S1, S3
ADD             R0, R4, #0x400
ADD             R0, R0, #0x198
ADD             R3, SP, #0x68+var_34
VSTR            S0, [SP,#0x68+var_38]
VSTR            S2, [SP,#0x68+var_34]
VSTR            S1, [SP,#0x68+var_30]
VLDR            S1, =0.5
LDM             R0, {R0-R2}
VMUL.F32        S2, S0, S1
VMOV            S3, R0
STM             R3, {R1,R2}
VMOV            S1, R2
VLDR            S4, [R5,#0x264]
VMOV            S0, R1
ADD             R1, SP, #0x68+var_38
ADD             R0, R4, #0xD4
VADD.F32        S2, S2, S3
VADD.F32        S2, S2, S4
VSTR            S2, [SP,#0x68+var_38]
VLDR            S2, [R5,#0x268]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x68+var_30]
VLDR            S1, [R5,#0x274]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_34]
BL              sub_14E984
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D10}
POP             {R4-R7,PC}
