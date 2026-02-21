PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8-D10}
LDR             R0, [R0,#0x1A0]
VLDR            S17, =0.0
VLDR            S16, =2.0
TST             R0, #0x10
BEQ             loc_1E0548
VLDR            S0, [R4,#0x10]
VMOV.F32        S1, S16
VADD.F32        S0, S0, S16
BL              sub_5F63A4
VMOV.F32        S1, S16
VSTR            S0, [R4,#8]
BL              sub_5F63A4
VSTR            S0, [R4,#0x10]
VSTR            S0, [R4,#0x14]
MOV             R5, #0
VSTR            S17, [R4,#0x1C]
VMOV.F32        S1, S16
STRB            R5, [R4,#0x4D]
VLDR            S0, [R4,#4]
BL              sub_5F63A4
VSTR            S0, [R4,#0x58]
VSTR            S0, [R4,#0x5C]
VSTR            S17, [R4,#0x64]
STRB            R5, [R4,#0x95]
LDR             R0, [R4,#0x1A0]
MOV             R2, #0x18
MOV             R1, #0
BIC             R0, R0, #0x10
STR             R0, [R4,#0x1A0]
VSTR            S17, [R4,#0xBC]
ADD             R0, R4, #0xC0
BL              sub_110BE4
STRB            R5, [R4,#0xD8]
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14C00
ADD             R0, R0, #0x24 ; '$'
VLDR            S2, [R4,#0xC]
LDR             R0, [R0]
VLDR            S1, =1.5
VLDR            S0, [R4,#8]
VLDR            S3, [R0,#0x44]
VMUL.F32        S2, S3, S2
VMUL.F32        S18, S2, S1
VADD.F32        S1, S18, S16
VADD.F32        S0, S0, S1
VMOV.F32        S1, S16
BL              sub_5F63A4
VLDR            S1, =0.75
VSTR            S0, [R4,#8]
VLDR            S0, [R4,#4]
VMUL.F32        S18, S18, S1
VADD.F32        S1, S18, S16
VADD.F32        S0, S0, S1
VMOV.F32        S1, S16
BL              sub_5F63A4
VSTR            S0, [R4,#4]
LDR             R0, [R5]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14C00
ADD             R0, R0, #0x24 ; '$'
VLDR            S16, =1.0
LDR             R0, [R0]
VLDR            S19, =-1.0
VLDR            S0, [R0,#0x44]
ADD             R0, R4, #0x10
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VLDR            S20, =1.3333
VLDR            S0, [R4,#8]
VMOVGE.F32      S2, S16
VMOVLT.F32      S2, S19
VMOV.F32        S1, S20
BL              sub_1C839C
LDR             R0, [R5]
NOP
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14C00
ADD             R0, R0, #0x24 ; '$'
LDR             R0, [R0]
VLDR            S0, [R0,#0x44]
ADD             R0, R4, #0x58 ; 'X'
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S1, S20
VLDR            S0, [R4,#4]
VMOVLT.F32      S16, S19
VMOV.F32        S2, S16
BL              sub_1C839C
LDR             R0, [R4,#0x1A0]
LDR             R1, =0xAAAAAAAB
BIC             R0, R0, #8
TST             R0, #0x20
STR             R0, [R4,#0x1A0]
ORREQ           R0, R0, #0x20 ; ' '
STREQ           R0, [R4,#0x1A0]
LDRB            R0, [R4,#0xD8]
ADD             R0, R4, R0,LSL#2
VSTR            S18, [R0,#0xC0]
LDRB            R0, [R4,#0xD8]
ADD             R0, R0, #1
UMULL           R2, R1, R1, R0
MOV             R1, R1,LSR#2
SUB             R1, R1, R1,LSL#2
ADD             R0, R0, R1,LSL#1
STRB            R0, [R4,#0xD8]
ADD             R0, R4, #0xC4
VLDR            S0, [R4,#0xC0]
VLDR            S2, [R4,#0xCC]
VLDR            S1, [R4,#0xD0]
VLDM            R0, {S3-S4}
VADD.F32        S0, S3, S0
VLDR            S3, [R4,#0xD4]
VADD.F32        S0, S4, S0
VADD.F32        S0, S2, S0
VADD.F32        S0, S1, S0
VLDR            S1, =0.16667
VADD.F32        S0, S3, S0
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#0xBC]
VPOP            {D8-D10}
POP             {R4-R6,PC}
