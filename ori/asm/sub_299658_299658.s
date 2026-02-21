PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R6, R1
MOV             R7, R2
VPUSH           {D8-D11}
SUB             SP, SP, #0x28
LDRB            R0, [R0,#6]
CMP             R0, #2
BNE             loc_2998C4
LDR             R0, [R4,#0x2C]
LDR             R2, =0x19DEE8
VLDR            S2, =0.0039062
ADD             R1, R4, #0x48 ; 'H'
LDR             R5, [R0]
LDR             R0, =off_6CE970
VLDR            S1, [R5,#4]
LDR             R0, [R0]
ADD             R2, R2, R0; loc_19DEE8
VLDR            S0, [R2]
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S2
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_2996D0
LDR             R12, =0xFFE683CC
LDR             R2, =0x301FD
MOV             R3, #0
SUB             R0, R0, R12
BL              sub_503720
VSTR            S16, [R5,#4]
LDRB            R0, [R4,#5]
CMP             R0, #0
BEQ             loc_2998C4
MOV             R8, #0
STRB            R7, [R4,#0x441]
STRB            R8, [R4,#3]
VLDR            S2, [R4,#0x6C]
VLDR            S3, [R6]
VLDR            S0, [R4,#0x74]
VLDR            S1, [R6,#8]
VSUB.F32        S18, S2, S3
LDR             R0, =dword_6E1330
VSUB.F32        S17, S0, S1
VLDR            S16, =0.0
LDR             R0, [R0]
VMOV.F32        S19, S16
TST             R0, #1
BNE             loc_299744
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_299744
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
VMUL.F32        S0, S18, S18
VLDR            S23, =1.0
LDR             R0, =flt_711FE4
VMLA.F32        S0, S19, S19
VMLA.F32        S0, S17, S17
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDMEQ          R0, {S18-S20}
BEQ             loc_29977C
VSQRT.F32       S1, S0
VDIV.F32        S0, S23, S1
VMUL.F32        S18, S18, S0
VMUL.F32        S19, S19, S0
VMUL.F32        S20, S17, S0
LDR             R0, [R4,#0x2C]
ADD             R5, R0, #0x24 ; '$'
ADD             R1, R5, #0x68 ; 'h'
LDR             R0, =dword_6D1F40
VLDM            R1, {S0-S1}
BL              sub_47EAA4
ADD             R1, R5, #0x70 ; 'p'
VMOV.F32        S22, S0
VLDM            R1, {S0-S1}
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
ADD             R1, R5, #0x60 ; '`'
VMOV.F32        S17, S0
VLDM            R1, {S0-S1}
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
VMOV.F32        S21, S0
VMOV.F32        S0, S17
MOV             R2, SP
MOV             R1, #0
ADD             R0, R4, #0x224
VMUL.F32        S1, S18, S0
VMUL.F32        S2, S19, S0
VMUL.F32        S0, S20, S0
VSTR            S0, [SP,#0x60+var_58]
VMOV.F32        S0, S21
VSTMEA          SP, {S1-S2}
BL              sub_5A2B20
VSTR            S16, [SP,#0x60+var_54]
VMOV.F32        S2, S22
VMOV.F32        S1, S21
VMOV.F32        S0, S16
VSTR            S23, [SP,#0x60+var_50]
ADD             R2, SP, #0x60+var_54
VSTR            S16, [SP,#0x60+var_4C]
MOV             R1, #1
ADD             R0, R4, #0x224
BL              sub_5A28C4
LDR             R0, [R4,#0x2C]
MOV             R2, #0
LDR             R1, [R0,#8]
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14E6E0
ADD             R0, R4, #0x48 ; 'H'
NOP
BL              sub_14D83C
LDRB            R0, [R4]
LDRB            R1, [R4,#0x29]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, R1
ADD             R0, R0, #4
AND             R1, R0, #0xFF
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14C548
LDRB            R0, [R4,#2]
STRB            R0, [R4,#0x13B]
VLDR            S0, [R5,#0x2C]
VSTR            S16, [R4,#0x3E4]
ADD             R5, R5, #0x30 ; '0'
VMUL.F32        S0, S0, S21
LDR             R0, =dword_6D1F40
VSTR            S0, [R4,#0x3E8]
STRB            R8, [R4,#1]
VLDM            R5, {S0-S1}
BL              sub_47EAA4
VMOV.F32        S17, S0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
TST             R0, #1
VLDREQ          S23, =-1.0
VLDR            S0, =36000.0
VSTR            S16, [SP,#0x60+var_48]
VSTR            S16, [SP,#0x60+var_44]
VMUL.F32        S1, S23, S0
VMOV.F32        S0, S17
ADD             R1, SP, #0x60+var_48
ADD             R0, R4, #0x148
VSTR            S1, [SP,#0x60+var_40]
BL              sub_5A29E4
MOV             R0, #3
STRB            R0, [R4,#6]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8-D11}
POP             {R4-R8,PC}
