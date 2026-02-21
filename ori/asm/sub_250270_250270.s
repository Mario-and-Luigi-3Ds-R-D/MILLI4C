PUSH            {R4-R6,LR}
VPUSH           {D8}
BL              sub_14F198
LDR             R1, =off_6BBB4C
MOV             R6, #0
ADD             R2, R0, #0x1800
STR             R1, [R0]
STR             R6, [R0,#0x3F4]
ADD             R1, R0, #0x400
STR             R6, [R0,#0x3F8]
ADD             R1, R1, #0x24 ; '$'
STR             R6, [R0,#0x3FC]
STR             R1, [R0,#0xD84]
STR             R1, [R0,#0xD88]
ADD             R1, R0, #0xC00
ADD             R2, R2, #0xCC
ADD             R1, R1, #0x18C
ADD             R0, R0, #0x1800
STR             R1, [R2]
ADD             R0, R0, #0xDC
STR             R1, [R2,#4]
BL              sub_320EB8
VLDR            S16, =1.0
SUB             R4, R0, #0x1800
SUB             R5, R0, #0xDC
VSTR            S16, [R0,#8]
LDR             R0, =dword_6E1330
SUB             R4, R4, #0xDC
LDR             R0, [R0]
TST             R0, #1
BNE             loc_250318
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_250318
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R3, R5, #0x124
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_250364
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_250364
LDR             R0, =flt_711FD8
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S16, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R1, =flt_711FD8
LDM             R1, {R0,R2}
LDR             R1, [R1,#(flt_711FE0 - 0x711FD8)]
STR             R1, [R5,#0x138]
ADD             R5, R5, #0x130
STM             R5, {R0,R2}
ADD             R5, R4, #0x1800
ADD             R5, R5, #0x144
BL              sub_464168
MOV             R1, R0
MOV             R0, R5
BL              sub_1169CC
LDR             R1, =off_6B2A84
ADD             R0, R4, #0x1800
ADD             R0, R0, #0x174
STM             R0, {R1,R6}
LDR             R0, =0x18D8
STRB            R6, [R0,R4]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,PC}
