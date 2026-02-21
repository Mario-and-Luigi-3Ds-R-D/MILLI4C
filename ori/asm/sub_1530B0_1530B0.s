PUSH            {R4,LR}
MOV             R4, R0
MOV             R1, #0
ADD             R0, R4, R1,LSL#2
LDR             R0, [R0,#0x160]
CMP             R0, #0
BEQ             loc_1530F4
LDR             R2, [R0,#0x3F4]
CMP             R2, #0
BNE             locret_153198
LDR             R0, [R0,#0x3F8]
TST             R0, #1
CMPNE           R0, #0
BNE             locret_153198
ADD             R1, R1, #1
CMP             R1, #0x20 ; ' '
BCC             loc_1530BC
LDRB            R2, [R4,#0x1E0]
MOV             R0, #0
CMP             R2, #0
BLS             loc_153130
ADD             R3, R0, R0,LSL#2
ADD             R1, R4, R3,LSL#4
ADD             R1, R1, #0x100
LDRSB           R1, [R1,#0xE4]
CMP             R1, #0
CMPNE           R1, #0x7F
BNE             locret_153198
ADD             R0, R0, #1
AND             R0, R0, #0xFF
CMP             R2, R0
BHI             loc_153104
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_153170
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_153170
LDR             R0, =flt_711FD8
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S0, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R0, =dword_6E1FBC
LDR             R2, =flt_711FD8
MOV             R1, #0
VLDR            S0, [R0,#(flt_6E1FCC - 0x6E1FBC)]
ADD             R0, R4, #0x1400
ADD             R0, R0, #0x33C
BL              sub_5A2074
MOV             R0, R4
POP             {R4,LR}
B               sub_15230C
POP             {R4,PC}
