PUSH            {R5,LR}
MOV             R5, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
MOV             R1, R0
VLDR            S16, =0.0
VLDR            S17, =3000.0
MOV             R0, SP
BL              sub_4800C0
VLDR            S0, [SP,#0x20+var_1C]
LDR             R1, =0x4513431D
VLDR            S1, =4712.4
VADD.F32        S0, S0, S17
VLDR            S2, =2356.2
VSTR            S0, [SP,#0x20+var_1C]
VLDR            S0, [SP,#0x20+var_18]
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x20+var_18]
VSTR            S16, [SP,#0x20+var_20]
LDR             R0, [R5,#8]
CMP             R0, R1
BGT             loc_28AF60
ORR             R1, R1, R1,LSL#31
CMP             R0, R1
BHI             loc_28AF60
MOV             R0, #0
UXTH            R1, R4
ORR             R0, R1, R0,LSL#16
B               loc_28AF90
VMOV            S0, R0
UXTH            R1, R4
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VLDR            S3, =0.00021221
VNEGCC.F32      S0, S0
VSUB.F32        S0, S0, S2
VADD.F32        S0, S0, S1
VMUL.F32        S0, S0, S3
VCVT.S32.F32    S0, S0
VMOV            R0, S0
ORR             R0, R1, R0,LSL#16
VLDR            S0, [R5]
VLDR            S1, =0.0011111
MOV             R1, R0,LSR#16
ADD             SP, SP, #0x10
VMUL.F32        S0, S0, S1
MOV             R1, R1,LSL#16
VPOP            {D8}
VCVT.S32.F32    S0, S0
VMOV            R0, S0
UXTH            R0, R0
ORR             R0, R0, R1
POP             {R5,PC}
