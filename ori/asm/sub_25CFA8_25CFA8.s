PUSH            {R4-R7,LR}
SUB             SP, SP, #0x14
MOV             R7, #0
MOV             R5, R1
MOV             R6, R2
STRB            R7, [R0],#4
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_14F198
SUB             R4, R0, #0x3F8
STR             R7, [R0,#0x3F8]
LDM             R6, {R0-R3}
ADD             R12, R4, #0x400
ADD             R12, R12, #0x3F4
STM             R12, {R0-R3}
MOV             R1, #1
ADD             R0, R4, #4
STRB            R7, [R4,#0x831]
STR             R5, [R4,#0x838]
BL              sub_14C450
MOV             R0, #1
STRB            R0, [R4,#0xF5]
LDR             R1, [R5,#4]
MOV             R2, #0
ADD             R0, R4, #4
BL              sub_14E6E0
MOV             R1, R6
ADD             R0, R4, #4
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #4
BL              sub_14C3E8
MOV             R0, R4
BL              sub_25CED4
MOV             R1, #1
ADD             R0, R4, #0x3F8
BL              sub_14C450
STR             R7, [R4,#0x7EC]
LDR             R0, [R4,#0x838]
ADD             R1, SP, #0x28+var_20
LDR             R0, [R0,#8]
LDR             R0, [R0,#0x484]
STR             R0, [SP,#0x28+var_20]
STR             R0, [SP,#0x28+var_1C]
STR             R0, [SP,#0x28+var_18]
ADD             R0, R4, #0x3F8
BL              sub_14EA04
STRB            R7, [R4]
LDRB            R0, [R4,#0x801]
CMP             R0, #0
BNE             loc_25D0E8
MOV             R1, #0
ADD             R0, R4, #0x3F8
BL              sub_14C3E8
LDR             R0, =dword_6E1330
LDR             R1, =off_6CE970
LDR             R0, [R0]
LDR             R5, [R1]
TST             R0, #1
BNE             loc_25D0C4
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_25D0C4
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R0, #7
ADD             R1, R0, #0x2CC
STMEA           SP, {R0,R7}
LDR             R3, =flt_711FE4
ADD             R2, R4, #0x3F8
MOV             R0, R5
BL              sub_52C764
STR             R0, [R4,#0x7EC]
STRH            R7, [R0,#0xA]
MOV             R0, R4
BL              sub_25CED4
ADD             SP, SP, #0x14
MOV             R0, R4
POP             {R4-R7,PC}
