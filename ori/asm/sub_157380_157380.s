PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R5, [R0,#0x18]
LDR             R1, [R5,#0x204]
ADD             R1, R1, #0xC
VLDM            R1, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             locret_1574A0
LDRSB           R1, [R4,#0x38]
ADD             R2, R0, #0x1C
ADD             R0, R5, #0x1DC
CMN             R1, #1
LDR             R1, [R4,#0x14]
LDRNE           R1, [R1,#0x70]
LDREQ           R1, [R1,#0x48]
VMOV            S0, R1
STR             R1, [SP,#0x10+var_10]
MOV             R1, #0
BL              sub_5A2A74
MOV             R2, #0
MOV             R1, #2
MOV             R0, R5
BL              sub_14D960
MOV             R1, #1
MOV             R0, R5
BL              sub_14DCB0
LDRH            R1, [R5,#0x10]
LDR             R5, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R2, =0x30085
MOV             R3, #0
LDR             R12, [R5]
SUB             R0, R12, R0
BL              sub_503808
LDR             R5, [R5]
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_157488
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_157488
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_15746C
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_15746C
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
LDR             R1, =off_63FDB0
LDRD            R0, R1, [R1,#(off_63FE50 - 0x63FDB0)]
STRD            R0, R1, [R4,#0xC]
MOV             R0, R4
POP             {R3-R5,LR}
B               sub_154484
POP             {R3-R5,PC}
