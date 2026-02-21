PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R6, R2
MOV             R7, R3
BL              sub_5334D8
LDR             R1, =off_6ACD44
MOV             R4, R0
ADD             R2, R4, #0x180
STR             R1, [R0],#0x188
LDR             R1, =off_6B8168
MOV             R8, #0
STM             R2, {R6,R8}
STM             R0, {R1,R8}
STR             R8, [R0,#8]
STR             R8, [R0,#0xC]
LDR             R0, =dword_6E1330
STR             R8, [R4,#0x198]
STR             R8, [R4,#0x19C]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_149D8C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_149D8C
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R6, R4, #0x1A0
MOV             R3, #0x1B4
LDM             R2, {R0-R2}
STM             R6, {R0-R2}
MOV             R2, #0x24 ; '$'
STRH            R5, [R3,R4]
STRB            R8, [R4,#0x1B6]
STRB            R8, [R4,#0x1B7]
LDR             R1, =sub_2A25B8
MOV             R3, #2
ADD             R0, R4, #0x1D0
STRB            R8, [R4,#0x1B8]
BLX             sub_1002F4
SUB             R4, R0, #0x1D0
SUB             R0, R0, #0x24 ; '$'
MOV             R2, #8
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x1BC
MOV             R2, #0xC
MOV             R1, #0
STR             R7, [R4,#0x164]
BL              sub_110BE4
ADD             R0, R4, #0x1C8
MOV             R2, #8
MOV             R1, #0
BL              sub_110BE4
MOV             R0, R4
POP             {R4-R8,PC}
