PUSH            {R4-R11,LR}
MOV             R5, R0
VPUSH           {D8-D9}
VMOV.F32        S16, S0
SUB             SP, SP, #0x64
BL              sub_2835A8
ADD             R0, R5, #0x24 ; '$'
BL              sub_28AEEC
CMP             R0, #0
BEQ             loc_2839C8
ADD             SP, SP, #0x64 ; 'd'
ADD             R1, R5, #0x24 ; '$'
VPOP            {D8-D9}
ADD             R0, R5, #0x3F8
POP             {R4-R11,LR}
B               sub_28BF94
SXTH            R1, R0
VMOV            S0, R1
MOV             R2, R0,ASR#16
VMOV            S1, R2
VLDR            S4, =-1800.0
ADD             R1, R5, #0x400
ADD             R1, R1, #0x5C ; '\'
VCVT.F32.S32    S6, S0
ADD             R7, R5, #0x400
VCVT.F32.S32    S0, S1
ADD             R7, R7, #0x58 ; 'X'
VLDR            S5, =-4712.4
VLDR            S8, [R7]
VLDR            S2, [R5,#0x2C]
VLDR            S3, [R5,#0x24]
VMUL.F32        S8, S8, S16
VLDR            S18, =0.0
VMUL.F32        S1, S6, S4
VLDM            R1, {S6-S7}
VMUL.F32        S0, S0, S5
SXTH            R1, R0
MOV             R0, R0,ASR#16
VMUL.F32        S6, S6, S16
VMUL.F32        S7, S7, S16
VLDR            S17, =3.4028e38
MOV             R3, #4
VADD.F32        S1, S3, S1
VADD.F32        S3, S3, S8
VADD.F32        S0, S2, S0
VMOV            S8, R0
VADD.F32        S6, S18, S6
VADD.F32        S7, S2, S7
VMOV            S2, R1
ADD             R1, SP, #0x98+var_6C
VCVT.F32.S32    S8, S8
VCVT.F32.S32    S2, S2
VMUL.F32        S2, S2, S4
VMUL.F32        S4, S8, S5
VADD.F32        S2, S3, S2
VADD.F32        S4, S7, S4
VADD.F32        S3, S6, S18
VSUB.F32        S2, S2, S1
VSUB.F32        S4, S4, S0
VSUB.F32        S3, S3, S18
VSTM            R1, {S2-S4}
LDR             R0, [R5,#0x464]
LDR             R0, [R0,#0x18]
VSTR            S1, [SP,#0x98+var_60]
VSTR            S18, [SP,#0x98+var_5C]
VSTR            S0, [SP,#0x98+var_58]
STR             R0, [SP,#0x98+var_54]
VLDR            S0, [R5,#0x24]
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R5,#0x2C]
MOVGT           R0, #1
VCMPE.F32       S0, S18
MOVLE           R0, #0
VMRS            APSR_nzcv, FPSCR
MOVGT           R1, #1
MOVLE           R1, #0
ORR             R0, R0, R1,LSL#1
LDR             R1, [R5,#0x464]
LDR             R1, [R1]
LDR             R2, [R1]
LDR             R1, [R1,#4]
LDR             R2, [R2]
ADD             R1, R1, R2
LDR             R2, [R1,R0,LSL#3]
ADD             R0, R3, R0,LSL#3
LDR             R0, [R1,R0]
ADD             R4, R1, R2
ADD             R2, R2, R1
ADD             R1, R0, R0,LSL#2
ADD             R0, R1, R0,LSL#3
ADD             R9, SP, #0x98+var_60
ADD             R6, R2, R0,LSL#2
CMP             R4, R6
ADD             R8, SP, #0x98+var_6C
ADDNE           R10, SP, #0x98+var_50
ADDNE           R11, SP, #0x98+var_44
BEQ             loc_283B4C
ADD             R3, SP, #0x98+var_80; int
MOV             R2, R4; int
MOV             R1, R8; int
MOV             R0, R9; int
STR             R10, [SP,#0x98+var_94]; float
STR             R11, [SP,#0x98+var_98]; int
BL              sub_28DF64
CMP             R0, #0
VLDRNE          S0, [SP,#0x98+var_80]
ADD             R4, R4, #0x34 ; '4'
VCMPENE.F32     S17, S0
VMRSNE          APSR_nzcv, FPSCR
VMOVGT.F32      S17, S0
CMP             R4, R6
BNE             loc_283B10
LDR             R1, =0x7F7FFFFF
VMOV            R0, S17
CMP             R0, R1
BEQ             loc_283B70
MOV             R0, R5
BL              sub_2837F8
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D9}
POP             {R4-R11,PC}
VLDR            S0, [R7]
VLDR            S1, [R7,#8]
VLDR            S3, [R5,#0x24]
VMUL.F32        S0, S0, S16
VMUL.F32        S1, S1, S16
VLDR            S2, [R5,#0x2C]
MOV             R1, SP
ADD             R0, R5, #0x3F8
VADD.F32        S0, S3, S0
VADD.F32        S1, S2, S1
VSTR            S0, [SP,#0x98+var_98]
VSTR            S1, [SP,#0x98+var_90]
VSTR            S18, [SP,#0x98+var_94]
BL              sub_28BF94
MOV             R1, SP
MOV             R0, R5
BL              sub_14E984
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D9}
POP             {R4-R11,PC}
