PUSH            {R4-R10,LR}
MOV             R4, R0
MOVS            R5, R1
MOV             R3, #0
LDR             R8, =off_6CE970
LDR             R0, =0xFFE683CC
LDRNE           R2, =0x3018F
LDREQ           R2, =0x30190
ADD             R1, R4, #8
VPUSH           {D8}
SUB             SP, SP, #8
LDR             R12, [R8]
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, [R4]
LDR             R10, =dword_6E1330
VLDR            S16, =0.0
CMP             R5, #0
LDR             R0, [R0,#4]
LDRNE           R5, =0x2DF
LDREQ           R5, =0x2ED
VLDR            S0, [R0,#0x124]
VSTR            S16, [R4,#0x3A4]
VCVT.F32.U32    S0, S0
VSTR            S0, [R4,#0x3A8]
LDR             R0, [R10]
LDR             R6, [R8]
TST             R0, #1
BNE             loc_267A28
MOV             R0, R10
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_267A28
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R10
NOP
LDR             R7, =flt_711FE4
MOV             R9, #0
ADD             R2, R4, #8
MOV             R3, R7
MOV             R1, R5
MOV             R0, R6
STR             R9, [SP,#0x30+var_30]
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
LDR             R0, [R10]
LDR             R5, [R8]
TST             R0, #1
BNE             loc_267A90
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_267A90
MOV             R0, R7
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R3, R7
ADD             R2, R4, #8
MOV             R1, #0x5E0
MOV             R0, R5
STR             R9, [SP,#0x30+var_30]
BL              sub_52AE88
LDR             R1, [R0,#0x19C]
MOV             R3, #0x100
MOV             R2, #0
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
MOV             R1, #1
ADD             R0, R4, #8
BL              sub_14C430
MOV             R0, #1
STRB            R0, [R4,#4]
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R10,PC}
