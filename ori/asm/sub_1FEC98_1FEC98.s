PUSH            {R3-R7,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xE]
LDR             R6, =off_6CDC90
CMP             R0, #0
BEQ             loc_1FED18
CMP             R0, #1
BEQ             loc_1FED6C
CMP             R0, #2
MOV             R5, #3
BEQ             loc_1FEDA0
CMP             R0, #3
BNE             locret_1FED14
ADD             R0, R4, #0x1EC
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_1FED14
LDRB            R0, [R4,#0xC]
MOV             R2, #0
CMP             R0, #0
LDR             R0, [R6]
LDRNE           R1, [R0,#0x20]
LDREQ           R1, [R0,#0x24]
ADD             R0, R4, #0x10
BL              sub_14E6E0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #0x10
BL              sub_14C548
STRB            R5, [R4,#0xD]
POP             {R3-R7,PC}
ADD             R0, R4, #0x10
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             locret_1FED14
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #3
ADD             R0, R4, #0x10
BL              sub_14C548
LDR             R0, [R6]
VLDR            S0, =0.0
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x2700
LDR             R0, [R0]
LDR             R0, [R0,#0x290]
STR             R0, [SP,#0x18+var_18]
VSTR            S0, [R4,#0x3AC]
STR             R0, [R4,#0x3B0]
MOV             R0, #1
B               loc_1FED98
ADD             R0, R4, #0x3AC
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             locret_1FED14
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #4
ADD             R0, R4, #0x10
BL              sub_14C548
MOV             R0, #2
STRB            R0, [R4,#0xE]
POP             {R3-R7,PC}
ADD             R0, R4, #0x10
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             locret_1FED14
MOV             R1, #0
MOV             R0, R4
BL              sub_1FF054
STRB            R5, [R4,#0xE]
POP             {R3-R7,PC}
