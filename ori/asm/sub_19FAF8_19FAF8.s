PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =dword_6E132C
VPUSH           {D8}
SUB             SP, SP, #0x28
LDR             R0, [R0]
VLDR            S16, =1.0
TST             R0, #1
BNE             loc_19FB44
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_19FB44
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
VLDR            S17, =0.0
VLDR            S0, =90.0
VSTR            S17, [SP,#0x40+var_40]
VSTR            S17, [SP,#0x40+var_3C]
MOV             R5, R0
VSTR            S0, [SP,#0x40+var_38]
LDR             R0, [R4,#4]
MOV             R1, SP
BL              sub_14E9C8
LDR             R0, [R4,#4]
ADD             R1, R5, #0x370
BL              sub_14E984
ADD             R0, R5, #0x400
ADD             R0, R0, #0x1CC
ADD             R1, R5, #0x400
ADD             R1, R1, #0x26C
STR             R0, [R4,#8]
STR             R1, [R4,#0x18]
LDR             R0, [R6]
BL              sub_5C6660
VLDR            S5, [R5,#0x38C]
VLDR            S2, [R0]
VLDR            S4, [R5,#0x390]
VLDR            S1, [R0,#4]
VLDR            S0, [R5,#0x394]
VLDR            S3, [R0,#8]
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S4
VADD.F32        S0, S3, S0
ADD             R2, SP, #0x40+var_34
MOV             R1, #0
VSTR            S2, [SP,#0x40+var_34]
VSTR            S1, [SP,#0x40+var_30]
VSTR            S0, [SP,#0x40+var_2C]
LDR             R0, [R4,#4]
VLDR            S0, [R5,#0x3A4]
ADD             R0, R0, #0x1DC
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
MOV             R0, #0
STRB            R0, [R4,#0x28]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8}
POP             {R4-R6,PC}
