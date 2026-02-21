PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x2C ; ','
VPUSH           {D8-D13}
VMOV.F32        S18, S0
VMOV.F32        S16, S1
VMOV.F32        S17, S2
SUB             SP, SP, #8
BL              sub_1A5710
VMUL.F32        S3, S0, S0
VLDR            S26, =1.0
VLDR            S25, =0.0
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S2, S2
VSQRT.F32       S4, S3
VDIV.F32        S3, S26, S4
VMUL.F32        S4, S1, S3
VMUL.F32        S1, S2, S3
VMUL.F32        S2, S18, S18
VMUL.F32        S0, S0, S3
VMLA.F32        S2, S16, S16
VMLA.F32        S2, S17, S17
VSQRT.F32       S5, S2
VDIV.F32        S3, S26, S5
VMUL.F32        S5, S18, S3
VMUL.F32        S2, S16, S3
VMUL.F32        S3, S17, S3
VMUL.F32        S0, S0, S5
VMLA.F32        S0, S4, S2
VMLA.F32        S0, S1, S3
VCMPE.F32       S0, S26
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S26
BGT             loc_1A5D4C
VMOV.F32        S1, S25
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S25
NOP
BL              sub_5F5B2C
VCMPE.F32       S0, S25
VMRS            APSR_nzcv, FPSCR
BLE             loc_1A5EB8
VMOV.F32        S0, S18
MOV             R0, #0xA
STRB            R0, [R4,#0x19]
ADD             R0, R4, #0x2C ; ','
VNEG.F32        S19, S0
VMOV.F32        S0, S16
VNEG.F32        S20, S0
VMOV.F32        S0, S17
VNEG.F32        S21, S0
BL              sub_1A5710
LDR             R0, =dword_6CE3B0
VMOV.F64        D11, D0
VMOV.F32        S24, S2
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1A5DC8
LDR             R0, =dword_6CE3B0
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1A5DC8
LDR             R0, =flt_6E1DE8
VSTM            R0, {S25-S26}
VSTR            S25, [R0,#(flt_6E1DF0 - 0x6E1DE8)]
LDR             R0, =dword_6CE3B0
NOP
LDR             R0, =flt_6E1DE8
MOV             R1, #0x100
MOV             R3, #0
VLDR            S3, [R0,#(flt_6E1DEC - 0x6E1DE8)]
VLDR            S5, [R0,#(flt_6E1DF0 - 0x6E1DE8)]
VLDR            S4, [R0]
VMUL.F32        S2, S3, S24
VMUL.F32        S0, S5, S22
VMUL.F32        S1, S4, S23
MOV             R0, #1
STRD            R0, R1, [SP,#0x48+var_48]
LDR             R0, [R4,#0x1C]
MOV             R1, R3
VMLS.F32        S2, S5, S23
VMLS.F32        S0, S4, S24
VMLS.F32        S1, S3, S22
VMUL.F32        S2, S2, S19
VMLA.F32        S2, S0, S20
VMLA.F32        S2, S1, S21
VCMPE.F32       S2, S25
VMRS            APSR_nzcv, FPSCR
MOVCC           R2, #9
MOVCS           R2, #8
BL              sub_14F048
MOV             R2, #0
LDR             R0, [R4,#0x1C]
MOV             R1, R2
BL              sub_5ECC58
LDR             R6, =off_6CE388
MOV             R5, R0
LDR             R0, [R6]
LDR             R0, [R0,#0x98]
VLDR            S0, [R0,#0xC0]
MOV             R0, R5
BL              sub_5924AC
VSTR            S18, [R4,#0x78]
ADD             R1, R4, #0x7C ; '|'
MOV             R0, R5
VSTM            R1, {S16-S17}
BL              sub_5F158C
VMOV.F32        S17, S0
LDR             R0, [R6]
LDR             R0, [R0,#0x98]
VLDR            S0, [R0,#0xC0]
ADD             R4, R4, #0x2C ; ','
MOV             R0, R4
VDIV.F32        S16, S17, S0
BL              sub_1A5710
ADD             R1, R4, #0x34 ; '4'
MOV             R0, R4
VSTM            R1, {S0-S2}
BL              sub_5A18EC
VMOV.F32        S1, S16
VMOV.F32        S0, S26
VSTR            S25, [R4,#0xC]
VSTR            S25, [R4,#4]
MOV             R0, R4
BL              sub_5A1BAC
ADD             R4, R4, #0x40 ; '@'
VSTM            R4, {S19-S21}
ADD             SP, SP, #8
VPOP            {D8-D13}
POP             {R4-R6,PC}
