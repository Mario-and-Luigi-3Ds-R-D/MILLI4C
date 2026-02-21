PUSH            {R4,R5,LR}
MOV             R2, R0
MOV             R4, R1
VPUSH           {D8-D11}
SUB             SP, SP, #0x1C
LDRB            R0, [R0,#0xDC]
CMP             R0, #0
BEQ             loc_1C3AAC
LDRB            R0, [R4,#0x555]
CMP             R0, #0
BNE             loc_1C3AAC
LDR             R5, =off_6CDD80
VLDR            S16, =0.0
LDR             R1, [R5]
LDR             R0, [R1,#8]
LDR             R0, [R0,#0x15C]
VMOV            S19, R0
STR             R0, [SP,#0x48+var_48]
LDR             R0, [R2,#0xAC]
VLDR            S1, [R4,#0x70]
VLDR            S2, [R4,#0x78]
VLDR            S3, [R0,#0x24]
VLDR            S0, [R0,#0x2C]
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S2, S0
VSTR            S1, [SP,#0x48+var_44]
VMUL.F32        S1, S1, S1
VSTR            S0, [SP,#0x48+var_3C]
VSTR            S16, [SP,#0x48+var_40]
LDR             R0, [R1,#8]
LDR             R1, [R0,#0xA0]
VMLA.F32        S1, S16, S16
STR             R1, [SP,#0x48+var_48]
VMLA.F32        S1, S0, S0
VMOV            S0, R1
VADD.F32        S0, S0, S19
VSQRT.F32       S17, S1
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_1C3ABC
ADD             SP, SP, #0x1C
MOV             R0, #0
VPOP            {D8-D11}
POP             {R4,R5,PC}
LDR             R0, [R0,#0x158]
VMOV.F32        S22, S16
VMOV            S20, R0
STR             R0, [SP,#0x48+var_48]
LDR             R0, [R2,#0xAC]
VLDR            S3, [R4,#0x70]
VLDR            S1, [R4,#0x78]
VLDR            S0, [R0,#0x2C]
VLDR            S2, [R0,#0x24]
LDR             R0, =dword_6E1330
VSUB.F32        S18, S0, S1
VSUB.F32        S21, S2, S3
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1C3B24
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1C3B24
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
VMUL.F32        S0, S21, S21
VLDR            S23, =1.0
LDR             R0, =flt_711FE4
VMLA.F32        S0, S22, S22
VMLA.F32        S0, S18, S18
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_1C3B54
VLDR            S3, [R0]
VLDR            S2, [R0,#(flt_711FE8 - 0x711FE4)]
VLDR            S1, [R0,#(flt_711FEC - 0x711FE4)]
B               loc_1C3B68
VSQRT.F32       S1, S0
VDIV.F32        S0, S23, S1
VMUL.F32        S3, S21, S0
VMUL.F32        S2, S22, S0
VMUL.F32        S1, S18, S0
LDR             R0, [R5]
ADD             R2, SP, #0x48+var_38
MOV             R3, #1
LDR             R1, [R0,#8]
LDR             R1, [R1,#0xA0]
VMOV            S0, R1
STR             R1, [SP,#0x48+var_48]
ADD             R1, R4, #0x74 ; 't'
LDR             R0, [R0,#0xC]
VLDM            R1, {S4-S5}
VMUL.F32        S3, S3, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VLDR            S0, [R4,#0x70]
ADD             R0, R0, #0xC
LDR             R1, =off_6CE970
LDR             R12, [R1]
VADD.F32        S0, S0, S3
VADD.F32        S1, S5, S1
VADD.F32        S2, S4, S2
VLDR            S3, [R0]
VLDR            S4, [R0,#8]
VLDR            S5, [R0,#4]
ADD             R1, SP, #0x48+var_34
MOV             R0, #0
VADD.F32        S3, S0, S3
VADD.F32        S1, S1, S4
VADD.F32        S0, S2, S5
VSTR            S3, [SP,#0x48+var_38]
VSTM            R1, {S0-S1}
STR             R0, [SP,#0x48+var_48]
LDR             R1, =0x16B
MOV             R0, R12
BL              sub_52AEA8
VCMPE.F32       S17, S19
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S17, S19
BGT             loc_1C3C10
VMOV.F32        S0, S20
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S17, S20
LDR             R0, [R5]
VSUB.F32        S1, S19, S20
VLDR            S19, =-1.0
LDR             R1, [R0,#8]
VSUB.F32        S2, S17, S20
LDR             R2, [R1,#0x150]
STR             R2, [SP,#0x48+var_48]
LDR             R1, [R1,#0x154]
VMOV            S18, R2
VDIV.F32        S0, S2, S1
VMOV            S1, R1
STR             R1, [SP,#0x48+var_48]
VSUB.F32        S1, S1, S18
VMLA.F32        S18, S1, S0
VDIV.F32        S0, S23, S17
VLDR            S1, [SP,#0x48+var_44]
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x48+var_44]
VLDR            S2, [SP,#0x48+var_40]
VMUL.F32        S1, S16, S1
VMUL.F32        S2, S2, S0
VSTR            S2, [SP,#0x48+var_40]
VLDR            S3, [SP,#0x48+var_3C]
VMLA.F32        S1, S16, S2
VMUL.F32        S3, S3, S0
VLDR            S0, =0.017453
VSTR            S3, [SP,#0x48+var_3C]
LDR             R0, [R0,#8]
VMLA.F32        S1, S19, S3
LDR             R0, [R0,#0x160]
VMOV            S4, R0
STR             R0, [SP,#0x48+var_48]
VCMPE.F32       S1, S23
VMUL.F32        S17, S4, S0
VMOV.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S23
BGT             loc_1C3CB4
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S0, S1
NOP
BL              sub_5F5B2C
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S0, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLE             loc_1C3D1C
VLDR            S0, [SP,#0x48+var_44]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VLDR            S0, =40.744
VNEGCS.F32      S17, S17
VMUL.F32        S20, S17, S0
VMOV.F32        S0, S20
BL              sub_464318
VMOV.F32        S17, S0
VMOV.F32        S0, S20
BL              sub_464380
VMUL.F32        S2, S16, S17
VMUL.F32        S1, S17, S19
VMLA.F32        S2, S0, S19
VMLS.F32        S1, S16, S0
VSTR            S2, [SP,#0x48+var_44]
VSTR            S16, [SP,#0x48+var_40]
VSTR            S1, [SP,#0x48+var_3C]
VMOV.F32        S0, S18
ADD             R1, SP, #0x48+var_44
MOV             R0, R4
BL              sub_249EAC
LDR             R0, [R5]
LDR             R1, [R0,#0xEF8]
CMP             R1, #0
BLNE            sub_5872AC
ADD             SP, SP, #0x1C
MOV             R0, #1
VPOP            {D8-D11}
POP             {R4,R5,PC}
