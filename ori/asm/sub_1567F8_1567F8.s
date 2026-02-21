PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R6, [R0,#0x18]
MOV             R0, R6
BL              sub_5C5820
CMP             R0, #0
LDREQ           R0, =off_6CE970
LDREQ           R5, [R0]
BNE             locret_1568DC
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_156894
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]
CMP             R0, #0
BNE             loc_156894
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_156878
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_156878
LDR             R0, =flt_711FD8
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S0, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R0, =flt_6E2350
LDR             R2, =flt_711FD8
MOV             R1, #0
VLDR            S0, [R0,#(flt_6E235C - 0x6E2350)]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x208
BL              sub_5A2074
LDRSB           R0, [R4,#0x38]
LDR             R5, =off_63FDB0
CMP             R0, #5
BEQ             loc_1568C0
CMP             R0, #3
BEQ             loc_1568E0
LDRD            R0, R1, [R5,#(off_63FE50 - 0x63FDB0)]
STRD            R0, R1, [R4,#0xC]
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_154484
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x11
MOV             R0, R6
BL              sub_14C548
LDRD            R0, R1, [R5,#(off_63FE68 - 0x63FDB0)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R6,PC}
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_157380
