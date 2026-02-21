PUSH            {R4-R10,LR}
MOV             R4, R0
MOVS            R7, R1
ADD             R5, R0, #0x400
ADD             R6, R0, #0x800
BNE             loc_16AC28
LDR             R0, =0x276D
LDRB            R0, [R0,R4]
CMP             R0, #0
BEQ             loc_16AC4C
VLDR            S0, =0.0
VSTR            S0, [R6,#0x30]
LDR             R0, [R4]
LDR             R1, [R0,#0x50]
MOV             R0, R4
BLX             R1
LDR             R0, [R5,#0x7C]
STR             R0, [R6,#0x28]
B               loc_16ACF0
LDR             R0, [R4,#0x4EC]
TST             R0, #1
BNE             loc_16ACF0
LDR             R1, [R4,#0x608]
ADD             R0, R4, #0x600
CMP             R1, #0
BEQ             loc_16AC84
LDR             R1, [R1,#8]
TST             R1, #0x2000
BEQ             loc_16AC84
LDRSB           R0, [R0,#0x5F]
CMN             R0, #1
BEQ             loc_16ACCC
B               loc_16AC90
LDRSB           R0, [R0,#0x5F]
CMN             R0, #1
BEQ             loc_16ACF0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x16C00
ADD             R1, R1, #0xE8
MOV             R0, #1
LDRD            R8, R9, [R1]
LDRB            R2, [R4,#0x65F]
MOV             R1, #0
BL              sub_300CF8
MOV             R2, R1
AND             R1, R8, R0
AND             R0, R9, R2
ORRS            R0, R0, R1
BEQ             loc_16ACF0
VLDR            S1, =0.1
VLDR            S2, =0.2
VLDR            S3, =5.5
VSTR            S1, [R5,#0x7C]
VLDR            S0, =-0.16
VSTR            S2, [R5,#0x84]
VSTR            S3, [R5,#0x8C]
VSTR            S0, [R5,#0x94]
VSTR            S0, [R6,#0x30]
ADD             R4, R4, #0x2400
ADD             R4, R4, #0x36C
STRB            R7, [R4]
POP             {R4-R10,PC}
