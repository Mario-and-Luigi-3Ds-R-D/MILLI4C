PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R6, =off_6CE970
MOV             R4, R1
VPUSH           {D8}
LDR             R0, [R6]
BL              sub_5EED80
VMOV            S0, R0
LDR             R0, [R6]
VLDR            S16, =0.0
VCVT.F32.S32    S17, S0
BL              sub_5EED90
VMUL.F32        S2, S17, S17
RSB             R0, R0, #0
VMOV            S0, R0
VSTR            S17, [R4]
VSTR            S16, [R4,#4]
VCVT.F32.S32    S1, S0
VMLA.F32        S2, S16, S16
VSTR            S1, [R4,#8]
LDRB            R0, [R5,#0x4DC]
VMOV.F32        S3, S2
CMP             R0, #0
VMLA.F32        S3, S1, S1
VSQRT.F32       S0, S3
BEQ             loc_28E874
LDR             R0, [R5,#0x4D8]
VLDR            S4, [R0,#0x38]
VCMPE.F32       S4, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_28E874
VMOV            R1, S0
CMP             R1, #0x34000000
BGE             loc_28E8CC
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_28E8B0
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_28E8B0
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R1, =flt_711FE4
LDM             R1, {R0,R2}
LDR             R1, [R1,#(flt_711FEC - 0x711FE4)]
STR             R1, [R4,#8]
STM             R4, {R0,R2}
VPOP            {D8}
POP             {R4-R6,PC}
ADD             R0, R0, #0x14
VLDR            S3, [R0,#0x28]
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
VSUB.F32        S5, S3, S4
VMLA.F32        S2, S1, S1
VMOVCC.F32      S0, S3
VSUB.F32        S0, S0, S4
VLDR            S4, [R0,#0x30]
VDIV.F32        S3, S0, S5
VLDR            S0, [R0,#0x2C]
VSUB.F32        S4, S4, S0
VMLA.F32        S0, S4, S3
VSQRT.F32       S4, S2
VLDR            S3, =1.0
VDIV.F32        S2, S3, S4
VMUL.F32        S3, S16, S2
VMUL.F32        S1, S1, S2
VMUL.F32        S4, S17, S2
VMUL.F32        S2, S3, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S4, S0
VSTR            S4, [R4]
VSTR            S0, [R4]
VSTR            S2, [R4,#4]
VSTR            S1, [R4,#8]
VPOP            {D8}
POP             {R4-R6,PC}
