PUSH            {R4-R6,LR}
VPUSH           {D8}
BL              sub_14CB8C
LDR             R3, =off_6B3F30
MOV             R5, #0
ADD             R1, R0, #0x100
STR             R3, [R0]
STR             R5, [R0,#0x100]
STRB            R5, [R0,#0x104]
MOV             R2, #0xFF
STRH            R2, [R1,#6]
STRH            R2, [R1,#8]
LDR             R1, =sub_5931A8
MOV             R3, #2
MOV             R2, #0x104
ADD             R0, R0, #0x10C
BLX             sub_1002F4
ADD             R1, R0, #0x208
MOV             R0, #0xFFFFFF00
VLDR            S16, =0.0
REV             R2, R0
ADD             R0, R1, #0x1C
STR             R2, [R1]
STR             R2, [R1,#4]
STR             R2, [R1,#8]
VSTR            S16, [R1,#0xC]
VSTR            S16, [R1,#0x10]
VSTR            S16, [R1,#0x14]
VSTR            S16, [R1,#0x18]
BL              sub_5A2F28
SUB             R4, R0, #0x330
STRB            R5, [R0,#0x1C]
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2A4D44
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_2A4D44
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R3, R4, #0x350
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
MOV             R1, #2
MOV             R0, R4
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
MOV             R0, R4
BL              sub_14B798
VPOP            {D8}
MOV             R0, R4
POP             {R4-R6,PC}
