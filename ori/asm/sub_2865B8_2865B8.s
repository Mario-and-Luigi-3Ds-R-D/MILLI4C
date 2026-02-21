PUSH            {R4-R6,LR}
MOV             R5, #0
STR             R5, [R0]
STR             R5, [R0,#4]
STR             R5, [R0,#8]
STR             R5, [R0,#0xC]
STR             R5, [R0,#0x10]
MOV             R4, R0
STR             R5, [R0,#0x14]
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_286618
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_286618
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R3, R4, #0x18
LDM             R2, {R0-R2}
STR             R5, [R4,#0x3C]
STM             R3, {R0-R2}
MOV             R0, R4
POP             {R4-R6,PC}
