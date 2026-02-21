PUSH            {R4-R6,LR}
BL              sub_14CB8C
LDR             R1, =off_6B2BE4
MOV             R2, #0
MOV             R4, #0xFFFFFFFF
STR             R1, [R0]
STRB            R2, [R0,#0xFD]
STRB            R2, [R0,#0xFE]
ADD             R1, R0, #0x104
STRB            R4, [R0,#0xFF]
MOV             R3, #1
STRB            R2, [R0,#0x100]
STRD            R2, R3, [R1]
STR             R2, [R0,#0x10C]
STR             R2, [R0,#0x110]
STR             R2, [R0,#0x114]
ADD             R1, R0, #0x11C
VLDR            S0, =0.0
VLDR            S1, =-0.4
STR             R2, [R0,#0x118]
VLDR            S2, =0.005
VLDR            S3, =100.0
ADD             R5, R0, #0x124
VSTM            R1, {S0-S1}
MOV             R3, #4
VLDR            S1, =0.9
LDR             R1, =off_6CE970
LDR             R12, =0x1835D8
VSTM            R5, {S0-S3}
VSTR            S0, [R0,#0x134]
STRB            R3, [R0,#0x138]
STRB            R2, [R0,#0x139]
LDR             R1, [R1]
LDR             R3, =0x19D678
VLDR            S1, =3.0
ADD             R12, R12, R1; loc_1835D8
ADD             R1, R1, R3; loc_19D678
ADD             R3, R0, #0x144
STR             R12, [R0,#0x13C]
VSTR            S1, [R0,#0x140]
STM             R3, {R1,R2}
REV             R1, R2
REV             R3, R2
STR             R1, [R0,#0x14C]!
REV             R2, R2
STR             R3, [R0,#4]
STR             R2, [R0,#8]
VSTR            S0, [R0,#0xC]
VSTR            S0, [R0,#0x10]
VSTR            S0, [R0,#0x14]
VSTR            S0, [R0,#0x18]
ADD             R0, R0, #0x1C
BL              sub_5A2F28
SUB             R5, R0, #0x168
MOV             R1, #0
MOV             R0, R5
BL              sub_14C450
REV             R6, R4
ADD             R4, R5, #0x14C
MOV             R0, R4
BL              sub_4E63E0
STR             R6, [R4,#4]
STR             R6, [R4]
MOV             R0, R5
STR             R6, [R5,#0x9C]
POP             {R4-R6,PC}
