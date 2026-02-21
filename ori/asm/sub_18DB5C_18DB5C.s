PUSH            {R4-R11,LR}
MOV             R4, R0
ADD             R0, R0, #8
VPUSH           {D8-D11}
SUB             SP, SP, #0x11C
ADD             R1, SP, #0x160+var_54
BL              sub_5C7AE8
LDR             R0, =0x14290
ADD             R5, R4, #0x14000
ADD             R2, SP, #0x160+var_54
ADD             R1, SP, #0x160+var_130
LDRSB           R0, [R0,R4]
STR             R0, [SP,#0x160+var_160]
LDRB            R3, [R5,#0x28F]
MOV             R0, R4
BL              sub_2AE650
LDRB            R0, [R5,#0x28F]
LDR             R9, =flt_697140
LDR             R11, =0x47800000
VLDR            S22, =40.744
VLDR            S16, =0.0
VLDR            S21, =65536.0
CMP             R0, #0
ADD             R6, R4, #0x14400
BEQ             loc_18E228
CMP             R0, #1
BEQ             loc_18DBD4
CMP             R0, #2
BNE             loc_18E228
B               loc_18DC88
LDR             R0, [R4]
LDRB            R1, [R5,#0x290]
LDR             R2, [R0,#0x2A4]
MOV             R0, R4
BLX             R2
VLDR            S0, [R0,#0x108]
VLDR            S3, [SP,#0x160+var_130]
ADD             R0, R0, #0x10C
VCMPE.F32       S0, S3
VLDM            R0, {S1-S2}
VMRS            APSR_nzcv, FPSCR
BCC             loc_18DC14
VLDR            S3, [SP,#0x160+var_12C]
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
BLE             loc_18DC24
VSUB.F32        S0, S0, S3
VLDR            S4, [R5,#0x2CC]
VADD.F32        S0, S0, S4
VSTR            S0, [R5,#0x2CC]
VLDR            S0, [SP,#0x160+var_128]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_18DC44
VLDR            S0, [SP,#0x160+var_124]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_18DC54
VSUB.F32        S0, S1, S0
VLDR            S3, [R5,#0x2D0]
VADD.F32        S0, S0, S3
VSTR            S0, [R5,#0x2D0]
VLDR            S0, [SP,#0x160+var_120]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_18DC74
VLDR            S0, [SP,#0x160+var_11C]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_18E228
VSUB.F32        S0, S2, S0
VLDR            S1, [R5,#0x2D4]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x2D4]
B               loc_18E228
LDRB            R1, [R5,#0x290]
CMP             R1, #0xFF
BEQ             loc_18E228
LDR             R0, [R4]
LDR             R2, [R0,#0x2A4]
MOV             R0, R4
BLX             R2
MOV             R8, R0
ADD             R0, R6, #0x224
ADD             R3, R6, #0x230
LDM             R0, {R0-R2}
ADD             R7, R4, #0x10000
VLDR            S17, =6.2832
ADD             R7, R7, #0x4600
STM             R3, {R0-R2}
ADD             R0, R8, #0x108
ADD             R3, R6, #0x224
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R1, R4, #0x14400
ADD             R0, R4, #0x14000
ADD             R1, R1, #0x224
ADD             R0, R0, #0x630
VLDR            S0, [R1]
VLDR            S1, [R0]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_18DD68
VLDR            S0, [R1,#4]
VLDR            S1, [R0,#4]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_18DD68
VLDR            S0, [R1,#8]
VLDR            S1, [R0,#8]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_18DD68
LDRH            R0, [R7,#0x4C]
CMP             R0, #0
BEQ             loc_18E21C
LDRH            R0, [R7,#0x4C]
SUB             R0, R0, #1
MOV             R0, R0,LSL#16
MOVS            R0, R0,LSR#16
STRH            R0, [R7,#0x4C]
BEQ             loc_18E178
VLDR            S0, [R4,#0x48]
VLDR            S1, [R6,#0x23C]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x48]
VLDR            S1, [R6,#0x240]
VLDR            S0, [R4,#0x4C]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x4C]
B               loc_18E188
LDR             R0, [R6,#0x218]
VLDR            S19, [R8,#0x108]
VLDR            S18, [R8,#0x10C]
VLDR            S20, [R8,#0x110]
STR             R0, [R4,#0xC]
VLDR            S1, [R6,#0x250]
VLDR            S0, [R6,#0x254]
ADD             R1, SP, #0x160+var_144
VADD.F32        S1, S18, S1
VADD.F32        S0, S1, S0
VSTR            S0, [R4,#0x10]
LDR             R0, [R6,#0x220]
STR             R0, [R4,#0x14]
ADD             R0, R4, #8
BL              sub_5C7AD0
VLDR            S0, [R6,#0x250]
ADD             R0, SP, #0x160+var_144
VADD.F32        S0, S18, S0
VLDM            R0, {S1-S3}
ADD             R0, SP, #0x160+var_B0
VSUB.F32        S1, S19, S1
VSUB.F32        S2, S0, S2
VSUB.F32        S0, S20, S3
VSTR            S0, [SP,#0x160+var_A8]
VSTM            R0, {S1-S2}
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S20, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
MOV             R10, #0
MOV             R1, #0
MOV             LR, R10
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VMUL.F32        S18, S0, S17
VMOV.F32        S0, S16
VMUL.F32        S1, S18, S22
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S19, S0
VABS.F32        S1, S1
MOVCC           R2, #1
MOVCS           R2, #0
VMOV.F32        S2, S19
VMOV            R0, S1
CMP             R0, R11
BLT             loc_18DE38
VSUB.F32        S1, S1, S21
VMOV            R0, S1
CMP             R0, R11
BGE             loc_18DE28
VMOV            R0, S2
CMP             R0, R11
BLT             loc_18DE54
VSUB.F32        S2, S2, S21
VMOV            R0, S2
CMP             R0, R11
BGE             loc_18DE44
VCVT.U32.F32    S3, S0
CMP             R1, #0
VMOV            R0, S3
VCVT.U32.F32    S3, S1
UXTH            R0, R0
VMOV            R3, S3
VCVT.U32.F32    S3, S2
UXTH            R3, R3
VMOV            S4, R3
AND             R3, R3, #0xFF
ADD             R3, R9, R3,LSL#4
VMOV            R12, S3
VMOV            S3, R0
VCVT.F32.U32    S4, S4
AND             R0, R0, #0xFF
UXTH            R12, R12
VMOV            S5, R12
ADD             R0, R9, R0,LSL#4
VCVT.F32.U32    S3, S3
AND             R12, R12, #0xFF
ADD             R12, R9, R12,LSL#4
VCVT.F32.U32    S5, S5
VSUB.F32        S1, S1, S4
VLDM            R3!, {S4}
VLDM            R3, {S9-S11}
VSUB.F32        S0, S0, S3
VLDM            R0!, {S3}
VLDM            R0, {S6-S8}
VSUB.F32        S2, S2, S5
VMLA.F32        S4, S1, S10
VLDM            R12!, {S5}
VMLA.F32        S9, S1, S11
VLDM            R12, {S12-S14}
VMLA.F32        S3, S0, S7
VMLA.F32        S6, S0, S8
VMLA.F32        S5, S2, S13
VMLA.F32        S12, S2, S14
VNEGNE.F32      S3, S3
CMP             R2, #0
VNEGNE.F32      S4, S4
CMP             R10, #0
VNEGNE.F32      S5, S5
VMUL.F32        S2, S6, S12
VMUL.F32        S0, S3, S12
VMUL.F32        S10, S12, S9
VNEG.F32        S11, S4
VMUL.F32        S8, S3, S5
VMUL.F32        S7, S6, S5
VMUL.F32        S5, S5, S9
VMUL.F32        S3, S3, S9
VMUL.F32        S6, S6, S9
VSTR            S10, [SP,#0x160+var_E0]
VMOV.F32        S1, S8
VSTR            S5, [SP,#0x160+var_D0]
VSTR            S3, [SP,#0x160+var_BC]
VSTR            S6, [SP,#0x160+var_B8]
VMLA.F32        S1, S2, S4
VMLA.F32        S2, S8, S4
VMOV.F32        S8, S7
VNMLS.F32       S8, S0, S4
VNMLS.F32       S0, S7, S4
VSTR            S8, [SP,#0x160+var_DC]
VSTR            S0, [SP,#0x160+var_C8]
VSTR            S1, [SP,#0x160+var_D8]
VSTR            S2, [SP,#0x160+var_CC]
VSTR            S11, [SP,#0x160+var_C0]
B               loc_18DF80
DCD 0x14290
DCFS 40.744
DCD flt_697140
DCFS 0.0
DCD 0x47800000
DCFS 65536.0
DCFS 6.2832
DCFS 0.000015259
ADD             R2, SP, #0x160+var_B0
ADD             R1, SP, #0x160+var_E0
ADD             R0, SP, #0x160+var_FC
STR             LR, [SP,#0x160+var_D4]
STR             LR, [SP,#0x160+var_C4]
STR             LR, [SP,#0x160+var_B4]
BL              sub_1169FC
ADD             R1, SP, #0x160+var_F8
VLDM            R1, {S0-S1}
BL              sub_4643FC
ADD             R0, R0, #0x4000
VNEG.F32        S3, S18
UXTH            R0, R0
VMOV            S0, R0
VLDR            S1, =57.296
VLDR            S5, =4.7124
VLDR            S2, =360.0
VMUL.F32        S4, S3, S1
LDR             R1, =0x43340000
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VMUL.F32        S0, S0, S17
VSUB.F32        S5, S5, S0
VADD.F32        S0, S4, S2
VSTR            S5, [R6,#0x244]
VMUL.F32        S4, S5, S1
VSTR            S3, [R6,#0x248]
VLDR            S5, [R4,#0x48]
VLDR            S3, [R4,#0x4C]
LDRB            R2, [R7,#0x58]
VMUL.F32        S7, S5, S1
VMUL.F32        S1, S3, S1
LDRH            R0, [R7,#0x4C]
CMP             R2, #0
VADD.F32        S6, S4, S2
BEQ             loc_18E028
VSUB.F32        S3, S0, S1
VABS.F32        S3, S3
VMOV            R0, S3
CMP             R0, R1
BLT             loc_18E134
B               loc_18E0A8
VLDR            S3, [SP,#0x160+var_144]
VLDR            S5, [R8,#0x108]
VLDR            S4, [SP,#0x160+var_13C]
VLDR            S9, [R8,#0x110]
VLDR            S8, [R8,#0x118]
VSUB.F32        S5, S5, S3
VSUB.F32        S9, S9, S4
VSUB.F32        S3, S8, S3
VLDR            S10, [R8,#0x120]
VSUB.F32        S4, S10, S4
VMUL.F32        S3, S9, S3
VMLS.F32        S3, S5, S4
VCMPE.F32       S3, S19
VMRS            APSR_nzcv, FPSCR
BLE             loc_18E0B0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_18E090
CMP             R0, #0
BEQ             loc_18E088
VSUB.F32        S3, S0, S1
VMOV            R0, S3
CMP             R1, R0
BGT             loc_18E134
VSUB.F32        S0, S0, S2
B               loc_18E134
NOP
BCS             loc_18E134
VSUB.F32        S3, S1, S0
VMOV            R0, S3
CMP             R0, R1
BLT             loc_18E134
VADD.F32        S0, S0, S2
B               loc_18E134
NOP
BCS             loc_18E0FC
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_18E0E0
CMP             R0, #0
BEQ             loc_18E0A8
VSUB.F32        S3, S1, S0
VMOV            R0, S3
CMP             R1, R0
BLE             loc_18E0A8
B               loc_18E134
NOP
BLE             loc_18E134
VSUB.F32        S3, S0, S1
VMOV            R0, S3
CMP             R1, R0
BLE             loc_18E088
B               loc_18E134
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_18E11C
VSUB.F32        S3, S0, S1
VMOV            R0, S3
CMP             R0, R1
BLT             loc_18E134
B               loc_18E088
NOP
BCS             loc_18E134
VSUB.F32        S3, S1, S0
VMOV            R0, S3
CMP             R0, R1
BGE             loc_18E0A8
MOV             R0, #4
VLDR            S2, =0.017453
VMUL.F32        S4, S6, S2
VMUL.F32        S5, S7, S2
VMUL.F32        S3, S0, S2
VMUL.F32        S1, S1, S2
VLDR            S0, =4.0
VSTR            S4, [R6,#0x244]
VSUB.F32        S2, S4, S5
VSTR            S3, [R6,#0x248]
VSUB.F32        S1, S3, S1
STRH            R0, [R7,#0x4C]
VDIV.F32        S3, S2, S0
VSTR            S3, [R6,#0x23C]
VDIV.F32        S2, S1, S0
VSTR            S2, [R6,#0x240]
B               loc_18DD2C
LDR             R0, [R6,#0x244]
STR             R0, [R4,#0x48]
LDR             R0, [R6,#0x248]
STR             R0, [R4,#0x4C]
LDR             R0, [R4,#0x48]
LDR             R1, =0x40C90FDB
VMOV            S0, R0
CMP             R0, R1
BLT             loc_18E1B0
VSUB.F32        S0, S0, S17
VSTR            S0, [R4,#0x48]
VLDR            S0, [R6,#0x244]
VSUB.F32        S0, S0, S17
B               loc_18E1D0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_18E1D4
VMOV            S0, R0
VADD.F32        S0, S0, S17
VSTR            S0, [R4,#0x48]
VLDR            S0, [R6,#0x244]
VADD.F32        S0, S0, S17
VSTR            S0, [R6,#0x244]
LDR             R0, [R4,#0x4C]
VMOV            S0, R0
CMP             R0, R1
BLT             loc_18E1F8
VSUB.F32        S0, S0, S17
VSTR            S0, [R4,#0x4C]
VLDR            S0, [R6,#0x248]
VSUB.F32        S0, S0, S17
B               loc_18E218
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_18E21C
VMOV            S0, R0
VADD.F32        S0, S0, S17
VSTR            S0, [R4,#0x4C]
VLDR            S0, [R6,#0x248]
VADD.F32        S0, S0, S17
VSTR            S0, [R6,#0x248]
LDR             R1, =0x14658
MOV             R0, #0
STRB            R0, [R1,R4]
LDR             R0, [R4]
ADD             R1, R4, #0x14000
ADD             R1, R1, #0x31C
LDR             R2, [R0,#0x234]
MOV             R0, R4
STR             R1, [SP,#0x160+var_13C]
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x14000
ADD             R1, R1, #0x35C
LDR             R2, [R0,#0x234]
MOV             R0, R4
STR             R1, [SP,#0x160+var_140]
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x14000
ADD             R1, R1, #0x39C
LDR             R2, [R0,#0x24C]
MOV             R0, R4
STR             R1, [SP,#0x160+var_15C]
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x14000
ADD             R1, R1, #0x3D8
LDR             R2, [R0,#0x274]
MOV             R0, R4
STR             R1, [SP,#0x160+var_158]
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x14400
ADD             R1, R1, #0x1C8
LDR             R2, [R0,#0x2B4]
MOV             R0, R4
STR             R1, [SP,#0x160+var_150]
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x14400
ADD             R1, R1, #0x1EC
MOV             R7, R1
LDR             R2, [R0,#0x2C8]
MOV             R0, R4
BLX             R2
LDRB            R0, [R5,#0x28F]
LDR             R8, =dword_6E1330
LDR             R10, =flt_711FE4
CMP             R0, #2
BEQ             loc_18E36C
LDRB            R1, [R4,#0xBC]
ADD             R0, R4, #0x14000
ADD             R0, R0, #0x2CC
CMP             R1, #1
BEQ             loc_18E3F4
VLDR            S0, [R4,#0xC]
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0xC]
VLDR            S0, [R4,#0x10]
VLDR            S1, [R0,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x10]
VLDR            S0, [R4,#0x14]
VLDR            S1, [R0,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x14]
LDRB            R0, [R5,#0x28F]
CMP             R0, #1
BEQ             loc_18E530
LDR             R0, [R8]
TST             R0, #1
BEQ             loc_18E5E8
B               loc_18E5FC
DCFS 4.7124
DCFS 57.296
DCFS 360.0
DCD 0x43340000
DCFS 0.017453
DCFS 4.0
DCD 0x40C90FDB
DCD 0x14658
DCD dword_6E1330
DCD flt_711FE4
LDR             R0, [R8]
TST             R0, #1
BNE             loc_18E3A4
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_18E3A4
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDM             R10, {R0-R2}
ADD             R3, SP, #0x160+var_60
STM             R3, {R0-R2}
LDR             R0, [R8]
TST             R0, #1
BNE             loc_18E608
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_18E608
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
NOP
NOP
B               loc_18E608
VLDR            S0, [R4,#0x24]
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x24]
VLDR            S0, [R4,#0x28]
VLDR            S1, [R0,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x28]
VLDR            S0, [R4,#0x2C]
VLDR            S1, [R0,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x2C]
LDRB            R0, [R5,#0x28F]
CMP             R0, #1
BEQ             loc_18E440
LDR             R0, [R8]
TST             R0, #1
BEQ             loc_18E4F8
B               loc_18E5FC
VLDR            S2, [R4,#0x24]
VLDR            S5, [R4,#0x30]
ADD             R0, R4, #0x28 ; '('
VLDR            S3, [R4,#0x38]
VSUB.F32        S2, S2, S5
VLDM            R0, {S0-S1}
ADD             R2, SP, #0x160+var_130
VLDR            S4, [R4,#0x34]
ADD             R1, SP, #0x160+var_60
VSUB.F32        S1, S1, S3
VLDR            S3, [SP,#0x160+var_130]
VSUB.F32        S0, S0, S4
VADD.F32        S3, S3, S2
VSTR            S3, [SP,#0x160+var_130]
VLDR            S3, [SP,#0x160+var_12C]
VADD.F32        S2, S3, S2
VSTR            S2, [SP,#0x160+var_12C]
VLDR            S2, [SP,#0x160+var_128]
VADD.F32        S2, S2, S0
VSTR            S2, [SP,#0x160+var_128]
VLDR            S2, [SP,#0x160+var_124]
VADD.F32        S0, S2, S0
VSTR            S0, [SP,#0x160+var_124]
VLDR            S0, [SP,#0x160+var_120]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x160+var_120]
VLDR            S0, [SP,#0x160+var_11C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x160+var_11C]
LDR             R0, [R4]
LDR             R3, [R0,#0x21C]
MOV             R0, R4
BLX             R3
VLDR            S0, [R4,#0x24]
VLDR            S1, [SP,#0x160+var_60]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x24]
VLDR            S0, [R4,#0x28]
VLDR            S1, [SP,#0x160+var_5C]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x28]
VLDR            S0, [R4,#0x2C]
VLDR            S1, [SP,#0x160+var_58]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x2C]
B               loc_18E608
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_18E5FC
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
NOP
NOP
B               loc_18E5FC
VLDR            S1, [R4,#0xC]
VLDR            S5, [R4,#0x18]
VLDR            S2, [R4,#0x14]
VLDR            S3, [R4,#0x20]
VSUB.F32        S1, S1, S5
VLDR            S0, [R4,#0x10]
VSUB.F32        S2, S2, S3
VLDR            S3, [SP,#0x160+var_130]
VLDR            S4, [R4,#0x1C]
ADD             R2, SP, #0x160+var_130
ADD             R1, SP, #0x160+var_60
VSUB.F32        S0, S0, S4
VADD.F32        S3, S3, S1
VSTR            S3, [SP,#0x160+var_130]
VLDR            S3, [SP,#0x160+var_12C]
VADD.F32        S1, S3, S1
VSTR            S1, [SP,#0x160+var_12C]
VLDR            S1, [SP,#0x160+var_128]
VADD.F32        S1, S1, S0
VSTR            S1, [SP,#0x160+var_128]
VLDR            S1, [SP,#0x160+var_124]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x160+var_124]
VLDR            S0, [SP,#0x160+var_120]
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0x160+var_120]
VLDR            S0, [SP,#0x160+var_11C]
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0x160+var_11C]
LDR             R0, [R4]
LDR             R3, [R0,#0x21C]
MOV             R0, R4
BLX             R3
VLDR            S0, [R4,#0xC]
VLDR            S1, [SP,#0x160+var_60]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0xC]
VLDR            S0, [R4,#0x10]
VLDR            S1, [SP,#0x160+var_5C]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x10]
VLDR            S0, [R4,#0x14]
VLDR            S1, [SP,#0x160+var_58]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x14]
B               loc_18E608
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BNE             loc_18E50C
LDM             R10, {R0-R2}
ADD             R3, SP, #0x160+var_60
STM             R3, {R0-R2}
LDR             R0, [R4]
LDR             R1, [SP,#0x160+var_13C]
LDR             R2, [R0,#0x238]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
LDR             R1, [SP,#0x160+var_140]
LDR             R2, [R0,#0x238]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
LDR             R1, [SP,#0x160+var_15C]
LDR             R2, [R0,#0x250]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
LDR             R1, [SP,#0x160+var_158]
LDR             R2, [R0,#0x278]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
LDR             R1, [SP,#0x160+var_150]
LDR             R2, [R0,#0x2B8]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R1, R7
LDR             R2, [R0,#0x2CC]
MOV             R0, R4
BLX             R2
ADD             R0, R4, #8
BL              sub_1E51BC
ADD             R0, R4, #0xC
ADD             R3, SP, #0x160+var_108
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R4, #0x24 ; '$'
ADD             R3, SP, #0x160+var_B0
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R4, #0x60 ; '`'
ADD             R3, SP, #0x160+var_FC
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
LDR             R0, =flt_6EA394
VLDR            S5, [R5,#0x2D8]
VLDM            R0!, {S0}
VLDM            R0, {S1-S2}
ADD             R0, R5, #0x2DC
VMUL.F32        S0, S0, S5
VLDM            R0, {S3-S4}
ADD             R0, SP, #0x160+var_A4
VMUL.F32        S1, S1, S3
VMUL.F32        S2, S2, S4
VSTM            R0, {S0-S2}
ADD             R0, R5, #0x2E4
VLDM            R0, {S0-S2}
VMUL.F32        S0, S0, S22
VMUL.F32        S1, S1, S22
VMUL.F32        S2, S2, S22
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VABS.F32        S0, S0
VCMPE.F32       S1, S16
MOVCC           R2, #1
MOVCS           R2, #0
VMOV            R0, S0
VMRS            APSR_nzcv, FPSCR
VABS.F32        S1, S1
VCMPE.F32       S2, S16
MOVCC           R3, #1
MOVCS           R3, #0
VMRS            APSR_nzcv, FPSCR
VABS.F32        S2, S2
MOVCC           R12, #1
MOVCS           R12, #0
CMP             R0, R11
BLT             loc_18E750
VSUB.F32        S0, S0, S21
VMOV            R0, S0
CMP             R0, R11
BGE             loc_18E740
VMOV            R0, S1
CMP             R0, R11
BLT             loc_18E76C
VSUB.F32        S1, S1, S21
VMOV            R0, S1
CMP             R0, R11
BGE             loc_18E75C
VMOV            R0, S2
CMP             R0, R11
BLT             loc_18E788
VSUB.F32        S2, S2, S21
VMOV            R0, S2
CMP             R0, R11
BGE             loc_18E778
VCVT.U32.F32    S3, S0
CMP             R2, #0
MOV             R8, #0
VMOV            R0, S3
VCVT.U32.F32    S3, S1
UXTH            R0, R0
VMOV            R1, S3
VCVT.U32.F32    S3, S2
UXTH            R1, R1
VMOV            R7, S3
VMOV            S3, R0
AND             R0, R0, #0xFF
UXTH            R7, R7
ADD             R0, R9, R0,LSL#4
VCVT.F32.U32    S4, S3
VMOV            S3, R1
AND             R1, R1, #0xFF
VLDR            S8, [R0,#8]
ADD             R1, R9, R1,LSL#4
VLDR            S6, [R0,#4]
VLDR            S7, [R1,#4]
VCVT.F32.U32    S5, S3
VMOV            S3, R7
AND             R7, R7, #0xFF
VSUB.F32        S0, S0, S4
ADD             R7, R9, R7,LSL#4
VLDR            S4, [R0]
VLDR            S9, [R7,#4]
VCVT.F32.U32    S3, S3
VLDR            S10, [R0,#0xC]
ADD             R0, SP, #0x160+var_DC
VSUB.F32        S1, S1, S5
VLDR            S5, [R7]
ADD             R7, R7, #8
VMLA.F32        S4, S0, S8
VLDM            R7, {S13-S14}
VMLA.F32        S6, S0, S10
VSUB.F32        S2, S2, S3
VLDR            S3, [R1]
ADD             R1, R1, #8
VLDM            R1, {S11-S12}
VNEGNE.F32      S4, S4
CMP             R3, #0
VMLA.F32        S3, S1, S11
VMLA.F32        S7, S1, S12
VMLA.F32        S5, S2, S13
VMLA.F32        S9, S2, S14
VNEGNE.F32      S3, S3
CMP             R12, #0
VNEGNE.F32      S5, S5
VMUL.F32        S10, S4, S9
VMUL.F32        S0, S6, S9
VMUL.F32        S9, S9, S7
VNEG.F32        S12, S3
VMUL.F32        S11, S6, S5
VMUL.F32        S8, S4, S5
VMUL.F32        S5, S5, S7
VMUL.F32        S4, S4, S7
VMUL.F32        S6, S6, S7
VSTR            S9, [SP,#0x160+var_E0]
VMOV.F32        S1, S11
VMOV.F32        S2, S8
VSTR            S5, [SP,#0x160+var_D0]
VSTR            S4, [SP,#0x160+var_BC]
VSTR            S6, [SP,#0x160+var_B8]
VNMLS.F32       S1, S10, S3
VMLA.F32        S2, S0, S3
VNMLS.F32       S10, S11, S3
VMLA.F32        S0, S8, S3
VSTR            S10, [SP,#0x160+var_C8]
VSTR            S0, [SP,#0x160+var_CC]
VSTR            S12, [SP,#0x160+var_C0]
VSTM            R0, {S1-S2}
STR             R8, [SP,#0x160+var_D4]
STR             R8, [SP,#0x160+var_C4]
LDR             R0, =flt_6EA394
ADD             R2, SP, #0x160+var_A4
ADD             R1, SP, #0x160+var_E0
STR             R8, [SP,#0x160+var_B4]
BL              sub_1169FC
ADD             R2, SP, #0x160+var_108
ADD             R1, SP, #0x160+var_B0
ADD             R0, SP, #0x160+var_FC
BL              sub_50E688
ADD             R1, SP, #0x160+var_FC
ADD             R10, SP, #0x160+var_154
LDM             R1, {R2,R3,R12}
ADD             R7, SP, #0x160+var_B0
LDR             R0, [R4,#0xC0]
ADD             R1, SP, #0x160+var_154
STM             R10, {R2,R3,R12}
BL              sub_4C56EC
LDR             R0, [R4,#0xC0]
MOV             R1, R7
BL              sub_4C57D8
LDR             R0, [R4,#0xC0]
LDR             R1, [SP,#0x160+var_108]
STR             R1, [R0,#0x98]
LDR             R1, [SP,#0x160+var_104]
STR             R1, [R0,#0xA8]
LDR             R1, [SP,#0x160+var_100]
STR             R1, [R0,#0xB8]
LDR             R0, [R4,#0xC0]
BL              sub_4C5864
MOV             R0, #1
STR             R0, [SP,#0x160+var_15C]; float
STR             R8, [SP,#0x160+var_160]; int
VLDR            S1, [R6,#0x210]
VLDR            S0, [R4,#0xA8]
ADD             R1, R4, #0xC4
LDR             R3, [R4,#0xC0]; int
VMUL.F32        S1, S0, S1
LDM             R1, {R1,R2}; int
ADD             R0, R4, #0xCC; int
VLDR            S0, [R4,#0xA4]
BL              sub_59C830
LDR             R0, [R4,#0xC0]
ADD             R1, R0, #0x148
ADD             R0, R4, #0x13800
ADD             R0, R0, #0x374
MOV             R6, R0
BL              sub_142378
VLDR            S0, [R4,#0x50]
MOV             R3, #0
MOV             R12, R3
VNMUL.F32       S1, S22, S0
VMOV.F32        S0, S16
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
VABS.F32        S2, S1
MOVCC           R7, #1
MOVCS           R7, #0
VMOV            R0, S2
CMP             R0, R11
BLT             loc_18E9B4
VSUB.F32        S2, S2, S21
VMOV            R0, S2
CMP             R0, R11
BGE             loc_18E9A4
VCVT.U32.F32    S1, S0
CMP             R3, #0
VMOV            R0, S1
VMOV.F32        S1, S16
UXTH            R0, R0
VCVT.U32.F32    S1, S1
VMOV            R1, S1
VCVT.U32.F32    S1, S2
UXTH            R1, R1
VMOV            R2, S1
VMOV            S1, R0
AND             R0, R0, #0xFF
UXTH            R2, R2
ADD             R0, R9, R0,LSL#4
VCVT.F32.U32    S4, S1
VMOV            S1, R1
AND             R1, R1, #0xFF
ADD             R1, R9, R1,LSL#4
VLDR            S6, [R1,#4]
VCVT.F32.U32    S3, S1
VMOV            S1, R2
AND             R2, R2, #0xFF
VSUB.F32        S0, S0, S4
VLDM            R0!, {S4}
ADD             R2, R9, R2,LSL#4
VLDM            R0, {S8-S10}
VCVT.F32.U32    S5, S1
VMOV.F32        S1, S16
VLDR            S7, [R2,#4]
VMLA.F32        S4, S0, S9
VSUB.F32        S1, S1, S3
VLDR            S3, [R1]
ADD             R1, R1, #8
VSUB.F32        S2, S2, S5
VLDR            S5, [R2]
ADD             R2, R2, #8
VLDM            R1, {S11-S12}
VMLA.F32        S8, S0, S10
VLDM            R2, {S13-S14}
VNEGNE.F32      S4, S4
VMLA.F32        S3, S1, S11
CMP             R12, #0
VMLA.F32        S6, S1, S12
VMLA.F32        S5, S2, S13
VMLA.F32        S7, S2, S14
VNEGNE.F32      S3, S3
CMP             R7, #0
VMUL.F32        S11, S4, S6
VNEGNE.F32      S5, S5
VMUL.F32        S2, S8, S7
VMUL.F32        S1, S4, S7
VMUL.F32        S7, S7, S6
VNEG.F32        S12, S3
VMUL.F32        S0, S4, S5
VMUL.F32        S9, S8, S5
VMUL.F32        S10, S5, S6
VMUL.F32        S5, S8, S6
VSTR            S7, [SP,#0x160+var_118]
VMOV.F32        S4, S0
VSTR            S10, [SP,#0x160+var_108]
VSTR            S11, [SP,#0x160+var_F4]
VSTR            S5, [SP,#0x160+var_F0]
VMLA.F32        S4, S2, S3
VMLA.F32        S2, S0, S3
VMOV.F32        S0, S9
VNMLS.F32       S0, S1, S3
VNMLS.F32       S1, S9, S3
VSTR            S0, [SP,#0x160+var_114]
VSTR            S1, [SP,#0x160+var_100]
VSTR            S4, [SP,#0x160+var_110]
VSTR            S2, [SP,#0x160+var_104]
VSTR            S12, [SP,#0x160+var_F8]
STR             R8, [SP,#0x160+var_10C]
STR             R8, [SP,#0x160+var_FC]
STR             R8, [SP,#0x160+var_EC]
MOV             R1, R6
ADD             R2, SP, #0x160+var_118
MOV             R0, R1
BL              sub_141F30
ADD             R2, R4, #0x13800
ADD             R2, R2, #0x374
LDR             R0, [R5,#0x184]
LDM             R2, {R2,R3,R6-R10,R12}
ADD             R1, R4, #0x13800
ADD             R11, R0, #0x8C0
ADD             R0, R0, #0x8E0
STM             R11, {R2,R3,R6-R10,R12}
ADD             R2, R4, #0x13800
ADD             R2, R2, #0x394
LDM             R2, {R2,R3,R6,R12}
STM             R0, {R2,R3,R6,R12}
ADD             R2, R4, #0x13800
ADD             R2, R2, #0x374
LDR             R0, [R5,#0x188]
LDM             R2, {R2,R3,R6-R10,R12}
ADD             R11, R0, #0x8C0
STM             R11, {R2,R3,R6-R10,R12}
ADD             R2, R4, #0x13800
ADD             R2, R2, #0x394
LDR             R1, [R1,#0x3A0]
LDM             R2, {R2,R3,R12}
STR             R1, [R0,#0x8EC]
ADD             R0, R0, #0x8E0
STM             R0, {R2,R3,R12}
MOV             R2, #1
LDR             R0, [R4,#0xC0]
ADD             R1, R0, #0x1A8
ADD             R0, SP, #0x160+var_E0
BL              sub_59C918
LDM             R0, {R1-R3,R6-R9,R12}
ADD             R10, SP, #0x160+var_E0
STM             R10, {R1-R3,R6-R9,R12}
ADD             R1, R0, #0x20 ; ' '
ADD             R7, R0, #0x30 ; '0'
ADD             R9, SP, #0x160+var_C0
LDM             R1, {R1-R3,R12}
LDR             R0, [R0,#0x3C]
LDM             R7, {R6-R8}
STR             R0, [SP,#0x160+var_A4]
STM             R9, {R1-R3,R12}
ADD             R1, SP, #0x160+var_B0
ADD             R0, SP, #0x160+var_A0
STM             R1, {R6-R8}
LDR             R1, [R4,#0xC0]
ADD             R1, R1, #0x148
BL              sub_1169CC
VSTR            S16, [SP,#0x160+var_68]
VLDR            S0, =1.0
VSTR            S16, [SP,#0x160+var_6C]
VSTR            S16, [SP,#0x160+var_70]
ADD             R0, R4, #0x13800
VSTR            S0, [SP,#0x160+var_64]
ADD             R2, SP, #0x160+var_A0
ADD             R1, SP, #0x160+var_E0
ADD             R0, R0, #0x3A4
BL              sub_142408
LDR             R0, =0x14614
LDR             R1, [R5,#0x180]
ADD             R2, R4, #8
LDR             R0, [R0,R4]
BL              sub_231F14
LDR             R0, [R4]
LDR             R1, [R0,#0x2D4]
MOV             R0, R4
BLX             R1
ADD             SP, SP, #0x11C
VPOP            {D8-D11}
POP             {R4-R11,PC}
