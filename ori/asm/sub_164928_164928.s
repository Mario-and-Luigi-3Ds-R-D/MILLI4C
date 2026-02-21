PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =0x16BF5
MOV             R3, #1
VPUSH           {D8}
ADD             R12, R4, R0
SUB             R2, R0, #1
MOV             R1, #0
STRB            R3, [R4,#0xBC]
ADD             R0, R4, #0x14000
STRB            R1, [R12]
LDR             R5, =off_6D1648
VLDR            S1, =10000.0
VLDR            S0, =-10000.0
ADD             R0, R0, #0x2C4
STRB            R1, [R2,R4]
VSTM            R0, {S0-S1}
LDR             R0, [R5]
BL              sub_5C8540
CMP             R0, #0
LDR             R0, [R5]
VLDR            S17, =-60.0
BEQ             loc_1649A4
BL              sub_1E4614
VLDR            S16, [R0,#0x108]
LDR             R0, [R5]
BL              sub_1E4614
VLDR            S0, [R0,#0x10C]
VSTR            S16, [R4,#0x24]
VSUB.F32        S0, S0, S17
B               loc_1649C4
LDR             R0, [R0,#0xC8]
TST             R0, #7
BNE             loc_1649C8
ADD             R0, R4, #0x13C00
VLDR            S0, [R0,#0x154]
LDR             R0, [R0,#0x150]
VSUB.F32        S0, S0, S17
STR             R0, [R4,#0x24]
VSTR            S0, [R4,#0x28]
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_68E80C
LDM             R0, {R1,R2}
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,LR}
BX              R12
