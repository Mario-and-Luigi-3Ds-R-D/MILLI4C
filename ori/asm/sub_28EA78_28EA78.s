PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R0, #6
VPUSH           {D8-D9}
VMOV.F32        S18, S0
STRB            R0, [R4,#0xA0]
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R1, [R1,#0x54]
BLX             R1
MOV             R5, R0
LDR             R0, [R4,#0xC]
BL              sub_5C5590
MOV             R6, R0
LDR             R0, [R4,#0xC]
BL              sub_5C55B8
MOV             R7, R0
LDR             R0, [R4,#0xC]
LDR             R1, [R4,#0x4D8]
LDR             R2, [R0]
LDR             R1, [R1]
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
VLDR            S17, =0.0
LDR             R0, [R4,#0xC]
MOV             R2, #0xFFFFFFFF
VMOV.F32        S16, S17
MOV             R1, #0
BL              sub_5C55C8
VMOV            S0, R0
LDR             R0, [R4,#0xC]
MOV             R2, #0
LDR             R1, [R0]
VCVT.F32.S32    S0, S0
LDR             R3, [R1,#0x58]
MOV             R1, R5
VSUB.F32        S0, S18, S0
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S16, S0
BLX             R3
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, R7
BL              sub_14C548
LDR             R0, [R4,#0xC]
MOV             R1, R6
BL              sub_14F01C
LDR             R0, [R4,#0xC]
ADD             R0, R0, #0x39C
VSTR            S17, [R0]
VSTR            S16, [R0,#4]
MOV             R0, #0
STRB            R0, [R4,#0xA1]
VPOP            {D8-D9}
POP             {R4-R8,PC}
