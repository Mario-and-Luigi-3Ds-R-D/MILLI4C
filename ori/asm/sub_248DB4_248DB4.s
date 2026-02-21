PUSH            {R4-R9,LR}
MOV             R6, R1
MOV             R4, R0
MOV             R7, #0
LDR             R8, =off_6CE970
VPUSH           {D8-D9}
SUB             SP, SP, #0x14
LDRB            R1, [R0,#0x4E8]
MOV             R0, #1
STRB            R0, [R4,#0x555]
CMP             R1, #1
MOVEQ           R0, #3
STRB            R7, [R4,#0x509]
STRBEQ          R0, [R4,#0x4E8]
LDR             R0, [R8]
BL              sub_5EE83C
LDR             R9, =off_6CDD80
CMP             R0, #0
BEQ             loc_248E10
LDR             R0, [R9]
BL              sub_388744
STRB            R7, [R4,#0x4E0]
STRB            R7, [R4,#0x554]
ADD             R0, R4, #0x510
ADD             R5, R4, #0x400
VLDR            S2, [R6]
VLDR            S0, [R5,#0x114]
VLDR            S1, [R6,#8]
VLDR            S4, [R0]
VLDR            S3, [R0,#8]
VSUB.F32        S17, S0, S0
VSUB.F32        S19, S2, S4
VSUB.F32        S18, S1, S3
LDR             R0, =dword_6E1330
VLDR            S16, =0.0
LDR             R0, [R0]
TST             R0, #1
BNE             loc_248E78
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_248E78
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
VMUL.F32        S0, S19, S19
LDR             R0, =flt_711FE4
VMLA.F32        S0, S17, S17
VMLA.F32        S0, S18, S18
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDMEQ          R0, {S1-S3}
BEQ             loc_248EB0
VSQRT.F32       S2, S0
VLDR            S1, =1.0
VDIV.F32        S0, S1, S2
VMUL.F32        S1, S19, S0
VMUL.F32        S2, S17, S0
VMUL.F32        S3, S18, S0
VLDR            S0, [R5,#0x11C]
ADD             R0, R4, #0x510
LDR             R12, [R8]
VLDR            S5, [R0]
VLDR            S4, [R0,#8]
MOV             R3, #1
ADD             R2, SP, #0x40+var_3C
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S3, S0
VLDR            S0, [R0,#4]
LDR             R0, [R9]
ADD             R1, R3, #0x1A8
LDR             R0, [R0,#0xC]
VADD.F32        S1, S5, S1
VADD.F32        S0, S0, S2
VADD.F32        S2, S4, S3
ADD             R0, R0, #0xC
VLDM            R0, {S3-S5}
MOV             R0, R12
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S4
VADD.F32        S2, S2, S5
VSTR            S1, [SP,#0x40+var_3C]
VSTR            S0, [SP,#0x40+var_38]
VSTR            S2, [SP,#0x40+var_34]
STR             R7, [SP,#0x40+var_40]
BL              sub_52AEA8
STR             R7, [R4,#0x540]
ADD             SP, SP, #0x14
VPOP            {D8-D9}
POP             {R4-R9,PC}
