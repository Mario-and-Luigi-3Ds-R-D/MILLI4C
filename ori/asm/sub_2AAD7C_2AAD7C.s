PUSH            {R4-R6,LR}
MOV             R5, #0
MOV             R1, #0xFFFFFFFF
STRH            R5, [R0]
ADD             R4, R0, #4
STRH            R1, [R0,#2]
LDR             R0, [R0,#4]
BIC             R0, R0, #0x1F
STR             R0, [R4]
LDR             R0, =dword_6E1330
STRH            R1, [R4,#4]
STRH            R1, [R4,#6]
STRB            R1, [R4,#8]
STR             R5, [R4,#0xC]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2AADEC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_2AADEC
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R1, =flt_711FE4
ADD             R3, R4, #0x10
LDM             R1, {R0,R2}
LDR             R1, [R1,#(flt_711FEC - 0x711FE4)]
STR             R1, [R4,#0x18]
STM             R3, {R0,R2}
SUB             R0, R4, #4
STR             R5, [R4,#0x1C]
POP             {R4-R6,PC}
