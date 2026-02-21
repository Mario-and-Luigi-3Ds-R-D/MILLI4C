PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
LDRB            R0, [R0,#0x40C]
CMP             R0, #2
BNE             loc_294178
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0xC]
CMP             R1, #0
BEQ             loc_294178
LDR             R1, [R4,#0x10]
ADD             R2, R4, #0xC
MOV             R6, #0
CMP             R1, R2
ADD             R5, R4, #8
BNE             loc_294190
CMP             R0, #0
BEQ             loc_294118
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R6, [R5]
MOV             R5, #0
MOV             R1, R5
ADD             R0, R4, #0x18
STRB            R5, [R4,#0x10A]
BL              sub_14C3E8
LDR             R0, [R4,#0x14]
VLDR            S16, =0.0
LDR             R1, [R0,#0x14]
ADD             R1, R1, #0xD0
VLDM            R1, {S0-S1}
VSTR            S16, [R4,#0x3B4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x3B8]
BL              sub_2929A0
LDR             R0, =off_6CE970
LDR             R3, =0xFFE683CC
VMOV.F32        S0, S16
LDR             R1, =0x30229
LDR             R0, [R0]
MOV             R2, #0
SUB             R0, R0, R3
BL              sub_503414
STRB            R5, [R4,#0x40C]
LDR             R0, [R4,#0x14]
BL              sub_5CDAD8
CMP             R0, #2
NOP
BNE             loc_2941C0
B               loc_2941AC
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_294118
LDR             R0, [R4,#0x14]
BL              sub_5CDC70
CMP             R0, #0
NOP
BEQ             loc_2941D8
LDR             R0, [R4]
LDR             R1, [R0,#0x10]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,LR}
BX              R1
VPOP            {D8}
POP             {R4-R6,PC}
