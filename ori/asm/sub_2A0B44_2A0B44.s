PUSH            {R4-R6,LR}
LDR             R1, =off_6B3DF4
VPUSH           {D8}
STR             R1, [R0],#4
BL              sub_2A060C
LDR             R1, =dword_6E1330
VLDR            S16, =0.0
ADD             R4, R0, #0xEC
LDR             R1, [R1]
TST             R1, #1
BNE             loc_2A0B98
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_2A0B98
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VMOV.F32        S0, S16
LDR             R1, [R0]
STR             R1, [R4]
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
STR             R1, [R4,#4]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R4,#8]
ADD             R0, R4, #0xC
BL              sub_5A1E10
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
MOV             R5, #1
ADD             R1, R0, #0x34 ; '4'
STRB            R5, [R0,#0x14]
MOV             R0, #0xFFFFFFFF
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
SUB             R1, R0, #0x14C
VSTR            S16, [R0,#0x1C]
ADD             R0, R0, #0x20 ; ' '
VSTR            S16, [R0]
VSTR            S16, [R0,#4]
ADD             R0, R1, #0x174
BL              sub_2C2000
ADD             R0, R0, #0x7000
LDR             R1, =nullsub_343
MOV             R3, #0xC
MOV             R2, #0x10
ADD             R0, R0, #0x2D8
BLX             sub_1002F4
SUB             R4, R0, #0x7400
MOV             R1, #0
SUB             R4, R4, #0x4C ; 'L'
MOV             R2, #0xC0
STRB            R1, [R0,#0xC0]
BL              sub_110BE4
ADD             R0, R4, #0x174
NOP
BL              sub_2C0EF0
LDR             R2, =0x5C24
LDRB            R0, [R4,#0x1D]
VLDR            S0, =1.0
ADD             R1, R4, #0x5800
ORR             R3, R2, R2,ASR#12
STRB            R0, [R2,R4]
STRB            R5, [R3,R4]
VSTR            S0, [R1,#0x18C]
VSTR            S0, [R1,#0x190]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,PC}
