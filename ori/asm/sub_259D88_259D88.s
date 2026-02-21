PUSH            {R4-R7,LR}
MOV             R4, R0
ADD             R0, R0, #0x800
ADD             R0, R0, #0x2F8
VPUSH           {D8-D9}
VMOV.F32        S17, S0
SUB             SP, SP, #0x4C
MOV             R6, R0
BL              sub_5A2484
LDR             R0, [R4,#0xB5C]
ADD             R5, R4, #4
VLDR            S1, [R0,#8]
LDR             R0, [R0]
VLDR            S2, [R0,#0x1D4]
VLDR            S0, [R0,#0x1D0]
ADD             R0, R4, #0x38 ; '8'
VSUB.F32        S2, S2, S0
VSUB.F32        S0, S1, S0
VDIV.F32        S18, S0, S2
VMOV.F32        S0, S17
BL              sub_5A176C
VMOV.F32        S0, S17
MOV             R0, R5
BL              sub_5A176C
LDRB            R0, [R5,#0x68]
LDR             R7, =off_6CE098
CMP             R0, #1
BEQ             loc_259E04
CMP             R0, #3
BNE             loc_259E44
B               loc_259E30
LDR             R0, [R7]
LDR             R0, [R0,#0x8C]
VLDR            S16, [R0,#0x264]
VLDR            S0, [R0,#0x268]
ADD             R0, R5, #0x34 ; '4'
VSUB.F32        S0, S0, S16
VMLA.F32        S16, S0, S18
BL              sub_5A18EC
VSTR            S16, [R5,#0x40]
VSTR            S16, [R5,#0x38]
B               loc_259E44
MOV             R0, R5
BL              sub_5F1964
CMP             R0, #0
MOVEQ           R0, #4
STRBEQ          R0, [R5,#0x68]
LDRB            R0, [R4]
VLDR            S16, =0.0
ADD             R5, R4, #0x800
CMP             R0, #0xD; switch 13 cases
ADD             R5, R5, #0x274
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_259E58; jumptable 00259E58 default case, cases 0,8
DCD def_259E58; jump table for switch statement
LDR             R0, [R4,#0xA74]; jumptable 00259E58 case 9
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, R4, #0x800
ADD             R1, R1, #0x2FC
BLX             R2
MOV             R0, R6
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_259E58; jumptable 00259E58 default case, cases 0,8
LDR             R0, [R4,#0xA74]
LDR             R1, =0x11E
BL              sub_24D5E8
LDR             R1, [R7]
LDR             R0, [R5]
LDR             R1, [R1,#0x8C]
ADD             R0, R0, #0x39C
LDR             R1, [R1,#0x420]
VSTR            S16, [R0]
STR             R1, [R0,#4]
MOV             R0, #0xA
STRB            R0, [R4]
B               def_259E58; jumptable 00259E58 default case, cases 0,8
LDR             R0, [R4,#0xA74]; jumptable 00259E58 case 10
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, R4, #0x800
ADD             R1, R1, #0x2FC
BLX             R2
LDR             R0, [R5]
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVCC           R0, #0xB
BCS             def_259E58; jumptable 00259E58 default case, cases 0,8
B               loc_259EEC
LDR             R0, [R4,#0xA74]; jumptable 00259E58 case 11
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, R4, #0x800
ADD             R1, R1, #0x2FC
BLX             R2
B               def_259E58; jumptable 00259E58 default case, cases 0,8
VMOV.F32        S0, S17; jumptable 00259E58 case 1
MOV             R0, R4
BL              sub_259350
LDR             R0, [R4,#0xA74]
LDR             R1, [R7]
VLDR            S0, [R0,#0x2C]
LDR             R0, =0x129EC
LDR             R0, [R0,R1]
LDR             R1, [R1,#0x8C]
LDR             R0, [R0]
VLDR            S1, [R1,#0x18C]
VLDR            S2, [R0,#0x90]
VADD.F32        S1, S2, S1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVCC           R1, #2
BCS             def_259E58; jumptable 00259E58 default case, cases 0,8
B               loc_25A02C
VMOV.F32        S0, S17; jumptable 00259E58 case 2
MOV             R0, R4
BL              sub_259350
LDR             R0, [R4,#0xA74]
LDR             R1, [R7]
VLDR            S0, [R0,#0x2C]
LDR             R0, =0x129EC
LDR             R0, [R0,R1]
LDR             R1, [R1,#0x8C]
LDR             R0, [R0]
VLDR            S1, [R1,#0x184]
VLDR            S2, [R0,#0x90]
VADD.F32        S1, S2, S1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVCC           R0, R4
BLCC            sub_258B1C
NOP
NOP
B               def_259E58; jumptable 00259E58 default case, cases 0,8
VMOV.F32        S0, S17; jumptable 00259E58 case 3
MOV             R0, R4
BL              sub_258C58
NOP
NOP
B               def_259E58; jumptable 00259E58 default case, cases 0,8
VMOV.F32        S0, S17; jumptable 00259E58 cases 4-6
MOV             R0, R4
B               loc_25A03C
LDR             R0, [R4,#0xA74]; jumptable 00259E58 case 7
ADD             R0, R0, #0x1800
ADD             R0, R0, #0xD8
LDRB            R0, [R0]
CMP             R0, #2
BNE             def_259E58; jumptable 00259E58 default case, cases 0,8
LDR             R0, [R7]
MOV             R1, #1
STRB            R1, [R0,#0x19]
MOV             R1, #0xC
STRB            R1, [R4]
B               def_259E58; jumptable 00259E58 default case, cases 0,8
VMOV.F32        S0, S17; jumptable 00259E58 case 12
MOV             R0, R4
BL              sub_259350
LDR             R0, [R4,#0xA74]; jumptable 00259E58 default case, cases 0,8
ADD             R1, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x70+var_64]
ADD             R0, SP, #0x70+var_6C
STM             R0, {R1,R2}
ADD             R1, SP, #0x70+var_6C
VSTR            S16, [SP,#0x70+var_68]
ADD             R0, R4, #0x84
BL              sub_14E984
LDR             R0, [R7]
ADD             R1, SP, #0x70+var_54
LDR             R0, [R0,#0x8C]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0xEC]
VLDR            S2, [R0,#0xF0]
LDR             R0, [R4,#0xB5C]
VSUB.F32        S2, S2, S0
VLDR            S3, [R0,#8]
LDR             R0, [R0]
VLDR            S1, [R0,#0x1D0]
VLDR            S4, [R0,#0x1D4]
ADD             R0, R4, #0x84
VSUB.F32        S3, S3, S1
VSUB.F32        S4, S4, S1
VDIV.F32        S1, S3, S4
VMLA.F32        S0, S2, S1
VSTR            S0, [SP,#0x70+var_54]
VSTR            S0, [SP,#0x70+var_50]
VSTR            S0, [SP,#0x70+var_4C]
BL              sub_14EA04
LDR             R0, [R7]
VLDR            S17, =1.0
LDR             R1, [R0,#0x8C]
LDR             R0, [R4,#0xB5C]
VLDR            S1, [R0,#8]
LDR             R0, [R0]
VLDR            S0, [R0,#0x1D0]
VLDR            S3, [R0,#0x1D4]
ADD             R0, R1, #0x400
VSUB.F32        S2, S1, S0
VSUB.F32        S0, S3, S0
LDR             R1, [R5]
ADD             R1, R1, #0x1800
VDIV.F32        S1, S2, S0
VLDR            S0, [R0,#0xDC]
VLDR            S2, [R0,#0xE0]
VSUB.F32        S2, S2, S0
VMLA.F32        S0, S2, S1
VSTR            S0, [R1,#0x130]
VSTR            S0, [R1,#0x134]
VSTR            S0, [R1,#0x138]
LDR             R1, [R4,#0xA74]
LDRD            R2, R3, [R1,#0x24]
LDR             R1, [R1,#0x2C]
STR             R1, [SP,#0x70+var_4C]
STRD            R2, R3, [SP,#0x70+var_54]
LDR             R1, [R4,#0xB5C]
VLDR            S1, [SP,#0x70+var_4C]
VLDR            S0, [R1,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x70+var_4C]
LDR             R1, [R4,#0xB5C]
VLDR            S0, =0.017453
LDR             R1, [R1,#8]
STR             R1, [SP,#0x70+var_50]
ADD             R1, SP, #0x70+var_38
VSTM            R1, {S16-S17}
ADD             R1, SP, #0x70+var_48
VSTR            S16, [SP,#0x70+var_30]
VSTR            S16, [SP,#0x70+var_2C]
VSTM            R1, {S16-S17}
VSTR            S16, [SP,#0x70+var_40]
VLDR            S1, [R0,#0xE8]
VMUL.F32        S0, S1, S0
VLDR            S1, =40.744
VMUL.F32        S19, S0, S1
VMOV.F32        S0, S19
BL              sub_464318
VMOV.F32        S18, S0
VMOV.F32        S0, S19
BL              sub_464380
VMUL.F32        S2, S17, S0
VMUL.F32        S1, S17, S18
ADD             R1, SP, #0x70+var_44
ADD             R0, SP, #0x70+var_64
ADD             R3, SP, #0x70+var_3C
ADD             R2, SP, #0x70+var_38
VMLA.F32        S2, S16, S18
VMLS.F32        S1, S16, S0
VSTM            R1, {S1-S2}
ADD             R1, SP, #0x70+var_48
STR             R0, [SP,#0x70+var_70]
ADD             R0, SP, #0x70+var_54
BL              sub_251670
LDR             R0, [R5]
ADD             R6, SP, #0x70+var_64
LDM             R6, {R1-R3}
ADD             R0, R0, #0x1800
ADD             R0, R0, #0x124
STM             R0, {R1-R3}
LDRB            R0, [R4,#0xAF5]
CMP             R0, #0
B               loc_25A200
DCD off_6CE098
DCFS 0.0
DCD 0x11E
DCD 0x129EC
DCFS 1.0
DCFS 0.017453
DCFS 40.744
LDR             R0, [R7]
LDR             R1, =0x129F0
LDR             R1, [R1,R0]
LDR             R0, [R0,#0x8C]
LDR             R1, [R1,#-0xC]
VLDR            S1, [R0,#0x194]
VLDRNE          S2, [R0,#0x1A0]
VLDREQ          S2, [R0,#0x1A4]
VLDR            S0, [R1,#0x90]
LDR             R0, [R4,#0xA74]
VADD.F32        S0, S0, S1
VLDR            S1, [R0,#0x2C]
VADD.F32        S0, S0, S2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGT             loc_25A24C
LDRB            R1, [R4,#0x6C]
CMP             R1, #4
BNE             loc_25A254
MOV             R1, #0xC
STRB            R1, [R4]
ADD             R1, R0, #0x24 ; '$'
ADD             R0, R4, #0x400
ADD             R0, R0, #0x27C
MOV             R4, R0
BL              sub_14E984
LDR             R0, [R5]
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8-D9}
ADD             R1, R0, #0x5C ; '\'
MOV             R0, R4
POP             {R4-R7,LR}
B               sub_14EA04
