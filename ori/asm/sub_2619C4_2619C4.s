PUSH            {R4,LR}
BL              sub_25FB84
MOV             R1, R0
MOV             R2, #2
VLDR            S2, =0.7
STR             R2, [R0,#0x468]!
VLDR            S3, =0.8
VSTR            S2, [R0,#4]
ADD             R2, R0, #8
VLDR            S0, =0.0
VLDR            S1, =1.0
VSTM            R2, {S2-S3}
ADD             R2, R1, #0x400
VSTR            S0, [R0,#0x18]
ADD             R0, R0, #0x10
VSTM            R0, {S1-S2}
MOV             R0, R1
VLDR            S4, [R1,#0x134]
VLDR            S3, [R1,#0x30C]
VDIV.F32        S2, S1, S4
VMUL.F32        S2, S2, S3
VSTR            S2, [R2,#0x84]
VLDR            S2, [R1,#0x130]
VLDR            S4, [R1,#0x308]
VDIV.F32        S3, S1, S2
VMUL.F32        S1, S3, S4
VSTR            S1, [R2,#0x88]
VLDR            S1, [R1,#0x2FC]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S1, S1
VSTRCC          S1, [R2,#0x8C]
VSTRCS          S0, [R2,#0x8C]
VLDR            S1, [R1,#0x338]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S0, S1
VSTR            S0, [R2,#0x90]
POP             {R4,PC}
