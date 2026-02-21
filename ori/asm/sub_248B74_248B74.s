PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, =dword_6E1330
ADD             R5, R4, #0x40 ; '@'
VPUSH           {D8}
SUB             SP, SP, #0x1C
LDR             R0, [R0]
VLDR            S16, =0.0
TST             R0, #1
BNE             loc_248BC4
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_248BC4
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
VLDR            S3, [R4,#0x40]
ADD             R1, R4, #0x44 ; 'D'
LDR             R0, =flt_711FE4
VMUL.F32        S0, S3, S3
VLDM            R1, {S1-S2}
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_248C00
LDM             R0, {R1,R2}
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R5,#8]
STM             R5, {R1,R2}
B               loc_248C24
VSQRT.F32       S5, S0
VLDR            S4, =1.0
VDIV.F32        S0, S4, S5
VMUL.F32        S3, S3, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S2, S0
VSTR            S3, [R5]
VSTR            S1, [R5,#4]
VSTR            S0, [R5,#8]
ADD             R3, R4, #0x400
VLDR            S1, [R4,#0x40]
VLDR            S0, [R3,#0x150]
LDR             R0, =off_6CDD80
VMUL.F32        S1, S1, S0
VSTR            S1, [R4,#0x40]
VLDR            S1, [R4,#0x44]
VMUL.F32        S1, S1, S0
VSTR            S1, [R4,#0x44]
VLDR            S1, [R4,#0x48]
VMUL.F32        S0, S1, S0
VSTR            S0, [R4,#0x48]
LDR             R0, [R0]
VLDR            S0, [R3,#0x150]
LDR             R1, [R0,#8]
LDR             R2, [R1,#0x40]
VMOV            S1, R2
STR             R2, [SP,#0x30+var_2C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_248C9C
MOV             R1, #0
STRB            R1, [R4,#0x4E9]
LDR             R1, [R0,#8]
LDR             R1, [R1,#0x40]
VMOV            S1, R1
STR             R1, [SP,#0x30+var_2C]
VDIV.F32        S2, S0, S1
VSTR            S2, [R3,#0x138]
B               loc_248CFC
LDR             R1, [R1,#0x44]
VMOV            S1, R1
STR             R1, [SP,#0x30+var_2C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_248CF0
MOV             R1, #1
STRB            R1, [R4,#0x4E9]
LDR             R1, [R0,#8]
LDR             R2, [R1,#0x40]
VMOV            S1, R2
STR             R2, [SP,#0x30+var_2C]
LDR             R1, [R1,#0x44]
VMOV            S2, R2
STR             R2, [SP,#0x30+var_2C]
VSUB.F32        S0, S0, S1
VMOV            S1, R1
VSUB.F32        S1, S1, S2
VDIV.F32        S2, S0, S1
VSTR            S2, [R3,#0x138]
B               loc_248CFC
MOV             R1, #2
STRB            R1, [R4,#0x4E9]
VSTR            S16, [R3,#0x138]
LDR             R2, [R0,#8]
LDR             R0, [R2,#0x3C]
LDR             R1, [R2,#0x38]
LDR             R12, [R2,#0x34]
VMOV            S2, R0
VMOV            S1, R1
VMOV            S0, R12
MOV             R0, R4
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
BL              sub_5CAD64
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STR             R0, [R4,#0x4E4]
LDR             R0, [R2,#0x18C]
STR             R0, [SP,#0x30+var_30]
LDR             R0, [R2,#0x188]
STR             R0, [SP,#0x30+var_2C]
LDR             R0, [R2,#0x184]
STR             R0, [SP,#0x30+var_28]
VMOV            S0, R0
VLDR            S2, [SP,#0x30+var_30]
VLDR            S1, [SP,#0x30+var_2C]
MOV             R0, R4
BL              sub_5CAD64
VSTR            S0, [R3,#0x13C]
LDR             R0, [R2,#0x198]
STR             R0, [SP,#0x30+var_2C]
LDR             R0, [R2,#0x194]
STR             R0, [SP,#0x30+var_30]
LDR             R0, [R2,#0x190]
STR             R0, [SP,#0x30+var_28]
VMOV            S0, R0
VLDMEA          SP, {S1-S2}
MOV             R0, R4
BL              sub_5CAD64
VSTR            S0, [R4,#0x184]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4,R5,PC}
