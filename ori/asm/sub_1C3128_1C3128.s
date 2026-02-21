PUSH            {R3-R5,LR}
MOV             R4, R0
VLDR            S0, =0.0
LDRB            R0, [R4,#0xB1]
MOV             R5, #1
CMP             R0, #0
BEQ             loc_1C31A0
CMP             R0, #1
BEQ             loc_1C31F0
CMP             R0, #2
BEQ             loc_1C3230
CMP             R0, #3
BNE             locret_1C319C
LDR             R0, [R4,#0xAC]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             locret_1C319C
LDR             R0, [R4,#0xAC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
BL              sub_14C430
LDRB            R0, [R4,#0xB3]
CMP             R0, #0
MOVNE           R0, #9
MOVEQ           R0, #2
STRBEQ          R5, [R4,#0x39]
STRB            R0, [R4,#0xB0]
POP             {R3-R5,PC}
LDR             R0, [R4,#0xAC]
MOV             R1, R0
ADD             R0, R0, #0x39C
VLDM            R0, {S1-S2}
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLT             locret_1C319C
LDR             R0, =off_6CDD80
ADD             R1, R1, #0x39C
LDR             R0, [R0]
LDR             R0, [R0,#8]
LDR             R0, [R0,#0x174]
STR             R0, [SP,#0x10+var_10]
VSTR            S0, [R1]
STR             R0, [R1,#4]
LDRB            R0, [R4,#0xB1]
ADD             R0, R0, #1
STRB            R0, [R4,#0xB1]
STRB            R5, [R4,#0xDC]
B               loc_1C3130
LDR             R0, [R4,#0xAC]
ADD             R1, R0, #0x39C
VLDM            R1, {S1-S2}
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLT             locret_1C319C
ADD             R0, R0, #0x39C
MOV             R1, #1
VSTR            S0, [R0]
VSTR            S0, [R0,#4]
LDR             R0, [R4,#0xAC]
BL              sub_14D5E0
LDRB            R0, [R4,#0xB1]
ADD             R0, R0, #1
STRB            R0, [R4,#0xB1]
POP             {R3-R5,PC}
LDR             R0, [R4,#0xAC]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             locret_1C319C
MOV             R0, #0
STRB            R0, [R4,#0xDC]
LDR             R0, [R4,#0xAC]
BL              sub_5C55B8
ADD             R0, R0, #1
AND             R1, R0, #0xFF
LDR             R0, [R4,#0xAC]
MOV             R3, #0x100
MOV             R2, #1
BL              sub_14C430
LDRB            R0, [R4,#0xB1]
ADD             R0, R0, #1
STRB            R0, [R4,#0xB1]
POP             {R3-R5,PC}
