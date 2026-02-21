PUSH            {R4-R10,LR}
MOV             R4, #0
MOV             R6, R4
MOV             R12, #2
VLDR            S1, =410.0
VLDR            S0, =-140.0
VLDR            S3, =-100.0
MOV             R7, #0x13
VPUSH           {D8}
MOV             R5, R6
LDR             R2, [R0,#8]
VLDR            S16, =0.0
MOV             R1, #1
VMOV.F32        S17, S16
LDRSH           R3, [R2]
CMP             R3, #0x13
BEQ             loc_246444
BGT             loc_2462C0
CMP             R3, #0
VLDR            S3, =800.0
BEQ             loc_2462E0
CMP             R3, #2
VLDR            S4, =-90.0
CMPNE           R3, #3
BNE             loc_246328
B               loc_2463F8
CMP             R3, #0x15
VLDR            S4, =850.0
CMPNE           R3, #0x17
MOV             R8, #0x15
BEQ             loc_246498
CMP             R3, #0x1B
BEQ             loc_2464E4
B               loc_246328
ADD             R2, R2, #0x400
VMOV.F32        S2, S16
STRH            R1, [R2,#0xC8]
LDR             R2, [R0,#8]
VMOV.F32        S16, S3
VMOV.F32        S17, S1
ADD             R2, R2, #0x400
VMOV            R4, S2
STRH            R1, [R2,#0xCA]
LDR             R0, [R0,#8]
MOV             R2, #0
VMOV            R6, S0
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R2, [R0]
STRH            R1, [R0,#2]
STRB            R5, [R0,#4]
VMOV            R5, S0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R8, R0, #0x16800
MOV             R7, R0
ADD             R9, R0, #8
VSTR            S16, [R0,#0x94]
ADD             R8, R8, #0x1B8
MOV             R0, R8
BL              sub_5A18EC
VSTR            S16, [R8,#0xC]
VSTR            S16, [R8,#4]
ADD             R8, R7, #0x16800
ADD             R8, R8, #0x1EC
VSTR            S17, [R9,#0x9C]
MOV             R0, R8
BL              sub_5A18EC
VSTR            S17, [R8,#0xC]
VSTR            S17, [R8,#4]
ADD             R8, R7, #0x14000
ADD             R9, R7, #0x16800
ADD             R9, R9, #0x2EC
MOV             R10, R4
MOV             R0, R9
STR             R4, [R8,#0x294]
BL              sub_5A18EC
STR             R10, [R9,#0xC]
STR             R10, [R9,#4]
MOV             R9, R4
STR             R4, [R8,#0x298]
ADD             R4, R7, #0x16000
ADD             R4, R4, #0xB20
MOV             R0, R4
BL              sub_5A18EC
STR             R9, [R4,#0xC]
STR             R9, [R4,#4]
ADD             R4, R7, #0x16800
ADD             R4, R4, #0x354
MOV             R0, R4
STR             R6, [R8,#0x29C]
BL              sub_5A18EC
STR             R6, [R4,#0xC]
STR             R6, [R4,#4]
ADD             R4, R7, #0x16800
ADD             R4, R4, #0x388
MOV             R0, R4
STR             R5, [R8,#0x2A0]
BL              sub_5A18EC
STR             R5, [R4,#0xC]
STR             R5, [R4,#4]
VPOP            {D8}
POP             {R4-R10,PC}
ADD             R2, R2, #0x400
VMOV.F32        S2, S16
STRH            R12, [R2,#0xC8]
LDR             R2, [R0,#8]
VMOV.F32        S16, S3
VMOV.F32        S17, S1
ADD             R2, R2, #0x400
VMOV            R4, S2
STRH            R1, [R2,#0xCA]
LDR             R0, [R0,#8]
MOV             R2, #0
VMOV            R6, S0
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R2, [R0]
STRH            R1, [R0,#2]
STRB            R5, [R0,#4]
VMOV            R5, S4
B               loc_246328
ADD             R2, R2, #0x400
VMOV.F32        S0, S3
STRH            R7, [R2,#0xC8]
LDR             R3, [R0,#8]
MOV             R2, #0x11
VMOV.F32        S2, S16
ADD             R3, R3, #0x400
VMOV.F32        S17, S1
STRH            R2, [R3,#0xCA]
LDR             R0, [R0,#8]
MOV             R2, #0
VLDR            S16, =550.0
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
VMOV            R4, S2
STRH            R2, [R0]
STRH            R1, [R0,#2]
STRB            R5, [R0,#4]
VMOV            R6, S0
VMOV            R5, S0
B               loc_246328
ADD             R2, R2, #0x400
VMOV.F32        S2, S16
STRH            R8, [R2,#0xC8]
LDR             R2, [R0,#8]
VMOV.F32        S16, S4
VMOV.F32        S17, S1
ADD             R2, R2, #0x400
VMOV            R4, S2
STRH            R7, [R2,#0xCA]
LDR             R0, [R0,#8]
MOV             R2, #0
VMOV            R6, S0
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R2, [R0]
STRH            R1, [R0,#2]
STRB            R5, [R0,#4]
VMOV            R5, S0
B               loc_246328
ADD             R3, R2, #0x400
MOV             R2, #0x1B
STRH            R2, [R3,#0xC8]
LDR             R2, [R0,#8]
VMOV.F32        S0, S16
VMOV.F32        S17, S1
ADD             R2, R2, #0x400
VLDR            S16, =600.0
STRH            R12, [R2,#0xCA]
LDR             R0, [R0,#8]
MOV             R2, #0
VMOV            R4, S0
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
VMOV            R6, S3
STRH            R2, [R0]
STRH            R1, [R0,#2]
VLDR            S0, =-40.0
STRB            R5, [R0,#4]
B               loc_246324
