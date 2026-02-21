PUSH            {R4-R6,LR}
MOV             R4, R0
VLDR            S0, =1.0
ADD             R0, R0, #8
VPUSH           {D8}
BL              sub_5A176C
LDRH            R0, [R4,#0x70]
VLDR            S1, =0.5
TST             R0, #1
VLDRNE          S1, =1.5
TST             R0, #2
ADD             R0, R4, #8
VADDEQ.F32      S0, S1, S0
VSUBNE.F32      S0, S1, S0
VSTR            S0, [R4,#0x3C]
BL              sub_5F1964
CMP             R0, #0
BEQ             loc_2013D8
MOV             R0, R4
BL              sub_20113C
CMP             R0, #0
BEQ             loc_2013D0
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0xAC]
BL              sub_1E1804
LDR             R0, [R5]
BL              sub_1E4614
LDR             R2, [R0,#0x750]
LDR             R1, [R4,#4]
CMP             R2, #0
BEQ             loc_2013A8
LDR             R2, [R1,#0x4EC]
TST             R2, #0xE0
BNE             loc_20137C
LDR             R3, [R0,#0x754]
CMP             R3, R1
BNE             loc_2013A8
AND             R2, R2, #0xE0
CMP             R2, #0x80
BNE             loc_2013D0
LDR             R2, [R0,#0x754]
CMP             R2, R1
BNE             loc_2013A8
ADD             R2, R0, #0x400
LDRH            R3, [R2,#0x6C]
LDRH            R2, [R2,#0x6E]
CMP             R3, R2
BEQ             loc_2013D0
STR             R1, [R0,#0x750]
LDR             R3, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
BIC             R3, R3, #0xFC0
ORR             R3, R3, #0x40 ; '@'
STR             R3, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
VPOP            {D8}
POP             {R4-R6,PC}
LDRSH           R0, [R4,#0x6A]
VLDR            S1, =2.5
LDRH            R1, [R4,#0x6C]
VMOV            S0, R0
ADD             R0, R4, #8
STRH            R1, [R4,#0x68]
VCVT.F32.S32    S0, S0
VDIV.F32        S16, S1, S0
BL              sub_5A18EC
VSTR            S16, [R4,#0x14]
VSTR            S16, [R4,#0xC]
VLDR            S16, =0.0
VLDR            S1, =13.0
ADD             R0, R4, #8
VMOV.F32        S0, S16
BL              sub_5A14A4
VSTR            S16, [R4,#0x40]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,LR}
B               sub_201448
