PUSH            {R4-R6,LR}
MOV             R4, R0
VLDR            S0, =0.0
LDRB            R0, [R4,#0xA1]
MOV             R5, #1
CMP             R0, #0
BEQ             loc_28ED94
CMP             R0, #1
BEQ             loc_28EDD8
CMP             R0, #2
BEQ             loc_28EE1C
CMP             R0, #3
BNE             locret_28ED90
LDR             R0, [R4,#0xC]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             locret_28ED90
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
BL              sub_14C430
LDRB            R0, [R4,#0xA3]
CMP             R0, #0
MOVNE           R0, #8
STRBNE          R0, [R4,#0xA0]
STRBEQ          R5, [R4,#0x2D]
STRBEQ          R5, [R4,#0xA0]
POP             {R4-R6,PC}
LDR             R0, [R4,#0xC]
MOV             R1, R0
ADD             R0, R0, #0x39C
VLDM            R0, {S1-S2}
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLT             locret_28ED90
LDR             R0, [R4,#0x4D8]
ADD             R1, R1, #0x39C
LDR             R0, [R0,#0x48]
VSTR            S0, [R1]
STR             R0, [R1,#4]
LDRB            R0, [R4,#0xA1]
ADD             R0, R0, #1
STRB            R0, [R4,#0xA1]
STRB            R5, [R4,#0xD4]
B               loc_28ED24
LDR             R0, [R4,#0xC]
MOV             R1, R0
ADD             R0, R0, #0x39C
VLDM            R0, {S1-S2}
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLT             locret_28ED90
ADD             R1, R1, #0x39C
VSTR            S0, [R1]
VSTR            S0, [R1,#4]
LDR             R0, [R4,#0xC]
MOV             R1, #1
BL              sub_14D5E0
LDRB            R0, [R4,#0xA1]
ADD             R0, R0, #1
STRB            R0, [R4,#0xA1]
POP             {R4-R6,PC}
LDR             R0, [R4,#0xC]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             locret_28ED90
MOV             R0, #0
STRB            R0, [R4,#0xD4]
LDR             R0, [R4,#0xC]
BL              sub_5C55B8
ADD             R0, R0, #1
AND             R1, R0, #0xFF
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #1
BL              sub_14C430
LDRB            R0, [R4,#0xA1]
ADD             R0, R0, #1
STRB            R0, [R4,#0xA1]
POP             {R4-R6,PC}
