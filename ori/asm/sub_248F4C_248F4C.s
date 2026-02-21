PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R7, R1
MOV             R4, R2
VPUSH           {D8-D9}
VMOV.F32        S17, S0
SUB             SP, SP, #0x10
LDR             R0, [R0,#0x540]
CMP             R0, R7
BEQ             loc_2491C4
MOV             R0, #0
VLDR            S18, =1.0
VLDR            S16, =0.0
STRB            R0, [R5,#0x555]
VMOV.F32        S0, S18
VMOV.F32        S2, S16
ADD             R2, R5, #0x40 ; '@'
MOV             R1, R7
MOV             R0, R2
STR             R7, [R5,#0x540]
VMOV.F32        S1, S0
BL              sub_43A868
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_248FDC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_248FDC
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
VLDR            S2, [R5,#0x40]
VLDR            S1, [R5,#0x44]
VLDR            S3, [R5,#0x48]
VMUL.F32        S0, S2, S2
LDR             R0, =flt_711FE4
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S3, S3
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_249014
VLDR            S2, [R0]
VLDR            S1, [R0,#(flt_711FE8 - 0x711FE4)]
VLDR            S0, [R0,#(flt_711FEC - 0x711FE4)]
B               loc_249028
VSQRT.F32       S4, S0
VDIV.F32        S0, S18, S4
VMUL.F32        S2, S2, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S3, S0
VLDM            R4, {S3-S5}
ADD             R0, R5, #4
MOV             R8, SP
VMUL.F32        S2, S2, S17
VMUL.F32        S1, S1, S17
VMUL.F32        S0, S0, S17
VADD.F32        S2, S3, S2
VADD.F32        S1, S4, S1
VADD.F32        S0, S5, S0
VSTR            S2, [SP,#0x38+var_38]
VSTR            S1, [SP,#0x38+var_34]
VMOV            R2, S1
VMOV            R3, S0
VSTR            S0, [SP,#0x38+var_30]
VSTR            S2, [R5,#0x70]
STRD            R2, R3, [R0,#0x70]
LDR             R6, [R5,#8]
LDR             R4, [R6,#8]
CMP             R4, R6
BEQ             loc_249098
LDR             R1, [R4]
MOV             R0, R4
LDR             R2, [R1,#0x14]
MOV             R1, R8
BLX             R2
LDR             R4, [R4,#8]
CMP             R4, R6
BNE             loc_249078
LDR             R0, =off_6CDD80
LDR             R2, [R5,#0x544]
LDR             R0, [R0]
LDR             R1, [R0,#8]
LDR             R3, [R1,#0x1B8]
CMP             R3, R2
LDRBLS          R2, [R7,#0x40]
CMPLS           R2, #0
BNE             loc_2491B0
LDR             R2, [R1,#0x1FC]
VMOV            S1, R2
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R1,#0x200]
STR             R2, [SP,#0x38+var_38]
VLDR            S2, [R5,#0x70]
VMOV            S0, R2
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_249124
LDR             R1, [R1,#0x90]
VSUB.F32        S2, S1, S2
VMOV.F32        S0, S16
VMOV            S1, R1
STR             R1, [SP,#0x38+var_38]
VLDR            S3, [R5,#0x78]
VSUB.F32        S1, S1, S3
VMUL.F32        S3, S2, S2
VMLA.F32        S3, S0, S0
VMLA.F32        S3, S1, S1
VSQRT.F32       S4, S3
VDIV.F32        S3, S18, S4
VMUL.F32        S16, S2, S3
VMUL.F32        S17, S0, S3
VMUL.F32        S18, S1, S3
B               loc_249170
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S17, S16
BLE             loc_249170
LDR             R1, [R1,#0x90]
VSUB.F32        S2, S0, S2
VMOV.F32        S1, S16
VMOV            S0, R1
STR             R1, [SP,#0x38+var_38]
VLDR            S3, [R5,#0x78]
VSUB.F32        S0, S0, S3
VMUL.F32        S3, S2, S2
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S0, S0
VSQRT.F32       S4, S3
VDIV.F32        S3, S18, S4
VMUL.F32        S16, S2, S3
VMUL.F32        S17, S1, S3
VMUL.F32        S18, S0, S3
LDR             R1, [R0,#8]
ADD             R2, R5, #0x40 ; '@'
LDR             R1, [R1,#0x1F4]
STR             R1, [SP,#0x38+var_38]
VLDR            S0, [SP,#0x38+var_38]
ADD             R1, R5, #0x400
VSTR            S0, [R1,#0x150]
VMUL.F32        S1, S16, S0
VMUL.F32        S2, S17, S0
VMUL.F32        S0, S18, S0
VSTR            S0, [R5,#0x48]
VSTM            R2, {S1-S2}
LDRB            R2, [R5,#0x4EA]
ADD             R2, R2, #1
STRB            R2, [R5,#0x4EA]
BL              sub_387E7C
ADD             SP, SP, #0x10
MOV             R0, R5
VPOP            {D8-D9}
POP             {R4-R8,LR}
B               sub_248B74
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R8,PC}
