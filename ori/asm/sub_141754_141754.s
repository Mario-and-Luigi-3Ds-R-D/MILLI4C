MOV             R2, #0xFF000000
PUSH            {R4-R8,R10}
CMP             R2, R1,LSL#1
MOVLS           R1, #0xFFFFFFFF
STRLS           R1, [R0]
POPLS           {R4-R8,R10}
BXLS            LR
MOV             R2, #0x80000000
ORR             R3, R2, R1,LSL#8
MOV             R2, R1,LSL#1
LDR             R4, =(unk_69B610 - 0x14179C)
MOV             R2, R2,LSR#24
SUB             R12, R2, #0x78 ; 'x'
AND             R6, R12, #0x1F
MOV             R2, R12,ASR#5
RSB             R12, R6, #0x20 ; ' '
ADD             R4, PC, R4; unk_69B610
VLDR            S3, =0.0000019073
LDR             R5, [R4,R2,LSL#2]
ADD             R8, R4, R2,LSL#2
VLDR            S4, =3.6562e-10
LDR             R2, [R8,#4]
MOV             R5, R5,LSL R6
MOV             R7, R2,LSL R6
LDR             R4, [R8,#8]
LDR             R8, [R8,#0xC]
ORR             R10, R5, R2,LSR R12
MOV             R6, R4,LSL R6
ORR             R6, R6, R8,LSR R12
ORR             R7, R7, R4,LSR R12
UMULL           R5, R2, R10, R3
UMULL           R12, R4, R7, R3
UMULL           R7, R3, R6, R3
ADDS            R3, R3, R12
ADCS            R12, R4, R5
VMOV            S0, R3
ADC             R2, R2, #0
ADD             R4, R2, #0x20 ; ' '
MOV             R5, R12,LSR#19
MOV             R2, R2,LSL#26
VCVT.F32.U32    S0, S0
ORR             R5, R2, R5,LSL#13
VMOV            S1, R5
MOV             R2, R12,LSL#13
MOV             R4, R4,LSR#6
TST             R1, #0x80000000
STR             R4, [R0]
VCVT.F32.S32    S2, S1
VMOV            S1, R2
POPEQ           {R4-R8,R10}
VCVT.F32.U32    S1, S1
VMUL.F32        S3, S1, S3
VLDR            S1, =3.638e-12
VMUL.F32        S0, S0, S1
VADD.F32        S1, S2, S3
VADD.F32        S1, S1, S0
VMOV            R2, S1
ADD             R2, R2, #0x800
MOV             R2, R2,LSR#12
MOV             R2, R2,LSL#12
VMOV            S1, R2
VSUB.F32        S2, S1, S2
VSUB.F32        S2, S2, S3
VLDR            S3, =3.6573e-10
VSUB.F32        S2, S0, S2
VLDR            S0, =1.1265e-13
VMUL.F32        S0, S1, S0
VMLA.F32        S0, S2, S3
VMLA.F32        S0, S1, S4
BXEQ            LR
RSB             R1, R4, #0x10000000
STR             R1, [R0]
POP             {R4-R8,R10}
VNEG.F32        S0, S0
BX              LR
