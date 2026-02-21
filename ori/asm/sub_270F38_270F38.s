PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R9, #1
LDR             R1, =off_6CDF98
VPUSH           {D8-D9}
VMOV.F32        S17, S0
SUB             SP, SP, #0x30
LDR             R1, [R1]
LDRB            R0, [R0,#0x114]
VLDR            S18, =0.0
LDR             R5, [R1,#0x124]
CMP             R0, #0
BEQ             loc_270FB4
CMP             R0, #1
BEQ             loc_2713D0
CMP             R0, #2
BEQ             loc_271414
CMP             R0, #3
BNE             loc_2713C4
VLDR            S0, [R4,#0xD0]
LDR             R0, =off_63EF64
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R4,#0x7C]
VLDR            S1, [R4,#0x110]
BCS             loc_271430
VADD.F32        S16, S1, S0
VCMPE.F32       S16, S18
VMRS            APSR_nzcv, FPSCR
BLT             loc_271458
B               loc_271440
ADD             R0, R4, #0xDC
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             loc_2713C4
LDR             R0, [R4]
ADD             R1, SP, #0x60+var_54
ADD             R8, SP, #0x60+var_54
LDR             R0, [R0,#0x580]
LDR             R2, [R0],#4
STR             R0, [SP,#0x60+var_54]
STR             R2, [SP,#0x60+var_58]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x60+var_50]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x60+var_58]
LDR             R1, [SP,#0x60+var_50]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x314]
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
MOVLS           R6, #1
MOVHI           R6, #0
CMP             R1, R8
BNE             loc_271034
LDR             R0, [SP,#0x60+var_58]
CMP             R0, #0
BEQ             loc_271034
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x60+var_54]
CMP             R6, #0
VLDRNE          S1, =-0.017453
VLDREQ          S1, =0.017453
STR             R1, [R0,#4]
STR             R0, [R1]
VLDR            S0, [R5,#0x270]
ADD             R1, SP, #0x60+var_54
MOVNE           R7, #0
VMUL.F32        S0, S0, S1
MOVEQ           R7, #1
VSTR            S0, [R4,#0xD0]
LDR             R0, [R4]
LDR             R0, [R0,#0x580]
LDR             R2, [R0],#4
STR             R0, [SP,#0x60+var_54]
STR             R2, [SP,#0x60+var_58]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x60+var_50]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x60+var_50]
CMP             R0, R8
BNE             loc_2710AC
LDR             R0, [SP,#0x60+var_58]
CMP             R0, #0
BEQ             loc_2710AC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x60+var_54]
STR             R1, [R0,#4]
STR             R0, [R1]
VLDR            S0, [R4,#0xC4]
MOV             R1, #0
MOV             R6, R1
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BGE             loc_271114
LDR             R0, [R4]
ADD             R2, SP, #0x60+var_54
MOV             R6, #1
LDR             R0, [R0,#0x580]
LDR             R3, [R0],#4
STR             R0, [SP,#0x60+var_54]
STR             R3, [SP,#0x60+var_58]
LDR             R3, [R0,#4]
STR             R3, [SP,#0x60+var_50]
STR             R2, [R3]
STR             R2, [R0,#4]
LDR             R0, [SP,#0x60+var_58]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x314]
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BLT             loc_271170
VLDR            S0, [R4,#0xC4]
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BLS             loc_271168
LDR             R0, [R4]
ADD             R1, SP, #0x60+var_3C
LDR             R0, [R0,#0x580]
LDR             R2, [R0],#4
STR             R0, [SP,#0x60+var_3C]
STR             R2, [SP,#0x60+var_40]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x60+var_38]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x60+var_40]
MOV             R1, #1
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x314]
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BHI             loc_271170
MOV             R10, #1
B               loc_271174
MOV             R10, #0
CMP             R1, #0
BEQ             loc_2711B0
LDR             R1, [SP,#0x60+var_38]
ADD             R0, SP, #0x60+var_3C
CMP             R1, R0
BNE             loc_2711A4
LDR             R0, [SP,#0x60+var_40]
CMP             R0, #0
BEQ             loc_2711A4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x60+var_3C]
STR             R1, [R0,#4]
STR             R0, [R1]
CMP             R6, #0
BEQ             loc_2711E8
LDR             R0, [SP,#0x60+var_50]
CMP             R0, R8
BNE             loc_2711DC
LDR             R0, [SP,#0x60+var_58]
CMP             R0, #0
BEQ             loc_2711DC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x60+var_54]
STR             R1, [R0,#4]
STR             R0, [R1]
CMP             R10, #0
BEQ             loc_2713A8
LDRB            R0, [R4,#4]
CMP             R0, R7
BNE             loc_271208
VLDR            S0, [R4,#0xBC]
VNEG.F32        S0, S0
VSTR            S0, [R4,#0xBC]
VLDR            S0, =64.0
BL              sub_464380
VLDR            S1, [R4,#0xB4]
ADD             R1, SP, #0x60+var_48
ADD             R6, SP, #0x60+var_48
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0xB4]
VSTR            S0, [R4,#0xB8]
LDR             R0, [R4]
LDR             R0, [R0,#0x580]
LDR             R2, [R0],#4
STR             R0, [SP,#0x60+var_48]
STR             R2, [SP,#0x60+var_4C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x60+var_44]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x60+var_4C]
LDR             R1, [SP,#0x60+var_44]
ADD             R0, R0, #0x400
CMP             R1, R6
VLDR            S16, [R0,#0x310]
BNE             loc_27127C
LDR             R0, [SP,#0x60+var_4C]
CMP             R0, #0
BEQ             loc_27127C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
VLDR            S0, =57.296
LDRD            R0, R1, [SP,#0x60+var_48]
VMUL.F32        S0, S16, S0
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, R5
BL              sub_5CC9E4
VMUL.F32        S0, S0, S17
VLDR            S16, =40.744
VMUL.F32        S0, S0, S16
BL              sub_464380
ADD             R0, R4, #0xB8
VLDM            R0, {S1-S2}
VMLS.F32        S1, S0, S2
VSTR            S1, [R4,#0xB8]
VLDR            S0, [R4,#0xB4]
VMUL.F32        S0, S0, S16
BL              sub_464380
VCMPE.F32       S0, S18
LDRB            R0, [R4,#0xAC]
ADD             R1, R5, #0x6A0
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S0, S0
CMP             R0, #5
BCC             loc_2712E4
BL              sub_2FE484
ADD             R0, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#2
VLDR            S16, [R0,#8]
VLDR            S1, [R0]
VMLA.F32        S16, S0, S1
B               loc_27131C
DCD off_6CDF98
DCFS 0.0
DCD off_63EF64
DCFS -0.017453
DCFS 0.017453
DCFS 64.0
DCFS 57.296
DCFS 40.744
LDR             R0, [R4]
ADD             R1, SP, #0x60+var_48
LDR             R0, [R0,#0x580]
LDR             R2, [R0],#4
STR             R0, [SP,#0x60+var_48]
STR             R2, [SP,#0x60+var_4C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x60+var_44]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x60+var_4C]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x314]
LDR             R0, [SP,#0x60+var_44]
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
MOVCC           R5, #1
MOVCS           R5, #0
CMP             R0, R6
BNE             loc_271384
LDR             R0, [SP,#0x60+var_4C]
CMP             R0, #0
BEQ             loc_271384
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x60+var_48]
CMP             R5, #0
VNEGNE.F32      S16, S16
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R0, R4, #0x10
BL              sub_5A18EC
VSTR            S16, [R4,#0x1C]
VSTR            S16, [R4,#0x14]
VLDR            S0, [R4,#0xC0]
VLDR            S1, =0.5
ADD             R0, R4, #0xDC
VMUL.F32        S1, S0, S1
VLDR            S0, =1.0
BL              sub_5A1198
STRB            R9, [R4,#0x114]
ADD             SP, SP, #0x30 ; '0'
VPOP            {D8-D9}
POP             {R4-R10,PC}
ADD             R0, R4, #0xDC
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             loc_2713C4
VLDR            S1, [R5,#0x274]
VLDR            S0, [R4,#0xD0]
ADD             R0, R4, #0x78 ; 'x'
BL              sub_5A14A4
LDR             R1, [R4,#0x20]
MOV             R0, #2
LDR             R1, [R1,#0x10]
STR             R1, [R4,#0xCC]
STRB            R0, [R4,#0x114]
ADD             SP, SP, #0x30 ; '0'
VPOP            {D8-D9}
POP             {R4-R10,PC}
ADD             R0, R4, #0x78 ; 'x'
BL              sub_5F1964
CMP             R0, #0
MOVEQ           R0, #3
STRBEQ          R9, [R4,#0xAD]
BNE             loc_2713C4
B               loc_271404
VSUB.F32        S16, S0, S1
VCMPE.F32       S18, S16
VMRS            APSR_nzcv, FPSCR
BLT             loc_271458
STRB            R9, [R4,#0xAD]
LDRD            R0, R1, [R0]
VMOV.F32        S16, S18
STRD            R0, R1, [R4,#8]
STRB            R9, [R4,#0xAF]
STRB            R9, [R4,#0xD8]
ADD             R0, R4, #0x78 ; 'x'
BL              sub_5A18EC
VSTR            S16, [R4,#0x84]
VSTR            S16, [R4,#0x7C]
ADD             SP, SP, #0x30 ; '0'
VPOP            {D8-D9}
POP             {R4-R10,PC}
