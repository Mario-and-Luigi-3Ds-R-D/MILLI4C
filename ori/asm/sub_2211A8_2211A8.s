PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R6, #1
LDR             R5, =off_6D1648
VPUSH           {D8}
LDR             R0, [R0,#0x28]
TST             R0, #4
BEQ             loc_2211F0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D40
LDR             R0, [R0]
TST             R0, #1
BEQ             loc_2211F0
LDR             R0, [R4,#0x28]
BIC             R0, R0, #4
STR             R0, [R4,#0x28]
LDRH            R0, [R4,#0x24]
MOV             R1, #0
MOV             R7, #1
CMP             R0, #0
BEQ             loc_221220
CMP             R0, #1
BEQ             loc_221244
CMP             R0, #2
BEQ             loc_221304
CMP             R0, #3
BNE             loc_2214EC
B               loc_221494
LDRH            R0, [R4,#0x26]
CMP             R0, #0
STRHNE          R1, [R4,#0x26]
BNE             loc_2214EC
LDR             R0, [R4,#0x28]
STRH            R7, [R4,#0x24]
BIC             R0, R0, #0x10
STR             R0, [R4,#0x28]
B               loc_2214EC
LDR             R0, [R4,#4]
MOV             R7, #2
LDR             R0, [R0,#0xB10]
MOV             R0, R0,LSL#21
CMP             R7, R0,LSR#29
BNE             loc_2214EC
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
VLDR            S16, =2.0
CMP             R0, #9
BNE             loc_221288
LDR             R0, [R4,#0x28]
TST             R0, #1
BEQ             loc_2212C8
VMOV.F32        S0, S16
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #0x3C ; '<'
BL              sub_504304
VMOV.F32        S0, S16
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #0x36 ; '6'
BL              sub_504208
MOV             R0, #0x1E
STRH            R0, [R4,#0x26]
STRH            R7, [R4,#0x24]
B               loc_2214EC
VMOV.F32        S0, S16
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #0x3B ; ';'
BL              sub_504304
VMOV.F32        S0, S16
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #0x35 ; '5'
BL              sub_504208
MOV             R0, #0x19
NOP
B               loc_2212BC
LDRH            R0, [R4,#0x26]
SUB             R0, R0, #1
SXTH            R0, R0
CMP             R0, #0
STRH            R0, [R4,#0x26]
BGT             loc_2214EC
LDR             R0, [R4,#0x28]
TST             R0, #4
BEQ             loc_221488
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #9
LDR             R0, [R5]
VLDR            S16, =0.0
BEQ             loc_22136C
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #0xB
NOP
BEQ             loc_22140C
B               loc_221488
NOP
LDR             R0, [R0,#0xBC]
VMOV.F32        S0, S16
LDR             R1, [R4,#0x28]
LDR             R0, =0x208CF
MOV             R2, #0
TST             R1, #1
MOV             R1, R2
VMOV.F32        S1, S0
BEQ             loc_2213D0
BL              sub_1459F8
MOV             R2, #1
LDR             R0, [R4,#4]
MOV             R1, R2
BL              sub_506C94
LDR             R0, [R4,#0x28]
MOV             R1, #1
BIC             R0, R0, #1
ORR             R0, R0, #0x10
STR             R0, [R4,#0x28]
LDR             R0, [R4,#4]
BL              sub_509288
NOP
NOP
B               loc_221488
NOP
BL              sub_1459F8
MOV             R2, #1
LDR             R0, [R4,#4]
MOV             R1, R2
BL              sub_506C94
LDR             R0, [R4,#0x28]
MOV             R1, #1
ORR             R0, R0, #0x11
STR             R0, [R4,#0x28]
LDR             R0, [R4,#4]
BL              sub_5088B4
NOP
NOP
B               loc_221488
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
VMOV.F32        S0, S16
LDR             R0, [R4,#0x28]
MOV             R2, #0
MOV             R1, R2
BIC             R5, R7, R0
LDR             R0, =0x208D5
VMOV.F32        S1, S0
BL              sub_1459F8
VMOV.F32        S0, S16
CMP             R5, #0
MOV             R2, #0
LDRNE           R0, =0x208D6
LDREQ           R0, =0x208D7
MOV             R1, R2
VMOV.F32        S1, S0
BL              sub_1459F8
MOV             R2, #1
LDR             R0, [R4,#4]
MOV             R1, R2
BL              sub_506C94
LDR             R0, [R4,#0x28]
MOV             R2, #1
MOV             R1, R5
BIC             R0, R0, #1
ORR             R0, R0, #0x10
ORR             R0, R0, R5
STR             R0, [R4,#0x28]
MOV             R0, R4
BL              sub_220974
MOV             R0, #3
STRH            R0, [R4,#0x24]
B               loc_2214EC
LDR             R0, [R4,#4]
BL              sub_50581C
CMP             R0, #0
NOP
BNE             loc_2214EC
MOV             R3, #1
LDR             R0, [R4,#4]
MOV             R2, R3
MOV             R1, #0
BL              sub_507CD8
LDR             R0, [R4,#0x28]
MOV             R1, #5
STRH            R1, [R4,#0x24]
BIC             R0, R0, #8
TST             R0, #0x10
MOV             R6, #0
STR             R0, [R4,#0x28]
BEQ             loc_2214EC
LDR             R0, [R4,#4]
MOV             R2, #1
MOV             R1, #0
BL              sub_506C94
VPOP            {D8}
MOV             R0, R6
POP             {R4-R8,PC}
