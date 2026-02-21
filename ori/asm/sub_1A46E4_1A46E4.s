PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#8]
CMP             R0, #0
BEQ             loc_1A4720
CMP             R0, #1
BNE             locret_1A471C
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x14]
ADD             R1, R1, #0x39C
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLGE            sub_61E634
POP             {R4-R6,PC}
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x14]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             locret_1A471C
LDR             R0, [R4,#4]
LDR             R5, [R0,#0x14]
LDR             R0, =off_6CE388
ADD             R5, R5, #0x39C
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x354]
VLDR            S0, =0.0
MOV             R3, #0x100
VSTR            S0, [R5]
STR             R0, [R5,#4]
LDR             R0, [R4,#4]
MOV             R2, #0
MOV             R1, #0x2B ; '+'
LDR             R0, [R0,#0x14]
BL              sub_14C548
MOV             R0, #1
STRB            R0, [R4,#8]
POP             {R4-R6,PC}
