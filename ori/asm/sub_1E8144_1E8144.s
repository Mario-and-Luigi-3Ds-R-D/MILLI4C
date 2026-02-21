PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R5, R1
VLDR            S0, =100000.0
VLDR            S1, =-100000.0
VPUSH           {D8-D9}
SUB             SP, SP, #0x1C
LDR             R0, [R0]
LDR             R2, [R1]
MOV             R1, #0x1C00000
BIC             R0, R0, #2
AND             R2, R2, #2
ORR             R0, R0, R2
STR             R0, [R4]
LDR             R2, [R5]
BIC             R0, R0, #0x3C ; '<'
AND             R2, R2, #0xC
ORR             R0, R0, R2
STR             R0, [R4]
LDR             R3, [R5]
ORR             R0, R0, #0x8000000
BIC             R2, R0, #0x1C00000
MOV             R3, R3,LSL#12
MOV             R3, R3,LSR#16
STR             R3, [R4,#4]
LDR             R3, [R5,#4]
STR             R0, [R4]
STR             R3, [R4,#8]
LDR             R0, [R5]
LDR             R3, =unk_67DDDC
MOV             R0, R0,LSL#28
LDRB            R0, [R3,R0,LSR#30]
AND             R0, R1, R0,LSL#22
ORR             R2, R2, R0
STR             R2, [R4]
MOV             R3, R2,LSL#7
MOV             R2, #0
CMP             R2, R3,LSR#29
VSTR            S0, [R4,#0x80]
VSTR            S1, [R4,#0x84]
ADD             R3, R4, #0x78 ; 'x'
ADD             R1, R5, #8
VSTM            R3, {S0-S1}
ADD             R0, R4, #0xC
BGE             loc_1E82B0
LDRSH           R3, [R1]
ADD             R2, R2, #1
VMOV            S0, R3
VCVT.F32.S32    S0, S0
VSTR            S0, [R0]
LDRSH           R3, [R1,#6]
VMOV            S1, R3
VCVT.F32.S32    S1, S1
VSTR            S1, [R0,#4]
LDRSH           R3, [R1,#4]
VMOV            S1, R3
VCVT.F32.S32    S1, S1
VSTR            S1, [R0,#8]
LDRSH           R3, [R1,#2]
ADD             R1, R1, #8
VMOV            S1, R3
VCVT.F32.S32    S1, S1
VSTR            S1, [R0,#0xC]
VLDR            S1, [R4,#0x78]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [R4,#0x78]
VLDR            S0, [R0]
VLDR            S1, [R4,#0x7C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
VSTR            S0, [R4,#0x7C]
VLDR            S0, [R0,#0xC]
VLDR            S1, [R4,#0x80]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [R4,#0x80]
VLDR            S0, [R0,#0xC]
VLDR            S1, [R4,#0x84]
LDR             R3, [R4]
ADD             R0, R0, #0x10
VCMPE.F32       S0, S1
MOV             R3, R3,LSL#7
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
CMP             R2, R3,LSR#29
VSTR            S0, [R4,#0x84]
BLT             loc_1E81F8
LDR             R0, [R4]
MOV             R1, #3
MOV             R3, #0x3C00
MOV             R2, R0,LSL#7
BIC             R0, R0, #0x3C0000
CMP             R1, R2,LSR#29
MOVEQ           R1, #7
MOVNE           R1, #0xF
MOV             R2, #0x3C0000
AND             R2, R2, R1,LSL#18
ORR             R0, R0, R2
MOV             R2, #0x3C0
AND             R3, R3, R0,LSR#8
BIC             R0, R0, #0x3C00
ORR             R0, R0, R3
AND             R2, R2, R0,LSR#4
BIC             R0, R0, #0x3C0
ORR             R0, R0, R2
STR             R0, [R4]
LDR             R2, [R5]
BIC             R0, R0, #0x3C000
TST             R2, #2
MOVNE           R1, #0
MOV             R2, #0x3C000
AND             R1, R2, R1,LSL#14
ORR             R0, R0, R1
TST             R0, #0x3C
STR             R0, [R4]
LDRNE           R0, [R4]
BNE             loc_1E83E8
VLDR            S2, [R4,#0xC]
VLDR            S6, [R4,#0x1C]
VLDR            S4, [R4,#0x18]
VLDR            S5, [R4,#0x28]
VADD.F32        S2, S2, S6
VLDR            S1, [R4,#0x2C]
VADD.F32        S4, S4, S5
VLDR            S3, [R4,#0x38]
VLDR            S0, =0.33333
MOV             R3, #0
ADD             R2, SP, #0x40+var_38
MOV             R1, #1
MOV             R0, R4
VADD.F32        S1, S2, S1
VADD.F32        S2, S4, S3
VMUL.F32        S17, S1, S0
VMUL.F32        S16, S2, S0
VMOV.F32        S0, S17
VMOV.F32        S1, S16
BL              sub_5C8020
VLDR            S18, =1.0
VMOV.F32        S1, S16
MOV             R3, #0
VADD.F32        S0, S17, S18
ADD             R2, SP, #0x40+var_34
MOV             R1, #1
MOV             R0, R4
BL              sub_5C8020
VADD.F32        S1, S16, S18
VMOV.F32        S0, S17
MOV             R3, #0
ADD             R2, SP, #0x40+var_3C
MOV             R1, #1
MOV             R0, R4
BL              sub_5C8020
VLDR            S1, [SP,#0x40+var_38]
VLDR            S0, [SP,#0x40+var_34]
VLDR            S2, [SP,#0x40+var_3C]
LDR             R0, [R4]
VSUB.F32        S0, S1, S0
VSUB.F32        S1, S1, S2
BIC             R0, R0, #0x6000000
VABS.F32        S0, S0
VABS.F32        S1, S1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
ORRGT           R0, R0, #0x2000000
STR             R0, [R4]
BIC             R0, R0, #0xF0000000
STR             R0, [R4]
LDRH            R3, [R5,#0x28]
LDRB            R12, [R5,#0x2A]
LDRB            R0, [R5,#0x2B]
LDRH            R2, [R5,#0x2C]
STRH            R3, [SP,#0x40+var_38]
STRB            R12, [SP,#0x40+var_38+2]
ADD             R6, SP, #0x40+var_38
ADD             R7, R4, #0x4C ; 'L'
STRB            R0, [SP,#0x40+var_38+3]
MOV             R1, R6
MOV             R0, R7
STRH            R2, [SP,#0x40+var_34]
BL              sub_141EE8
LDRH            R12, [R5,#0x30]
LDRB            R2, [R5,#0x32]
LDRB            R3, [R5,#0x33]
LDRH            R0, [R5,#0x34]
STRH            R12, [SP,#0x40+var_38]
ADD             R7, R4, #0x52 ; 'R'
STRB            R2, [SP,#0x40+var_38+2]
STRH            R0, [SP,#0x40+var_34]
MOV             R1, R6
MOV             R0, R7
STRB            R3, [SP,#0x40+var_38+3]
BL              sub_141EE8
MOV             R2, #0x20 ; ' '
MOV             R1, #0
ADD             R0, R4, #0x58 ; 'X'
BL              sub_110BE4
LDR             R0, [R5]
LDR             R1, [R4]
AND             R0, R0, #1
BIC             R1, R1, #1
ORR             R0, R0, R1
STR             R0, [R4]
ADD             SP, SP, #0x1C
VPOP            {D8-D9}
POP             {R4-R7,PC}
