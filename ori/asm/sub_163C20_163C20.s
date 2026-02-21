PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6D1648
MOV             R5, R1
LDR             R0, [R6]
BL              sub_1E45C8
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R0, [R0,#4]
LDRNE           R0, [R0,#8]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_163C94
LDR             R0, [R6]
BL              sub_1E45C8
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R0, [R0,#4]
LDRNE           R0, [R0,#8]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0xC0A]
CMP             R0, #0
BNE             loc_163C98
MOV             R5, #0
ADD             R0, R4, #0x10000
MOV             R1, R5
ADD             R0, R0, #0x6D00
BL              sub_194BC0
CMP             R5, #0
NOP
BEQ             locret_163DC8
LDR             R0, [R6]
BL              sub_1E45C8
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R0, [R0,#4]
LDRNE           R0, [R0,#8]
LDR             R0, [R0,#0x750]
CMP             R0, #0
LDR             R0, [R6]
BEQ             loc_163CF8
BL              sub_1E45C8
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R0, [R0,#4]
LDRNE           R0, [R0,#8]
LDR             R0, [R0,#0x750]
B               loc_163D28
NOP
BL              sub_1E45C8
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDRNE           R0, [R0,#8]
LDREQ           R0, [R0,#4]
ADD             R0, R0, #0x800
ADD             R0, R0, #0xBC
LDRSB           R0, [R0]
ADD             R0, R4, R0,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
VLDR            S2, =0.0
MOV             R2, #0x3F800000
ADD             R1, R0, #0x400
VLDR            S1, [R0,#0x108]
VLDR            S4, [R0,#0x10C]
VLDR            S3, [R0,#0x110]
LDRB            R0, [R0,#0xDC]
VADD.F32        S1, S1, S2
VLDR            S0, [R1,#0x234]
VADD.F32        S3, S3, S2
ADD             R0, R0, R0,LSL#1
VADD.F32        S0, S4, S0
ADD             R0, R4, R0,LSL#2
ADD             R0, R0, #0x16C00
ADD             R0, R0, #0x1B8
ADD             R4, R4, #0x16C00
VLDR            S2, [R0]
VLDR            S5, [R0,#4]
VLDR            S4, [R0,#8]
VADD.F32        S2, S1, S2
ADD             R4, R4, #0x1A4
VADD.F32        S1, S0, S5
LDR             R0, [R4]
MOV             R1, #0
VADD.F32        S0, S3, S4
ADD             R3, R0, #0x30 ; '0'
STR             R1, [R0,#0x24]
STR             R2, [R0,#0x20]
STR             R1, [R0,#0x28]
VSTR            S2, [R0,#0x2C]
STM             R3, {R1,R2}
ADD             R3, R0, #0x44 ; 'D'
STR             R1, [R0,#0x38]
VSTR            S1, [R0,#0x3C]
STR             R1, [R0,#0x40]
STM             R3, {R1,R2}
VSTR            S0, [R0,#0x4C]
LDR             R0, [R4]
POP             {R4-R6,LR}
B               sub_592F14
POP             {R4-R6,PC}
