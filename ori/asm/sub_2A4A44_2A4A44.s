PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #8
LDR             R5, [R0,#0x314]
MOVS            R0, R5,LSR#24
LDRBNE          R0, [R4,#0x104]
CMPNE           R0, #0
BEQ             loc_2A4B48
LDR             R0, =0x106
ADD             R1, R4, #0x24 ; '$'
LDR             R6, [R2,#4]
LDRH            R0, [R0,R4]
VLDM            R1, {S16-S18}
CMP             R0, #3
CMPNE           R0, #4
BNE             loc_2A4AF4
MOV             R1, #0
VLDR            S0, =-32.0
VLDR            S1, =-20.0
VLDR            S2, =8.0
VADD.F32        S0, S16, S0
VADD.F32        S1, S17, S1
MOV             R2, #0x3F800000
STR             R1, [R4,#0x234]
STR             R2, [R4,#0x230]
ADD             R3, R4, #0x240
STR             R1, [R4,#0x238]
VADD.F32        S2, S18, S2
ADD             R0, R4, #0x210
VSTR            S0, [R4,#0x23C]
STM             R3, {R1,R2}
ADD             R3, R4, #0x254
STR             R1, [R4,#0x248]
VSTR            S1, [R4,#0x24C]
STR             R1, [R4,#0x250]
STM             R3, {R1,R2}
ADD             R2, SP, #0x28+var_24
VSTR            S2, [R4,#0x25C]
STR             R5, [SP,#0x28+var_24]
BL              sub_12C9C4
MOV             R1, R6
ADD             R0, R4, #0x210
BL              sub_12CA08
MOV             R1, #0
MOV             R2, #0x3F800000
STR             R1, [R4,#0x130]
STR             R2, [R4,#0x12C]
ADD             R3, R4, #0x13C
STR             R1, [R4,#0x134]
VSTR            S16, [R4,#0x138]
STM             R3, {R1,R2}
ADD             R3, R4, #0x150
STR             R1, [R4,#0x144]
VSTR            S17, [R4,#0x148]
STR             R1, [R4,#0x14C]
STM             R3, {R1,R2}
ADD             R0, R4, #0x10C
VSTR            S18, [R4,#0x158]
MOV             R2, SP
STR             R5, [SP,#0x28+var_28]
BL              sub_12C9C4
MOV             R1, R6
ADD             R0, R4, #0x10C
BL              sub_12CA08
ADD             SP, SP, #8
VPOP            {D8-D9}
POP             {R4-R6,PC}
