PUSH            {R4,R5,LR}
MOV             R4, R0
VPUSH           {D8-D10}
SUB             SP, SP, #0x4C
MOV             R0, SP
LDR             R1, [R4,#0x18]
BL              sub_1169CC
VLDR            S16, =0.0
VLDR            S0, =-1.0
VSTR            S16, [SP,#0x70+var_44]
VSTR            S16, [SP,#0x70+var_54]
VSTR            S16, [SP,#0x70+var_64]
VSTR            S0, [SP,#0x70+var_40]
VSTR            S16, [SP,#0x70+var_3C]
ADD             R2, SP, #0x70+var_40
VSTR            S16, [SP,#0x70+var_38]
MOV             R1, SP
MOV             R0, R2
BL              sub_1169FC
LDR             R5, =dword_6E1320
VLDR            S18, [SP,#0x70+var_40]
VLDR            S17, [SP,#0x70+var_3C]
LDR             R0, [R5]
TST             R0, #1
BNE             loc_220AE4
MOV             R0, R5
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_220AE4
LDR             R0, =flt_6E1324
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_6E1328 - 0x6E1324)]
MOV             R0, R5
NOP
VMUL.F32        S0, S18, S18
VLDR            S21, =1.0
LDR             R0, =flt_6E1324
VMLA.F32        S0, S17, S17
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDREQ          S5, [R0]
VLDREQ          S4, [R0,#(flt_6E1328 - 0x6E1324)]
BEQ             loc_220B18
VSQRT.F32       S1, S0
VDIV.F32        S0, S21, S1
VMUL.F32        S5, S18, S0
VMUL.F32        S4, S17, S0
LDR             R0, [R4,#0x18]
VLDR            S3, =25.0
VLDR            S19, [R0,#0x1C]
VLDR            S18, [R0,#0xC]
ADD             R0, R4, #0x1C
VLDM            R0, {S0-S1}
LDR             R0, [R4,#4]
VMUL.F32        S0, S0, S3
VMUL.F32        S1, S1, S3
ADD             R0, R0, #0x400
VSUB.F32        S2, S18, S0
VMUL.F32        S0, S5, S3
VSUB.F32        S1, S19, S1
VMUL.F32        S3, S4, S3
VADD.F32        S0, S2, S0
VADD.F32        S1, S1, S3
VSTR            S0, [R0,#0x334]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S1, [R0,#0x338]
LDR             R0, [R4,#0x28]
TST             R0, #8
BEQ             loc_220C1C
LDRD            R0, R1, [R4,#0x14]
VLDR            S0, [R1,#0x1C]
VLDR            S1, [R0,#0x1C]
VLDR            S2, [R1,#0xC]
VLDR            S3, [R0,#0xC]
VSUB.F32        S17, S0, S1
LDR             R0, [R5]
VSUB.F32        S20, S2, S3
TST             R0, #1
BNE             loc_220BC4
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_220BC4
LDR             R0, =flt_6E1324
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
VMUL.F32        S0, S20, S20
LDR             R0, =flt_6E1324
VMLA.F32        S0, S17, S17
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [R0]
VLDREQ          S2, [R0,#(flt_6E1328 - 0x6E1324)]
BEQ             loc_220BF4
VSQRT.F32       S2, S0
VDIV.F32        S1, S21, S2
VMUL.F32        S0, S20, S1
VMUL.F32        S2, S17, S1
VLDR            S3, =-10.0
ADD             R1, SP, #0x70+var_30
VMUL.F32        S1, S0, S3
VMUL.F32        S0, S2, S3
VADD.F32        S1, S18, S1
VADD.F32        S0, S19, S0
VSTR            S1, [SP,#0x70+var_30]
VSTR            S0, [SP,#0x70+var_2C]
LDR             R0, [R4,#4]
BL              sub_505BC0
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8-D10}
POP             {R4,R5,PC}
