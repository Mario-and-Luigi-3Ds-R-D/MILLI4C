PUSH            {R4-R10,LR}
MOV             R4, R1
VPUSH           {D8}
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
MOV             R8, #1
STR             R1, [R0,#0x10]
STRB            R8, [R0,#0x14]
ADD             R0, R0, #0x6C ; 'l'
BL              sub_5A2BD0
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
STR             R1, [R0,#0x28]
STRB            R8, [R0,#0x2C]
ADD             R0, R0, #0x68 ; 'h'
BL              sub_14F198
ADD             R1, R0, #0x3F8
SUB             R2, R0, #0xD4
STR             R1, [R1,#0xB4]
STR             R1, [R0,#0x4B0]
LDM             R4, {R0,R1,R3}
ADD             R5, R2, #0x400
ADD             R5, R5, #0x18C
MOV             R9, #0
STM             R5, {R0,R1,R3}
MOV             R1, R2
ADD             R0, R2, #0x5B0
STR             R9, [R2,#0x5AC]
BL              sub_27147C
SUB             R4, R0, #0x5B0
STR             R9, [R0,#0x118]!
ADD             R0, R0, #4
STR             R0, [R0,#4]
STR             R0, [R0]
BL              sub_464168
VLDM            R0, {S0-S7}
ADD             R1, R4, #0x34 ; '4'
ADD             R6, R4, #0x54 ; 'T'
LDR             R5, =dword_6E1330
VLDR            S16, =0.0
VSTM            R1, {S0-S7}
ADD             R1, R0, #0x20 ; ' '
LDM             R1, {R1-R3}
LDR             R0, [R0,#0x2C]
STR             R0, [R4,#0x60]
STM             R6, {R1-R3}
LDR             R0, [R5]
TST             R0, #1
BNE             loc_273B1C
MOV             R0, R5
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_273B1C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R5
NOP
LDR             R6, =flt_711FE4
ADD             R3, R4, #0x400
ADD             R3, R3, #0x198
ADD             R7, R4, #0x400
LDM             R6, {R0-R2}
STM             R3, {R0-R2}
LDR             R0, [R5]
TST             R0, #1
BNE             loc_273B6C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_273B6C
MOV             R0, R6
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDM             R6, {R0-R2}
ADD             R3, R4, #0xC8
ADD             R5, R4, #0x6C ; 'l'
STM             R3, {R0-R2}
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_273BBC
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_273BBC
LDR             R0, =flt_711FD8
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S0, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R6, =flt_711FD8
MOV             R0, R5
BL              sub_5A26D0
LDM             R6, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
STM             R3, {R0-R2}
STM             R5, {R0-R2}
MOV             R0, R4
STRB            R9, [R4,#0x64]
BL              sub_5A18EC
VSTR            S16, [R4,#0xC]
VSTR            S16, [R4,#4]
STRB            R9, [R4,#0x65]
STRB            R9, [R4,#0x68]
STRB            R9, [R4,#0x67]
STR             R9, [R4,#0xC4]
VSTR            S16, [R7,#0x188]
STRB            R8, [R4,#0x4C8]
MOV             R1, #1
ADD             R0, R4, #0xD4
STRB            R9, [R4,#0x5A4]
BL              sub_14C450
LDR             R0, =off_6CDF98
MOV             R1, #0
LDR             R0, [R0]
LDR             R0, [R0,#0x124]
LDR             R0, [R0,#0x66C]
STRB            R0, [R4,#0x1CA]
ADD             R0, R4, #0xD4
STRB            R8, [R4,#0x1C6]
BL              sub_14C3E8
VPOP            {D8}
MOV             R0, R4
POP             {R4-R10,PC}
