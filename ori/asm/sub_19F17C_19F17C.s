PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R6, #0
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0,#4]
LDR             R5, [R0,#0x41C]
LDR             R0, [R5,#8]
CMP             R0, #0
BEQ             loc_19F1B8
BL              sub_533330
LDR             R0, [R5,#8]
CMP             R0, #0
STRNE           R6, [R0,#0x184]
STRNE           R6, [R5,#8]
VLDR            S0, =0.0
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
BNE             loc_19F26C
ADD             R0, R4, #8
BL              sub_5C6460
LDR             R1, [R4,#0x24]
SUB             R0, R0, #1
CMP             R0, R1
BNE             loc_19F200
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_1A55B4
MOV             R0, #8
STRB            R0, [R4,#0x20]
STRB            R6, [R4,#0x68]
VPOP            {D8}
POP             {R4-R6,PC}
ADD             R0, R4, #8
BL              sub_5C6498
MOV             R5, R0
LDR             R0, [R4,#0x24]
ADD             R1, R0, #1
ADD             R0, R4, #8
BL              sub_5C6498
CMP             R5, R0
LDR             R0, [R4,#4]
BNE             loc_19F258
STRB            R6, [R0,#0x445]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_1A5C48
MOV             R0, #3
STRB            R0, [R4,#0x20]
STRB            R6, [R4,#0x68]
LDR             R0, [R4,#0x24]
ADD             R0, R0, #1
STR             R0, [R4,#0x24]
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R0, [R0,#0x410]
BL              sub_1A54F0
MOV             R0, #0xA
NOP
B               loc_19F280
LDR             R0, [R4,#4]
ADD             R0, R0, #0x39C
VSTR            S0, [R0]
VSTR            S16, [R0,#4]
MOV             R0, #1
STRB            R0, [R4,#0x20]
VPOP            {D8}
POP             {R4-R6,PC}
