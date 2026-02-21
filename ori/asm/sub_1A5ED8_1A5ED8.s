PUSH            {R4-R9,LR}
MOV             R2, #0
VPUSH           {D8}
SUB             SP, SP, #4
STR             R1, [R0,#0x1C]
ADD             R1, R0, #0x24 ; '$'
STR             R2, [R0,#0x20]
STR             R1, [R0,#0x28]
STR             R1, [R0,#0x24]!
ADD             R0, R0, #8
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
MOV             R7, #1
STR             R0, [R0,#-8]
SUB             R4, R0, #0x18
STRB            R7, [R0,#-4]
VLDR            S16, =0.0
VLDR            S17, =1.0
MOV             R0, R4
BL              sub_5A18EC
VSTR            S16, [R4,#0xC]
VSTR            S16, [R4,#4]
VSTR            S17, [R4,#0x40]
VSTR            S16, [R4,#0x44]
VSTR            S16, [R4,#0x48]
VSTR            S17, [R4,#0x34]
VSTR            S16, [R4,#0x38]
VSTR            S16, [R4,#0x3C]
SUB             R4, R4, #0x2C ; ','
LDR             R0, [R4,#0x1C]
LDR             R1, [R0]
LDR             R1, [R1,#0x50]
BLX             R1
LDR             R5, [R0,#0x58]
LDR             R6, =dword_6D22B0
MOV             R8, #0
CMP             R5, #0
BEQ             loc_1A5FA8
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, R6
BEQ             loc_1A5FAC
LDR             R0, [R0]
CMP             R0, #0
BNE             loc_1A5F94
MOV             R5, R8
ADR             R6, aBroom01; "broom_01"
LDR             R0, [R5,#0x220]
MOV             R9, SP
LDR             R5, [R0,#8]
STR             R0, [R4,#0x14]
ADD             R0, R5, #0x1C
LDR             R1, [R5,#0x1C]
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R8
CMP             R0, #0
STR             R0, [SP,#0x28+var_28]
BEQ             loc_1A6018
MOV             R0, R6
BL              sub_300168
MOV             R2, R0
MOV             R1, R6
MOV             R0, R9
BL              sub_5E0EC0
CMP             R0, #0
NOP
BEQ             loc_1A6018
LDR             R1, [R0,#0xC]!
CMP             R1, #0
MOVEQ           R0, R8
ADDNE           R0, R0, R1
B               loc_1A601C
MOV             R0, #0
ADR             R6, aBroom02; "broom_02"
LDR             R1, [R0,#8]
ADD             R0, R5, #0x1C
MOV             R9, SP
STR             R1, [R4]
LDR             R1, [R5,#0x1C]
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R8
CMP             R0, #0
STR             R0, [SP,#0x28+var_28]
BEQ             loc_1A6084
MOV             R0, R6
BL              sub_300168
MOV             R2, R0
MOV             R1, R6
MOV             R0, R9
BL              sub_5E0EC0
CMP             R0, #0
NOP
BEQ             loc_1A6084
LDR             R1, [R0,#0xC]!
CMP             R1, #0
MOVEQ           R0, R8
ADDNE           R0, R0, R1
B               loc_1A6088
MOV             R0, #0
ADR             R6, aBroom03; "broom_03"
LDR             R1, [R0,#8]
ADD             R0, R5, #0x1C
MOV             R9, SP
STR             R1, [R4,#4]
LDR             R1, [R5,#0x1C]
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R8
CMP             R0, #0
STR             R0, [SP,#0x28+var_28]
BEQ             loc_1A60F0
MOV             R0, R6
BL              sub_300168
MOV             R2, R0
MOV             R1, R6
MOV             R0, R9
BL              sub_5E0EC0
CMP             R0, #0
NOP
BEQ             loc_1A60F0
LDR             R1, [R0,#0xC]!
CMP             R1, #0
MOVEQ           R0, R8
ADDNE           R0, R0, R1
B               loc_1A60F4
MOV             R0, #0
ADR             R6, aRoot; "root"
LDR             R1, [R0,#8]
ADD             R0, R5, #0x1C
MOV             R9, SP
STR             R1, [R4,#8]
LDR             R1, [R5,#0x1C]
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R8
CMP             R0, #0
STR             R0, [SP,#0x28+var_28]
BEQ             loc_1A615C
MOV             R0, R6
BL              sub_300168
MOV             R2, R0
MOV             R1, R6
MOV             R0, R9
BL              sub_5E0EC0
CMP             R0, #0
NOP
BEQ             loc_1A615C
LDR             R1, [R0,#0xC]!
CMP             R1, #0
MOVEQ           R0, R8
ADDNE           R0, R0, R1
B               loc_1A6160
MOV             R0, #0
ADR             R6, aProg01; "prog_01"
LDR             R1, [R0,#8]
STR             R1, [R4,#0xC]
LDR             R0, [R5,#0x1C]!
CMP             R0, #0
ADDNE           R0, R0, R5
MOVEQ           R0, R8
CMP             R0, #0
MOV             R5, SP
STR             R0, [SP,#0x28+var_28]
BEQ             loc_1A61C0
MOV             R0, R6
BL              sub_300168
MOV             R2, R0
MOV             R1, R6
MOV             R0, R5
BL              sub_5E0EC0
CMP             R0, #0
NOP
BEQ             loc_1A61C0
LDR             R1, [R0,#0xC]!
CMP             R1, #0
ADDNE           R8, R1, R0
B               loc_1A61C4
MOV             R8, #0
ADD             R5, R4, #0x2C ; ','
LDR             R1, [R8,#8]
MOV             R0, R5
STR             R1, [R4,#0x10]
STRB            R7, [R4,#0x19]
BL              sub_5A18EC
VSTR            S16, [R5,#0xC]
VSTR            S16, [R5,#4]
VSTR            S16, [R5,#0x40]
ADD             R2, R5, #0x44 ; 'D'
LDR             R0, =dword_6E1330
VSTM            R2, {S16-S17}
ADD             R2, R4, #0x7C ; '|'
VSTR            S16, [R5,#0x34]
ADD             R5, R5, #0x38 ; '8'
VSTM            R5, {S16-S17}
VSTR            S16, [R4,#0x78]
VSTM            R2, {S16-S17}
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1A6244
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1A6244
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R1, =flt_711FE4
ADD             R3, R4, #0x84
LDM             R1, {R0,R2}
LDR             R1, [R1,#(flt_711FEC - 0x711FE4)]
STR             R1, [R4,#0x8C]
STM             R3, {R0,R2}
ADD             R3, R4, #0x90
STR             R1, [R4,#0x98]
STM             R3, {R0,R2}
ADD             SP, SP, #4
MOV             R0, R4
VPOP            {D8}
POP             {R4-R9,PC}
