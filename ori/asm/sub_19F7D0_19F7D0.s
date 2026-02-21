PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
MOV             R5, R0
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_19F824
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_19F824
LDR             R0, =flt_711FD8
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S0, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R1, =flt_711FD8
LDR             R0, [R4,#4]
BL              sub_14EA04
LDR             R0, [R4,#4]
ADD             R1, R5, #0x340
BL              sub_14E984
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
POP             {R4-R6,LR}
B               sub_1A5484
