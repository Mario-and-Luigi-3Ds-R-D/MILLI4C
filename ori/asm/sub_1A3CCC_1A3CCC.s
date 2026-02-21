PUSH            {R4-R6,LR}
BL              sub_5A2BD0
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
MOV             R1, #1
STR             R0, [R0,#-8]
SUB             R4, R0, #0x30 ; '0'
MOV             R2, #0
STRB            R1, [R0,#-4]
STR             R2, [R0,#0x28]!
STR             R2, [R0,#4]
STRB            R2, [R0,#8]
STR             R2, [R0,#0xC]
ADD             R0, R4, #0x6C ; 'l'
STR             R2, [R4,#0x68]
STR             R0, [R4,#0x70]
STR             R0, [R4,#0x6C]
LDR             R0, =dword_6E1330
STRB            R1, [R4,#0x74]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1A3D60
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1A3D60
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R5, =flt_711FE4
MOV             R0, R4
BL              sub_5A26D0
LDM             R5, {R1-R3}
ADD             R5, R4, #0x1C
MOV             R0, R4
STM             R5, {R1,R2}
ADD             R5, R4, #4
STR             R3, [R4,#0x24]
STM             R5, {R1,R2}
STR             R3, [R4,#0xC]
POP             {R4-R6,PC}
