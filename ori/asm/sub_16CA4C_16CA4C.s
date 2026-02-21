PUSH            {R4-R10,LR}
MOV             R4, R0
ADD             R7, R0, #0x2700
MOVS            R8, R1
ADD             R7, R7, #0x6D ; 'm'
ADD             R5, R0, #0x400
ADD             R6, R0, #0x800
BEQ             loc_16CAA0
LDR             R0, =0x276C
LDRB            R0, [R0,R4]
CMP             R0, #0
BEQ             loc_16CAA0
VLDR            S0, =0.0
VSTR            S0, [R6,#0x30]
LDR             R0, [R4]
LDR             R1, [R0,#0x50]
MOV             R0, R4
BLX             R1
LDR             R0, [R5,#0x7C]
STR             R0, [R6,#0x28]
B               loc_16CB48
LDR             R0, [R4,#0x4EC]
TST             R0, #1
LDRBEQ          R0, [R7]
CMPEQ           R0, #0
BNE             loc_16CB48
LDR             R1, [R4,#0x608]
ADD             R0, R4, #0x600
CMP             R1, #0
BEQ             loc_16CAE0
LDR             R1, [R1,#8]
TST             R1, #0x2000
BEQ             loc_16CAE0
LDRSB           R0, [R0,#0x5F]
CMN             R0, #1
BEQ             loc_16CB24
B               loc_16CAEC
LDRSB           R0, [R0,#0x5F]
CMN             R0, #1
BEQ             loc_16CB48
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x16C00
ADD             R1, R1, #0xE8
LDRB            R2, [R4,#0x65F]
LDM             R1, {R9,R10}
MOV             R0, #1
MOV             R1, #0
BL              sub_300CF8
AND             R0, R0, R9
AND             R1, R1, R10
ORRS            R0, R0, R1
BEQ             loc_16CB48
VLDR            S1, =0.1
VLDR            S2, =0.2
VLDR            S3, =5.5
VSTR            S1, [R5,#0x7C]
VLDR            S0, =-0.16
VSTR            S2, [R5,#0x84]
VSTR            S3, [R5,#0x8C]
VSTR            S0, [R5,#0x94]
VSTR            S0, [R6,#0x30]
STRB            R8, [R7]
POP             {R4-R10,PC}
