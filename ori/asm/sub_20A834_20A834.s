PUSH            {R4-R6,LR}
LDR             R0, [R2,#8]
LDR             R5, =off_6CE970
UXTH            R1, R0
LDR             R0, [R5]
BL              sub_528FF0
MOV             R4, R0
LDR             R0, [R5]
MOV             R3, #0
MOV             R2, R3
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#0x3C4]
MOV             R0, #0x2D8
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_20A888
MOV             R1, R4
BL              sub_3D21A8
MOV             R5, R0
MOV             R1, R5
MOV             R0, R4
BL              sub_14D7C0
ADD             R2, R4, #0x24 ; '$'
MOV             R1, #0
MOV             R0, R5
BL              sub_3D2190
LDR             R0, =dword_6E1330
ADD             R4, R4, #0x1DC
LDR             R0, [R0]
TST             R0, #1
BNE             loc_20A8E8
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_20A8E8
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
LDM             R5, {R0-R2}
ADD             R3, R4, #0x1C
ADD             R4, R4, #4
STM             R3, {R0-R2}
STM             R4, {R0-R2}
MOV             R0, #0
POP             {R4-R6,PC}
