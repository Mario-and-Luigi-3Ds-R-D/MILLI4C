PUSH            {R4-R8,LR}
MOV             R4, R0
VPUSH           {D8}
LDR             R0, [R0,#0x10C]
TST             R0, #1
BNE             loc_235478
LDR             R7, =off_6D1648
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #6
BNE             loc_235478
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x15000
LDRB            R0, [R4,#0x9C]
LDR             R6, [R1,#0x1CC]
LDR             R1, [R6,#0x4CC]
AND             R5, R1, #3
CMP             R0, R5
BEQ             loc_235478
LDR             R1, [R4,#4]
VLDR            S16, =0.0
LDR             R0, =0x208DB
MOV             R2, #0
VMOV.F32        S0, S16
VMOV.F32        S1, S0
BL              sub_1459F8
MOV             R1, R4
MOV             R0, R6
BL              sub_2D5834
MOV             R0, R4
BL              sub_235A84
LDRB            R0, [R4,#0x9C]
STRB            R5, [R4,#0x9C]
MOV             R1, R5
STRB            R0, [R4,#0x9D]
MOV             R0, R4
BL              sub_2366C4
LDR             R0, [R4,#0x10C]
ORR             R0, R0, #1
TST             R0, #2
STR             R0, [R4,#0x10C]
BEQ             loc_2353B0
LDR             R0, [R4,#4]
VLDR            S3, [R4,#0x7C]
VLDR            S1, [R4,#0x80]
ADD             R0, R0, #0x108
VLDR            S0, [R0]
VLDR            S2, [R0,#4]
LDR             R0, [R7]
VADD.F32        S0, S0, S3
VADD.F32        S2, S2, S1
LDR             R1, [R0,#0xC4]
LDRB            R0, [R4,#0x9D]
LDR             R1, [R1,#4]
CMP             R0, #0
CMPNE           R0, #2
LDR             R1, [R1,#4]
ADD             R1, R1, #0x108
VLDM            R1, {S3-S4}
BEQ             loc_235394
CMP             R0, #3
VSUB.F32        S0, S3, S0
VABS.F32        S0, S0
VSTR            S0, [R4,#0x98]
VSUBEQ.F32      S0, S4, S2
VSUBNE.F32      S0, S2, S4
VMOV.F32        S1, S16
MOV             R0, R4
MOV             R1, #0
VSTR            S0, [R4,#0x94]
VLDR            S0, [R4,#0xC0]
VPOP            {D8}
POP             {R4-R8,LR}
B               sub_23576C
CMP             R0, #0
VSUBEQ.F32      S0, S3, S0
VSUB.F32        S1, S4, S2
VSUBNE.F32      S0, S0, S3
VABS.F32        S1, S1
VSTR            S1, [R4,#0x98]
B               loc_235374
LDRB            R0, [R4,#0x9C]
CMP             R0, #0
BEQ             loc_2353D8
CMP             R0, #1
BEQ             loc_2353EC
CMP             R0, #2
BEQ             loc_235414
CMP             R0, #3
BNE             loc_23546C
B               loc_235448
ADD             R0, R4, #0xA0
ADD             R5, R4, #0xB0
LDM             R0, {R0-R3}
STM             R5, {R0-R3}
B               loc_23546C
ADD             R0, R4, #0xA0
VLDM            R0, {S0-S1}
LDRD            R0, R1, [R4,#0xA8]
VNEG.F32        S0, S0
VNEG.F32        S1, S1
STR             R0, [R4,#0xB4]
ADD             R0, R4, #0xB8
STR             R1, [R4,#0xB0]
VSTM            R0, {S0-S1}
B               loc_23546C
ADD             R0, R4, #0xA4
VLDR            S3, [R4,#0xAC]
VLDR            S2, [R4,#0xA0]
VLDM            R0, {S0-S1}
VNEG.F32        S3, S3
VNEG.F32        S2, S2
ADD             R0, R4, #0xB4
VNEG.F32        S0, S0
VNEG.F32        S1, S1
VSTR            S0, [R4,#0xB0]
VSTR            S1, [R4,#0xBC]
VSTM            R0, {S2-S3}
B               loc_23546C
VLDR            S1, [R4,#0xA8]
VLDR            S0, [R4,#0xAC]
LDRD            R0, R1, [R4,#0xA0]
VNEG.F32        S1, S1
VNEG.F32        S0, S0
STR             R0, [R4,#0xBC]
STR             R1, [R4,#0xB8]
VSTR            S1, [R4,#0xB0]
VSTR            S0, [R4,#0xB4]
LDR             R0, [R4,#0x10C]
BIC             R0, R0, #0xC
STR             R0, [R4,#0x10C]
VPOP            {D8}
POP             {R4-R8,PC}
