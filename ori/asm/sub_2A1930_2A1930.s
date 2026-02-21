PUSH            {R4-R6,LR}
MOV             R5, #0
LDR             R1, =off_6B3E20
LDR             R2, =off_6B77F0
VPUSH           {D8}
STR             R1, [R0]
STR             R5, [R0,#8]
STR             R5, [R0,#0xC]
STRB            R5, [R0,#0x10]
STR             R0, [R0,#0x18]
STR             R2, [R0,#0x14]
LDR             R2, =off_6B7874
STR             R0, [R0,#0x20]
STR             R2, [R0,#0x1C]
LDR             R2, =off_6B7AC0
STR             R0, [R0,#0x28]
STR             R2, [R0,#0x24]
LDR             R2, =off_6B780C
STR             R0, [R0,#0x50]
STR             R2, [R0,#0x4C]
LDR             R2, =off_6B7920
STR             R0, [R0,#0x5C]
STR             R2, [R0,#0x58]
LDR             R2, =off_6B79EC
STR             R0, [R0,#0x68]
STR             R2, [R0,#0x64]
LDR             R2, =off_6B793C
STR             R0, [R0,#0x74]
STR             R2, [R0,#0x70]!
STR             R5, [R0,#0xC]!
ADD             R0, R0, #4
BL              sub_5931A8
ADD             R0, R0, #0x104
BL              sub_5A2BD0
LDR             R1, =off_6B7C1C
MOV             R3, #3
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R2, R0, #0x30 ; '0'
MOV             R1, #3
STR             R2, [R0,#0x28]
STRB            R1, [R0,#0x2C]
ADD             R0, R0, #0xA8
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R2, R0, #0x18
MOV             R1, #1
STR             R2, [R0,#0x10]
SUB             R4, R0, #0x22C
STRB            R1, [R0,#0x14]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x260
LDR             R0, [R0,#8]
VLDR            S16, =0.0
STR             R0, [R4,#0x268]
STM             R3, {R1,R2}
STRB            R5, [R4,#0x272]
STRB            R5, [R4,#0x273]
STRB            R5, [R4,#0x274]
STRB            R5, [R4,#0x277]
VSTR            S16, [R4,#0x280]
STRB            R5, [R4,#0x275]
ADD             R5, R4, #0x184
BL              sub_4635D8
MOV             R6, R0
MOV             R0, R5
BL              sub_5A26D0
LDM             R6, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
VLDR            S1, =2.0
STM             R3, {R0-R2}
STM             R5, {R0-R2}
LDR             R0, =off_6CDFD8
LDR             R0, [R0]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x88]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S16, S1
BGT             loc_2A1AA8
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S16, S0
VLDR            S1, =-0.5
VLDR            S0, =0.5
LDR             R0, =dword_6D1F40
VMUL.F32        S17, S16, S1
VMUL.F32        S16, S16, S0
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, =0.000015259
MOV             R0, R4
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VSUB.F32        S1, S16, S17
VMUL.F32        S0, S0, S1
VLDR            S1, =1.0
VADD.F32        S0, S17, S0
VSTR            S0, [R4,#0x280]
VSTR            S1, [R4,#0x27C]
VPOP            {D8}
POP             {R4-R6,PC}
