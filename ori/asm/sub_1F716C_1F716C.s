PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8-D12}
SUB             SP, SP, #0x2C
LDRB            R0, [R0,#0x41A]
CMP             R0, #2
BNE             loc_1F7420
LDR             R6, =off_6CDD80
MOV             R1, R4
LDR             R0, [R6]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x2D4
BL              sub_543954
MOV             R7, #0
STRB            R7, [R4,#0x434]
VLDR            S2, [R4,#0x24]
VLDR            S3, [R5]
VLDR            S0, [R4,#0x2C]
VLDR            S1, [R5,#8]
VSUB.F32        S17, S2, S3
LDR             R0, =dword_6E1330
VSUB.F32        S16, S0, S1
VLDR            S23, =0.0
LDR             R0, [R0]
VMOV.F32        S18, S23
TST             R0, #1
BNE             loc_1F7204
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1F7204
LDR             R0, =flt_711FE4
VSTR            S23, [R0]
VSTR            S23, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S23, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
VMUL.F32        S0, S17, S17
VLDR            S24, =1.0
LDR             R0, =flt_711FE4
VMLA.F32        S0, S18, S18
VMLA.F32        S0, S16, S16
VCMP.F32        S0, S23
VMRS            APSR_nzcv, FPSCR
VLDMEQ          R0, {S17-S19}
BEQ             loc_1F723C
VSQRT.F32       S1, S0
VDIV.F32        S0, S24, S1
VMUL.F32        S17, S17, S0
VMUL.F32        S18, S18, S0
VMUL.F32        S19, S16, S0
LDR             R1, [R6]
LDR             R0, =dword_6D1F40
LDR             R1, [R1,#8]
LDR             R2, [R1,#0xC0]
STR             R2, [SP,#0x68+var_68]
LDR             R1, [R1,#0xC4]
VMOV            S16, R2
VMOV            S20, R1
STR             R1, [SP,#0x68+var_68]
BL              sub_546DB0
VMOV            S0, R0
VLDR            S25, =0.000015259
VSUB.F32        S1, S20, S16
LDR             R1, [R6]
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
LDR             R1, [R1,#8]
LDR             R2, [R1,#0xC8]
STR             R2, [SP,#0x68+var_68]
LDR             R1, [R1,#0xCC]
VMUL.F32        S0, S0, S25
VMOV            S20, R1
STR             R1, [SP,#0x68+var_68]
VMUL.F32        S0, S0, S1
VADD.F32        S21, S16, S0
VMOV            S16, R2
BL              sub_546DB0
VMOV            S0, R0
VSUB.F32        S1, S20, S16
LDR             R1, [R6]
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
LDR             R1, [R1,#8]
LDR             R2, [R1,#0xB8]
STR             R2, [SP,#0x68+var_68]
LDR             R1, [R1,#0xBC]
VMUL.F32        S0, S0, S25
VMOV            S20, R2
VMOV            S22, R1
STR             R1, [SP,#0x68+var_68]
VMUL.F32        S0, S0, S1
VADD.F32        S16, S16, S0
BL              sub_546DB0
VMOV            S0, R0
VSUB.F32        S1, S22, S20
VMUL.F32        S2, S19, S16
ADD             R0, SP, #0x68+var_60
ADD             R2, SP, #0x68+var_60
MOV             R1, #0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S25
VMUL.F32        S0, S0, S1
VMUL.F32        S1, S18, S16
VADD.F32        S20, S20, S0
VMUL.F32        S0, S17, S16
VSTM            R0, {S0-S2}
VMOV.F32        S0, S20
ADD             R0, R4, #0x1DC
BL              sub_5A2B20
ADD             R2, SP, #0x68+var_54
VMOV.F32        S2, S21
VMOV.F32        S1, S20
VMOV.F32        S0, S23
VSTM            R2, {S23-S24}
MOV             R1, #1
VSTR            S23, [SP,#0x68+var_4C]
ADD             R0, R4, #0x1DC
BL              sub_5A28C4
LDR             R0, [R6]
MOV             R2, #0
LDR             R1, [R0,#0xF3C]
MOV             R0, R4
BL              sub_14E6E0
MOV             R0, R4
NOP
BL              sub_14D83C
LDRB            R0, [R4,#0x418]
LDRB            R1, [R4,#0x414]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, R1
ADD             R0, R0, #4
AND             R1, R0, #0xFF
MOV             R0, R4
BL              sub_14C548
LDRB            R0, [R4,#0x419]
STRB            R0, [R4,#0xF3]
LDR             R0, [R6]
LDR             R1, [R0,#8]
LDR             R1, [R1,#0x28C]
VMOV            S0, R1
STR             R1, [SP,#0x68+var_68]
VSTR            S23, [R4,#0x39C]
VMUL.F32        S0, S0, S20
VSTR            S0, [R4,#0x3A0]
STRB            R7, [R4,#0x41B]
LDR             R0, [R0,#8]
LDR             R1, [R0,#0x294]
STR             R1, [SP,#0x68+var_64]
LDR             R0, [R0,#0x290]
VMOV            S1, R1
STR             R0, [SP,#0x68+var_68]
LDR             R0, =dword_6D1F40
VLDR            S0, [SP,#0x68+var_68]
BL              sub_47EAA4
VMOV.F32        S16, S0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
TST             R0, #1
VLDREQ          S24, =-1.0
VLDR            S0, =36000.0
VSTR            S23, [SP,#0x68+var_48]
VSTR            S23, [SP,#0x68+var_44]
VMUL.F32        S1, S24, S0
VMOV.F32        S0, S16
ADD             R1, SP, #0x68+var_48
ADD             R0, R4, #0x100
VSTR            S1, [SP,#0x68+var_40]
BL              sub_5A29E4
MOV             R0, #3
STRB            R0, [R4,#0x41A]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8-D12}
POP             {R4-R7,PC}
