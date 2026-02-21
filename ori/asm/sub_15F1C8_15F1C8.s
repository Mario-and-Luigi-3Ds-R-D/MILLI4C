PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
LDR             R0, [R5]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
MOV             R7, R0
MOV             R0, R4
BL              sub_573AC4
LDR             R0, [R4,#0x4EC]
TST             R0, #1
BNE             locret_15F2E0
LDR             R1, [R4,#0x608]
ADD             R0, R4, #0x600
CMP             R1, #0
BEQ             loc_15F22C
LDR             R1, [R1,#8]
TST             R1, #0x2000
BEQ             loc_15F22C
LDRSB           R0, [R0,#0x5F]
CMN             R0, #1
BEQ             loc_15F26C
B               loc_15F238
LDRSB           R0, [R0,#0x5F]
CMN             R0, #1
BEQ             loc_15F274
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x16C00
ADD             R1, R1, #0xE8
LDRB            R2, [R4,#0x65F]
LDM             R1, {R5,R6}
MOV             R0, #1
MOV             R1, #0
BL              sub_300CF8
AND             R2, R5, R0
AND             R0, R6, R1
ORRS            R0, R0, R2
BEQ             loc_15F274
MOV             R1, #1
B               loc_15F278
MOV             R1, #0
LDR             R2, =0xBE23D70A
LDR             R0, [R4,#0x830]
ADD             R6, R4, #0x800
ADD             R5, R4, #0x400
CMP             R0, R2
BEQ             loc_15F2E4
LDR             R3, =0x276C
LDRB            R3, [R3,R7]
CMP             R3, #0
BNE             loc_15F2E4
ADD             R7, R7, #0x2700
ADD             R7, R7, #0x6D ; 'm'
LDRB            R3, [R7]
CMP             R3, #0
BNE             loc_15F2E4
CMP             R1, #0
BEQ             loc_15F2E4
VLDR            S1, =0.1
VLDR            S2, =0.2
VLDR            S3, =5.5
VSTR            S1, [R5,#0x7C]
VLDR            S0, =-0.16
VSTR            S2, [R5,#0x84]
VSTR            S3, [R5,#0x8C]
VSTR            S0, [R5,#0x94]
VSTR            S0, [R6,#0x30]
POP             {R4-R8,PC}
CMP             R0, R2
MOVEQ           R0, #1
MOVNE           R0, #0
BICS            R0, R0, R1
BEQ             locret_15F2E0
VLDR            S0, =0.0
VSTR            S0, [R6,#0x30]
LDR             R0, [R4]
LDR             R1, [R0,#0x50]
MOV             R0, R4
BLX             R1
LDR             R0, [R5,#0x7C]
STR             R0, [R6,#0x28]
POP             {R4-R8,PC}
