PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, R1
LDR             R5, [R0]
LDR             R1, [R0,#8]
LDR             R0, [R5,#4]
CMP             R0, #0
BNE             loc_26816C
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R2, =0x30185
MOV             R3, #0
LDR             R12, [R12]
SUB             R0, R12, R0
BL              sub_503720
MOV             R6, R0
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x64]
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #3
BL              sub_14C548
MOV             R0, #9
STRB            R0, [R4,#0xC]
ADD             R0, R4, #0x10
BL              sub_5A18EC
VLDR            S0, =0.0
CMP             R7, #0
VSTR            S0, [R4,#0x1C]
VSTR            S0, [R4,#0x14]
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
VLDR            S1, [R0,#0x3F0]
VLDREQ          S0, [R0,#0x140]
ADD             R0, R4, #0x10
VSUBEQ.F32      S1, S1, S0
VLDR            S0, =1.0
BL              sub_5A12F8
LDR             R0, [R4,#0x50]
CMP             R0, #0
BEQ             locret_2681D8
BL              sub_533330
MOV             R0, #0
STR             R0, [R4,#0x50]
POP             {R4-R8,PC}
