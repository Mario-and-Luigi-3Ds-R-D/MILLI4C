PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R6, R2
MOV             R3, #0
MOV             R9, R1
VPUSH           {D8-D9}
MOV             R2, R3
MOV             R0, #0x4C ; 'L'
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_24FB80
LDR             R1, [R6,#0x64]
MOV             R2, #0
VLDR            S0, =0.0
REV             R2, R2
LDR             R7, [R1,#0x20C]
ADD             R1, R1, #0x200
VLDM            R1, {S16-S18}
MOV             R1, #0
REV             R1, R1
STMIB           R0, {R1,R2}
MOV             R2, #0
ADD             R0, R0, #4
REV             R2, R2
STR             R2, [R0,#8]
VSTR            S0, [R0,#0xC]
VSTR            S0, [R0,#0x10]
VSTR            S0, [R0,#0x14]
VSTR            S0, [R0,#0x18]
ADD             R0, R0, #0x1C
BL              sub_5A2F28
SUB             R5, R0, #0x20 ; ' '
ADD             R1, R5, #0x40 ; '@'
STR             R7, [R0,#0x1C]
MOV             R0, #0
VSTM            R1, {S16-S18}
ADD             R7, R5, #4
STRB            R0, [R5]
MOV             R0, #0xFF
REV             R8, R0
MOV             R0, R7
BL              sub_4E63E0
STR             R8, [R7,#4]
STR             R8, [R7]
MOV             R0, #0x1940
MOV             R3, #0
STR             R5, [R0,R4]
MOV             R2, R3
MOV             R1, R9
MOV             R0, #0x10
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_24FBB4
MOV             R2, R9
MOV             R1, R6
BL              sub_250A28
STR             R0, [R4,#0x3F4]
LDR             R0, [R6,#0x24]
ADD             R0, R0, #0xA0
MOV             R5, R0
LDR             R0, [R6,#0x24]
MOV             R1, #0
BL              sub_5F0474
MOV             R1, R0
ADD             R0, R4, #0x1800
MOV             R2, R5
ADD             R0, R0, #0xDC
STM             R0, {R1,R2}
MOV             R2, R9
ADD             R1, R6, #8
ADD             R0, R4, #0x3F8
BL              sub_25189C
ADD             R1, R6, #0x28 ; '('
ADD             R10, R4, #0x1800
LDM             R1, {R1-R3,R5,R7-R9,R12}
ADD             R10, R10, #0xE8
ADD             R0, R4, #0x1800
ADD             R0, R0, #0x108
STM             R10, {R1-R3,R5,R7-R9,R12}
ADD             R1, R6, #0x48 ; 'H'
LDM             R1, {R1-R3,R5,R7,R8,R12}
STM             R0, {R1-R3,R5,R7,R8,R12}
MOV             R1, #1
MOV             R0, R4
BL              sub_14C450
MOV             R0, #5
STRB            R0, [R4,#0xF1]
MOV             R1, #1
LDR             R0, =0x193C
STRB            R1, [R4,#0xF2]
LDR             R1, [R6,#0x64]
STR             R1, [R0,R4]
VPOP            {D8-D9}
POP             {R4-R10,PC}
