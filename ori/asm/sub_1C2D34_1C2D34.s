PUSH            {R4,R5,LR}
MOV             R4, R1
LDR             R5, =off_6CE970
VPUSH           {D8}
SUB             SP, SP, #4
LDR             R0, [R5]
BL              sub_5EED80
VMOV            S0, R0
LDR             R0, [R5]
VLDR            S16, =0.0
VCVT.F32.S32    S17, S0
BL              sub_5EED90
VMUL.F32        S2, S17, S17
RSB             R0, R0, #0
VMOV            S0, R0
LDR             R0, =off_6CDD80
VSTR            S17, [R4]
VSTR            S16, [R4,#4]
VCVT.F32.S32    S1, S0
VMLA.F32        S2, S16, S16
VSTR            S1, [R4,#8]
LDR             R0, [R0]
VMOV.F32        S3, S2
LDR             R1, [R0,#8]
ADD             R0, R1, #0x100
VMLA.F32        S3, S1, S1
LDR             R2, [R1,#0x164]
STR             R2, [SP,#0x18+var_18]
VSQRT.F32       S0, S3
VMOV            S3, R2
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
BCC             loc_1C2DC4
VMOV            R3, S0
CMP             R3, #0x34000000
BGE             loc_1C2E20
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1C2E00
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1C2E00
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
LDM             R0, {R1,R2}
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R4,#8]
STM             R4, {R1,R2}
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4,R5,PC}
LDR             R1, [R1,#0x168]
VMOV            S3, R1
STR             R1, [SP,#0x18+var_18]
STR             R2, [SP,#0x18+var_18]
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
VMOV            S3, R2
VMOV            S4, R2
VMOVCC          S0, R1
VMLA.F32        S2, S1, S1
VSUB.F32        S0, S0, S3
VMOV            S3, R1
LDR             R1, [R0,#0x6C]
STR             R1, [SP,#0x18+var_18]
LDR             R0, [R0,#0x70]
VSUB.F32        S4, S3, S4
STR             R0, [SP,#0x18+var_18]
VDIV.F32        S3, S0, S4
VMOV            S0, R1
VMOV            S4, R0
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
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4,R5,PC}
