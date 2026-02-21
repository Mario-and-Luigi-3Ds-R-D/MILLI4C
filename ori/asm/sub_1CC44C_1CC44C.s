PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
MOV             R5, R1
MOV             R4, R0
MOV             R1, SP
BL              sub_5D0574
VLDR            S1, [R5]
VLDR            S0, [SP,#0x18+var_18]
ADD             R4, R4, #0x400
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x18+var_18]
VLDR            S2, [R5,#8]
VLDR            S1, [SP,#0x18+var_10]
VMUL.F32        S0, S0, S0
VSUB.F32        S2, S1, S2
VSTR            S2, [SP,#0x18+var_10]
VLDR            S1, [SP,#0x18+var_14]
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VSQRT.F32       S2, S0
VLDR            S0, =0.0
VSTR            S2, [R4,#0x1D0]
VCMP.F32        S2, S0
VMRS            APSR_nzcv, FPSCR
VSTREQ          S0, [R4,#0x1D4]
BEQ             loc_1CC4C0
VDIV.F32        S0, S1, S2
BL              sub_5F5B2C
VSTR            S0, [R4,#0x1D4]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
