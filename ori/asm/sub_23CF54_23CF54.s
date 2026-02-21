PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R7, #0
LDR             R6, =off_6D1648
VPUSH           {D8-D11}
SUB             SP, SP, #0x1C
LDR             R1, [R0,#8]
LDR             R0, =0x4C8
LDRH            R0, [R0,R1]
CMP             R0, #0x29 ; ')'
BEQ             loc_23D158
BGE             loc_23CFA0
CMP             R0, #0
CMPNE           R0, #0x13
BEQ             loc_23CFB4
CMP             R0, #0x27 ; '''
CMPNE           R0, #0x28 ; '('
BEQ             loc_23D158
B               loc_23D1F8
CMP             R0, #0x2A ; '*'
CMPNE           R0, #0x2B ; '+'
BEQ             loc_23D158
CMP             R0, #0xFE
BNE             loc_23D1F8
ADD             R0, R1, #0x400
ADD             R0, R0, #0xCC
VLDR            S2, =1.0
LDRSH           R1, [R0,#2]
LDRSH           R0, [R0]
VMOV            S1, R1
VMOV            S0, R0
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S2
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_23D1F8
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
LDRB            R0, [R0,#0x44]
CMP             R0, #0
BEQ             loc_23D1F8
LDR             R0, [R4,#8]
VLDR            S23, =30.0
VLDR            S20, =15.0
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0xC8]
CMP             R0, #0
BEQ             loc_23D028
CMP             R0, #0x13
BEQ             loc_23D044
CMP             R0, #0xFE
BNE             loc_23D05C
LDR             R0, [R4]
MOV             R2, SP
MOV             R1, #0xFF
LDR             R3, [R0,#0x54]
MOV             R0, R4
BLX             R3
B               loc_23D05C
LDR             R0, [R4]
MOV             R2, SP
MOV             R1, #0xFD
LDR             R3, [R0,#0x54]
MOV             R0, R4
BLX             R3
ADD             R0, SP, #0x50+var_48
VLDR            S21, [SP,#0x50+var_4C]
VLDM            R0, {S16-S19}
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A186C
VMOV.F32        S22, S23
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S22
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
VLDR            S0, [SP,#0x50+var_50]
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R6]
NOP
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S20
VMOV.F32        S0, S21
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1EC
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R6]
NOP
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
VLDR            S0, [R0,#0x28]
LDR             R0, [R6]
VLDR            S1, [R1,#0x10C]
VSUB.F32        S20, S1, S0
LDR             R0, [R0,#0xBC]
ADD             R5, R0, #0x16800
ADD             R5, R5, #0x388
MOV             R0, R5
BL              sub_5A18EC
VSTR            S20, [R5,#0xC]
VSTR            S20, [R5,#4]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R5, R0, #0x16800
ADD             R5, R5, #0x354
MOV             R0, R5
BL              sub_5A18EC
VSTR            S20, [R5,#0xC]
VSTR            S20, [R5,#4]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
VMOV.F32        S4, S19
VMOV.F32        S3, S18
VMOV.F32        S2, S17
VMOV.F32        S1, S16
VMOV.F32        S0, S23
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_5A137C
NOP
NOP
B               loc_23D1F8
LDR             R0, [R4,#0xAC4]
LDR             R5, [R0,#0xAA8]
LDRB            R0, [R5,#0x84]
CMP             R0, #0
BEQ             loc_23D1F8
ADD             R0, R5, #0x14
VLDR            S17, [R5,#0x74]
VLDM            R0, {S0-S1}
LDR             R0, [R4,#4]
ADD             R0, R0, #0x108
VLDM            R0, {S2-S3}
LDR             R0, [R6]
VSUB.F32        S16, S2, S0
VSUB.F32        S18, S3, S1
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A186C
LDR             R0, [R6]
NOP
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S17
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
VLDR            S0, [R5,#0x1C]
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R6]
NOP
LDR             R0, [R0,#0xBC]
VMOV.F32        S4, S18
VMOV.F32        S3, S18
VMOV.F32        S2, S16
VMOV.F32        S1, S16
VMOV.F32        S0, S17
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_5A137C
STRB            R7, [R5,#0x84]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
BL              sub_45AA4C
ADD             SP, SP, #0x1C
VPOP            {D8-D11}
POP             {R4-R7,PC}
