PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R8, R1
MOV             R7, R2
VPUSH           {D8-D9}
MOV             R1, R0
MOV             R2, #0
VLDR            S16, =0.0
LDR             R0, =0x20001
VMOV.F32        S0, S16
VMOV.F32        S1, S0
BL              sub_1459F8
ADD             R4, R5, #0xA00
LDRH            R0, [R4,#0xA8]
TST             R0, #0x20
TSTNE           R0, #8
BEQ             loc_173298
TST             R0, #7
BEQ             loc_173288
LDRB            R1, [R5,#0xAB4]
CMP             R1, #0
LDRHNE          R2, [R4,#0xAC]
CMPNE           R2, #0
BNE             loc_173288
AND             R2, R0, #7
CMP             R2, #3
CMPNE           R2, #4
BNE             loc_173298
CMP             R1, #0
BEQ             loc_173298
CMP             R7, #0
BEQ             loc_173288
LDRH            R1, [R4,#0xAC]
BICS            R1, R1, #1
MOVEQ           R1, #1
STRBEQ          R1, [R5,#0xAB4]
TST             R0, #0x10
MOV             R1, #0
BNE             loc_1732B0
B               loc_1732A4
VPOP            {D8-D9}
MOV             R0, #0
POP             {R4-R8,PC}
ORR             R0, R0, #0x10
STRH            R1, [R4,#0xB0]
STRH            R0, [R4,#0xA8]
ADD             R0, R5, #0x800
STRH            R1, [R4,#0xAE]
ADD             R0, R0, #0x2CC
VLDR            S4, [R5,#0x108]
VLDR            S0, [R5,#0x10C]
ADD             R6, R5, #0x800
VLDM            R0, {S5-S6}
VLDR            S1, =20.0
VLDR            S3, [R6,#0x2C0]
VLDR            S2, [R6,#0x2C4]
VSUB.F32        S5, S5, S4
VSUB.F32        S4, S6, S0
VMUL.F32        S0, S3, S1
VMUL.F32        S17, S2, S1
VLDR            S19, =8.0
VMUL.F32        S3, S5, S3
VMUL.F32        S18, S4, S2
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
LDREQ           R0, [R6,#0x2FC]
STREQ           R0, [R6,#0x300]
BEQ             loc_17331C
VABS.F32        S1, S0
VMOV.F32        S2, S19
VMOV.F32        S0, S3
ADD             R0, R5, #0xAF0
BL              sub_5A2E74
VCMP.F32        S17, S16
VMRS            APSR_nzcv, FPSCR
LDREQ           R0, [R6,#0x318]
STREQ           R0, [R6,#0x31C]
BEQ             loc_173348
VABS.F32        S1, S17
VMOV.F32        S2, S19
VMOV.F32        S0, S18
ADD             R0, R5, #0x800
ADD             R0, R0, #0x30C
BL              sub_5A2E74
LDRH            R0, [R4,#0xAC]
LDRH            R2, [R4,#0xA8]
BIC             R1, R0, #1
BIC             R0, R2, #0x40 ; '@'
ORR             R1, R1, R8
ORR             R0, R0, R7,LSL#6
STRH            R1, [R4,#0xAC]
STRH            R0, [R4,#0xA8]
MOV             R0, #1
VPOP            {D8-D9}
POP             {R4-R8,PC}
