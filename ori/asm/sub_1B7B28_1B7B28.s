PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R1, #1
MOV             R2, #0
VPUSH           {D8-D9}
LDR             R0, [R0,#8]
VLDR            S17, =0.0
VLDR            S16, =-100.0
ADD             R0, R0, #0x400
VLDR            S19, =750.0
STRH            R1, [R0,#0xC8]
LDR             R0, [R5,#8]
VLDR            S18, =410.0
ADD             R0, R0, #0x400
STRH            R1, [R0,#0xCA]
LDR             R0, [R5,#8]
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R2, [R0]
STRH            R1, [R0,#2]
STRB            R2, [R0,#4]
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R6, R0, #0x16800
MOV             R4, R0
ADD             R7, R0, #8
VSTR            S19, [R0,#0x94]
ADD             R6, R6, #0x1B8
MOV             R0, R6
BL              sub_5A18EC
VSTR            S19, [R6,#0xC]
VSTR            S19, [R6,#4]
ADD             R6, R4, #0x16800
ADD             R6, R6, #0x1EC
VSTR            S18, [R7,#0x9C]
MOV             R0, R6
BL              sub_5A18EC
VSTR            S18, [R6,#0xC]
VSTR            S18, [R6,#4]
ADD             R6, R4, #0x14000
ADD             R7, R4, #0x16800
ADD             R7, R7, #0x2EC
VSTR            S17, [R6,#0x294]
MOV             R0, R7
BL              sub_5A18EC
VSTR            S17, [R7,#0xC]
VSTR            S17, [R7,#4]
ADD             R7, R4, #0x16000
ADD             R7, R7, #0xB20
VSTR            S17, [R6,#0x298]
MOV             R0, R7
BL              sub_5A18EC
VSTR            S17, [R7,#0xC]
VSTR            S17, [R7,#4]
ADD             R7, R4, #0x16800
ADD             R7, R7, #0x354
VSTR            S16, [R6,#0x29C]
MOV             R0, R7
BL              sub_5A18EC
VSTR            S16, [R7,#0xC]
VSTR            S16, [R7,#4]
VSTR            S16, [R6,#0x2A0]
ADD             R6, R4, #0x16800
ADD             R6, R6, #0x388
MOV             R0, R6
BL              sub_5A18EC
VSTR            S16, [R6,#0xC]
VSTR            S16, [R6,#4]
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x108]
STR             R0, [R4,#0x24]
LDR             R0, [R5,#4]
VLDR            S0, [R0,#0x10C]
VSUB.F32        S0, S0, S16
VSTR            S0, [R4,#0x28]
VPOP            {D8-D9}
POP             {R4-R8,PC}
