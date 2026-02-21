PUSH            {R4-R7,LR}
MOV             R5, R0
MOV             R4, R1
VPUSH           {D8-D11}
SUB             SP, SP, #0x1C
LDRB            R0, [R0,#0xD4]
CMP             R0, #0
BEQ             loc_28F4B4
LDRB            R0, [R4,#0x454]
ADD             R6, R4, #0x400
CMP             R0, #0
BNE             loc_28F4B4
MOV             R0, R1
BL              sub_5CD934
CMP             R0, #0
BEQ             loc_28F4B4
LDR             R0, [R5,#0x4D8]
VLDR            S1, [R4,#0x24]
VLDR            S0, [R4,#0x2C]
VLDR            S22, =0.0
VLDR            S16, [R0,#0x30]
LDR             R0, [R5,#0xC]
ADD             R7, R5, #0x400
ADD             R7, R7, #0xD8
VLDR            S3, [R0,#0x24]
VLDR            S2, [R0,#0x2C]
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S0, S2
VSTR            S1, [SP,#0x50+var_4C]
VMUL.F32        S1, S1, S1
VSTR            S0, [SP,#0x50+var_44]
VSTR            S22, [SP,#0x50+var_48]
VMLA.F32        S1, S22, S22
VMLA.F32        S1, S0, S0
VLDR            S0, [R6,#0x28]
VADD.F32        S0, S0, S16
VSQRT.F32       S18, S1
VCMPE.F32       S18, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_28F4C4
ADD             SP, SP, #0x1C
MOV             R0, #0
VPOP            {D8-D11}
POP             {R4-R7,PC}
LDR             R0, [R5,#0x4D8]
VLDR            S3, [R4,#0x24]
VLDR            S1, [R4,#0x2C]
VLDR            S17, [R0,#0x2C]
LDR             R0, [R5,#0xC]
VLDR            S0, [R0,#0x2C]
VLDR            S2, [R0,#0x24]
LDR             R0, =dword_6E1330
VSUB.F32        S19, S0, S1
VSUB.F32        S20, S2, S3
LDR             R0, [R0]
TST             R0, #1
BNE             loc_28F528
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_28F528
VMOV.F32        S0, S22
LDR             R0, =flt_711FE4
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
VMUL.F32        S0, S20, S20
VMOV.F32        S2, S22
VLDR            S23, =1.0
LDR             R0, =flt_711FE4
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S19, S19
VCMP.F32        S0, S22
VMRS            APSR_nzcv, FPSCR
VLDMEQ          R0, {S1-S3}
BEQ             loc_28F564
VSQRT.F32       S1, S0
VDIV.F32        S0, S23, S1
VMUL.F32        S1, S20, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S19, S0
VLDR            S0, [R6,#0x28]
ADD             R0, R4, #0x24 ; '$'
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VLDM            R0, {S3-S5}
LDR             R0, =off_6CE970
LDR             R6, [R0]
VADD.F32        S19, S3, S1
VADD.F32        S20, S4, S2
VADD.F32        S21, S5, S0
MOV             R0, R4
BL              sub_5CD8E4
VLDM            R0, {S0-S2}
ADD             R2, SP, #0x50+var_40
MOV             R0, #0
LDR             R1, =0x16B
VADD.F32        S0, S19, S0
VADD.F32        S2, S21, S2
VADD.F32        S1, S20, S1
MOV             R3, #1
VSTM            R2, {S0-S2}
STR             R0, [SP,#0x50+var_50]
MOV             R0, R6
BL              sub_52AEA8
VCMPE.F32       S18, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S18, S16
BGT             loc_28F5E8
VMOV.F32        S0, S17
VCMPE.F32       S18, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S18, S17
VSUB.F32        S1, S16, S17
LDR             R0, [R5,#0x4D8]
VSUB.F32        S2, S18, S17
VLDR            S16, [R0,#0x24]
VDIV.F32        S0, S2, S1
VLDR            S1, [R0,#0x28]
VSUB.F32        S1, S1, S16
VMLA.F32        S16, S1, S0
VDIV.F32        S0, S23, S18
VLDR            S1, [SP,#0x50+var_4C]
VLDR            S18, =-1.0
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x50+var_4C]
VLDR            S2, [SP,#0x50+var_48]
VMUL.F32        S1, S22, S1
VMUL.F32        S2, S2, S0
VSTR            S2, [SP,#0x50+var_48]
VLDR            S3, [SP,#0x50+var_44]
VMLA.F32        S1, S22, S2
VMUL.F32        S3, S3, S0
VLDR            S0, =0.017453
VSTR            S3, [SP,#0x50+var_44]
LDR             R0, [R7]
VMLA.F32        S1, S18, S3
VLDR            S4, [R0,#0x34]
VMUL.F32        S17, S4, S0
VMOV.F32        S0, S22
VCMPE.F32       S1, S23
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S23
BGT             loc_28F670
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S0, S1
NOP
BL              sub_5F5B2C
VCMPE.F32       S0, S22
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S0, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLE             loc_28F6D8
VLDR            S0, [SP,#0x50+var_4C]
VCMPE.F32       S0, S22
VMRS            APSR_nzcv, FPSCR
VLDR            S0, =40.744
VNEGCS.F32      S17, S17
VMUL.F32        S19, S17, S0
VMOV.F32        S0, S19
BL              sub_464318
VMOV.F32        S17, S0
VMOV.F32        S0, S19
BL              sub_464380
VMUL.F32        S2, S22, S17
VMUL.F32        S1, S17, S18
VMLA.F32        S2, S0, S18
VMLS.F32        S1, S22, S0
VSTR            S2, [SP,#0x50+var_4C]
VSTR            S22, [SP,#0x50+var_48]
VSTR            S1, [SP,#0x50+var_44]
VMOV.F32        S0, S16
LDRSB           R2, [R5,#0xA2]
ADD             R1, SP, #0x50+var_4C
MOV             R0, R4
BL              sub_283DF4
ADD             SP, SP, #0x1C
MOV             R0, #1
VPOP            {D8-D11}
POP             {R4-R7,PC}
