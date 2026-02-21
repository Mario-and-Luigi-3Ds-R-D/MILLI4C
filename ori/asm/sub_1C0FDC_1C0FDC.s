PUSH            {R4-R10,LR}
MOV             R7, #0
MOV             R5, R7
MOV             R6, R5
VPUSH           {D8}
LDR             R1, [R0,#8]
VLDR            S16, =0.0
VMOV.F32        S17, S16
LDRH            R2, [R1]
CMP             R2, #0
BEQ             loc_1C10DC
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R8, R0, #0x16800
MOV             R4, R0
ADD             R9, R0, #8
VSTR            S17, [R0,#0x94]
ADD             R8, R8, #0x1B8
MOV             R0, R8
BL              sub_5A18EC
VSTR            S17, [R8,#0xC]
VSTR            S17, [R8,#4]
ADD             R8, R4, #0x16800
ADD             R8, R8, #0x1EC
VSTR            S16, [R9,#0x9C]
MOV             R0, R8
BL              sub_5A18EC
VSTR            S16, [R8,#0xC]
VSTR            S16, [R8,#4]
MOV             R9, R5
ADD             R5, R4, #0x14000
ADD             R8, R4, #0x16800
ADD             R8, R8, #0x2EC
MOV             R0, R8
STR             R9, [R5,#0x294]
BL              sub_5A18EC
STR             R9, [R8,#0xC]
STR             R9, [R8,#4]
MOV             R8, R6
STR             R6, [R5,#0x298]
ADD             R6, R4, #0x16000
ADD             R6, R6, #0xB20
MOV             R0, R6
BL              sub_5A18EC
STR             R8, [R6,#0xC]
STR             R8, [R6,#4]
ADD             R6, R4, #0x16800
ADD             R6, R6, #0x354
MOV             R8, R7
MOV             R0, R6
STR             R7, [R5,#0x29C]
BL              sub_5A18EC
ADD             R4, R4, #0x16800
STR             R8, [R6,#0xC]
ADD             R4, R4, #0x388
STR             R8, [R6,#4]
MOV             R0, R4
STR             R7, [R5,#0x2A0]
BL              sub_5A18EC
STR             R7, [R4,#0xC]
STR             R7, [R4,#4]
VPOP            {D8}
POP             {R4-R10,PC}
ADD             R1, R1, #0x400
MOV             R2, #1
STRH            R2, [R1,#0xC8]
LDR             R1, [R0,#8]
VMOV.F32        S0, S16
VLDR            S1, =-100.0
ADD             R1, R1, #0x400
VLDR            S17, =790.0
STRH            R2, [R1,#0xCA]
LDR             R0, [R0,#8]
MOV             R1, #0
VLDR            S16, =410.0
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
VMOV            R5, S0
STRH            R1, [R0]
STRH            R2, [R0,#2]
STRB            R6, [R0,#4]
VMOV            R6, S0
VMOV            R7, S1
B               loc_1C1008
