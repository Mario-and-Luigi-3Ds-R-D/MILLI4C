PUSH            {R4-R12,LR}
MOV             R6, R0
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0,#0x20]
LDR             R4, [R6,#0x1C]
CMP             R0, R4
BEQ             loc_287588
VMOV.F32        S0, S16
LDR             R0, [R4]
BL              sub_283BD4
LDR             R0, [R6,#0x20]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_28756C
ADD             R0, R6, #0x1C
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_2875AC
LDR             R1, [R0]
LDRB            R1, [R1,#0x3F4]
CMP             R1, #2
ADDNE           R0, R0, #0xC
BNE             loc_287590
LDR             R10, =off_6C0770
CMP             R0, R5
MOV             R7, R0
ADDNE           R4, R7, #0xC
CMPNE           R4, R5
MOV             R11, #0
BEQ             loc_2876BC
LDR             R0, [R4]
LDRB            R1, [R0,#0x3F4]
CMP             R1, #2
BEQ             loc_2876B0
LDR             R8, [R7]
CMP             R8, R0
BEQ             loc_2876AC
LDR             R0, [R7,#8]
ADD             R2, R7, #4
CMP             R0, R2
BNE             loc_2877A4
CMP             R8, #0
BEQ             loc_287670
LDR             R9, [R8,#0x468]
CMP             R9, #0
BEQ             loc_287650
LDR             R0, [R9,#4]
CMP             R0, #0
BEQ             loc_28761C
BL              sub_533330
STR             R11, [R9,#4]
LDR             R0, [R9,#0xC]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
STR             R10, [R9,#8]
LDR             R1, [R9,#0xC]
ADD             R0, R9, #8
CMP             R1, #0
STRNE           R11, [R1,#0x64]
STRNE           R11, [R0,#4]
MOV             R0, R9
BL              sub_300FD4
STR             R11, [R8,#0x468]
ADD             R0, R8, #0x3F8
NOP
SUB             R0, R0, #0x3F8
NOP
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R7, #4
CMP             R1, R0
STR             R3, [R7]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_2876AC
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R7, R7, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_2875C8
LDR             R5, [R6,#0x20]
CMP             R7, R5
BEQ             loc_28779C
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R7
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R7, R5, R0,LSL#2
CMP             R7, R5
BEQ             loc_287798
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_287784
LDR             R8, [R4]
CMP             R8, #0
BEQ             loc_287784
LDR             R9, [R8,#0x468]
CMP             R9, #0
BEQ             loc_287764
LDR             R0, [R9,#4]
CMP             R0, #0
BEQ             loc_287730
BL              sub_533330
STR             R11, [R9,#4]
LDR             R0, [R9,#0xC]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
STR             R10, [R9,#8]
LDR             R1, [R9,#0xC]
ADD             R0, R9, #8
CMP             R1, #0
STRNE           R11, [R1,#0x64]
STRNE           R11, [R0,#4]
MOV             R0, R9
BL              sub_300FD4
STR             R11, [R8,#0x468]
ADD             R0, R8, #0x3F8
NOP
SUB             R0, R0, #0x3F8
NOP
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_2876EC
STR             R7, [R6,#0x20]
VPOP            {D8}
POP             {R4-R12,PC}
LDR             R2, [R7,#4]
ADD             R1, R7, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R7,#4]
STR             R1, [R7,#8]
B               loc_287670
