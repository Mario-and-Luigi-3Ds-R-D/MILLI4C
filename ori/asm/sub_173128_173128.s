PUSH            {R4-R6,LR}
ADD             R5, R0, #0xA00
MOV             R4, R0
LDRH            R0, [R5,#0xA8]
MOV             R2, R0,LSL#24
CMP             R1, R2,LSR#31
BEQ             locret_1731D0
BIC             R0, R0, #0x80
ORR             R0, R0, R1,LSL#7
TST             R0, #0x80
STRH            R0, [R5,#0xA8]
BNE             locret_1731D0
LDR             R0, [R4]
ADD             R1, R4, #0x800
ADD             R1, R1, #0x2CC
LDR             R2, [R0,#0x6C]
MOV             R0, R4
BLX             R2
MOV             R0, #0
STRH            R0, [R5,#0xAE]
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1731B4
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1731B4
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R1, =flt_711FE4
LDM             R1, {R0,R2}
LDR             R1, [R1,#(flt_711FEC - 0x711FE4)]
STR             R1, [R4,#0xAE0]
ADD             R4, R4, #0x800
ADD             R4, R4, #0x2D8
STM             R4, {R0,R2}
POP             {R4-R6,PC}
