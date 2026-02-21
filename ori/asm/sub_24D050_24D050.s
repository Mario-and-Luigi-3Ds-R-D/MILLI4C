PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R6, #0
MOV             R1, #2
STRB            R6, [R0,#0x1D]
STRB            R1, [R0,#0x1E]
LDR             R1, =off_6BBB14
STR             R1, [R0],#0x20
BL              sub_14F198
LDR             R7, =off_6CE098
SUB             R4, R0, #0x20 ; ' '
MOV             R2, #0
LDR             R0, [R7]
LDR             R1, [R0,#0xA8]
ADD             R0, R4, #0x20 ; ' '
BL              sub_14E6E0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #0x20 ; ' '
BL              sub_14C548
MOV             R1, #1
ADD             R0, R4, #0x20 ; ' '
BL              sub_14C450
MOV             R8, #1
MOV             R1, R5
ADD             R0, R4, #0x20 ; ' '
STRB            R8, [R4,#0x111]
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #0x20 ; ' '
BL              sub_14C3E8
LDR             R0, [R7]
VLDM            R5, {S0-S2}
LDR             R0, [R0,#0x8C]
ADD             R1, R0, #0x40 ; '@'
VLDM            R1, {S3-S5}
ADD             R1, R4, #4
VADD.F32        S0, S0, S3
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S4
VSTM            R1, {S0-S2}
ADD             R1, R4, #0x10
VLDR            S2, [R5,#8]
VLDR            S3, [R0,#0x54]
VLDR            S0, [R5]
VLDR            S5, [R0,#0x4C]
VLDR            S4, [R5,#4]
VLDR            S1, [R0,#0x50]
VADD.F32        S2, S2, S3
VADD.F32        S0, S0, S5
VADD.F32        S1, S4, S1
MOV             R0, R4
VSTM            R1, {S0-S2}
STRB            R8, [R4,#0x1C]
STRB            R6, [R4,#0x414]
POP             {R4-R8,PC}
