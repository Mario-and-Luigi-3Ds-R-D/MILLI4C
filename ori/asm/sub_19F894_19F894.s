PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =dword_6E132C
VPUSH           {D8}
SUB             SP, SP, #0x28
LDR             R0, [R0]
VLDR            S16, =1.0
TST             R0, #1
BNE             loc_19F8E0
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_19F8E0
LDR             R0, =flt_711FD8
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S16, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R1, =flt_711FD8
LDR             R0, [R4,#4]
BL              sub_14EA04
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_592208
LDR             R6, =off_6CE388
LDR             R0, [R6]
LDR             R0, [R0,#0x98]
MOV             R5, R0
LDR             R0, [R6]
BL              sub_5C6660
VLDM            R0, {S0-S1}
MOV             R1, SP
VLDR            S2, [R5,#0x388]
VLDR            S3, [R0,#8]
VLDR            S5, [R5,#0x380]
VLDR            S4, [R5,#0x384]
VADD.F32        S2, S3, S2
VADD.F32        S0, S0, S5
VADD.F32        S1, S1, S4
ADD             R0, SP, #0x40+var_34
VLDR            S17, =0.0
VSTM            R0, {S0-S2}
VLDR            S0, =90.0
VSTR            S17, [SP,#0x40+var_40]
VSTR            S17, [SP,#0x40+var_3C]
VSTR            S0, [SP,#0x40+var_38]
LDR             R0, [R4,#4]
BL              sub_14E9C8
LDR             R0, [R4,#4]
ADD             R1, R5, #0x364
BL              sub_14E984
ADD             R0, R5, #0x590
ADD             R1, R5, #0x400
ADD             R1, R1, #0x21C
STR             R0, [R4,#8]
STR             R1, [R4,#0x18]
LDR             R0, [R4,#4]
VLDR            S0, [R5,#0x37C]
ADD             R2, SP, #0x40+var_34
ADD             R0, R0, #0x1DC
MOV             R1, #0
BL              sub_5A2298
LDR             R0, [R4,#4]
ADD             R1, R0, #0x100
ADD             R0, R4, #8
BL              sub_61E6A4
LDR             R0, [R4,#4]
ADD             R1, R0, #0x158
ADD             R0, R4, #0x18
BL              sub_61E6A4
VSTR            S17, [SP,#0x40+var_28]
VSTR            S17, [SP,#0x40+var_24]
VSTR            S16, [SP,#0x40+var_20]
LDR             R0, [R4,#4]
ADD             R1, SP, #0x40+var_28
LDR             R0, [R0,#0x410]
BL              sub_1A5C08
ADD             SP, SP, #0x28 ; '('
VPOP            {D8}
POP             {R4-R6,PC}
