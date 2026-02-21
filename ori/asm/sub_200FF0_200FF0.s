PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0xAC]
CMP             R0, #0
BEQ             locret_2010EC
LDRSH           R0, [R4,#0x68]
CMP             R0, #0
BGT             loc_201030
MOV             R0, R4
POP             {R4,LR}
B               sub_2012D8
SUB             R0, R0, #1
SXTH            R0, R0
CMP             R0, #0
STRH            R0, [R4,#0x68]
BGT             loc_201080
ADD             R0, R4, #8
BL              sub_5A18EC
VLDR            S0, =1.0
VLDR            S3, =90.0
VSTR            S0, [R4,#0x14]
VSTR            S0, [R4,#0xC]
LDRSH           R0, [R4,#0x6A]
VLDR            S2, =-90.0
MOV             R1, #0
VMOV            S0, R0
ADD             R0, R4, #8
POP             {R4,LR}
VCVT.F32.S32    S1, S0
VLDR            S0, =2.0
B               sub_5A15F4
LDRSH           R1, [R4,#0x6E]
CMP             R0, R1
BGT             loc_2010F0
VMOV            S0, R0
VMOV            S1, R1
VLDR            S2, =12.566
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VDIV.F32        S3, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S3, S2
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S1, =0.0
LDRH            R0, [R4,#0x70]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S2, =-0.1
VMOVGT.F32      S0, S1
TST             R0, #1
VLDREQ          S1, =0.5
VLDRNE          S1, =1.5
TST             R0, #2
VMUL.F32        S0, S0, S2
VADDEQ.F32      S0, S1, S0
VSUBNE.F32      S0, S1, S0
VSTR            S0, [R4,#0x3C]
POP             {R4,PC}
ADD             R0, R4, #8
BL              sub_5F1964
CMP             R0, #0
NOP
BEQ             locret_2010EC
MOV             R0, R4
POP             {R4,LR}
B               sub_201448
