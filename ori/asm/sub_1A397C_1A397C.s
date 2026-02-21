PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xA4]
BL              sub_19FA54
LDR             R0, [R4,#0xC8]
POP             {R4,LR}
NOP
PUSH            {R4-R8,LR}
ADD             R4, R0, #0x68 ; 'h'
MOV             R7, R0
LDR             R0, =off_6CE970
SUB             SP, SP, #0x10
MOV             R3, #0
MOV             R6, SP
LDR             R0, [R0]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x34 ; '4'
BL              sub_10A358
MOVS            R5, R0
MOV             R8, #0
BEQ             loc_1A3A54
LDR             R0, =off_6BB59C
STM             R5, {R0,R7,R8}
ADD             R5, R5, #8
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1A3A1C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1A3A1C
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R1, =flt_711FE4
MOV             R0, R5
LDRD            R2, R3, [R1]
LDR             R1, [R1,#(flt_711FEC - 0x711FE4)]
STR             R1, [R5,#0xC]
STRD            R2, R3, [R0,#4]
STR             R8, [R5,#0x10]
STRB            R8, [R5,#0x14]
STR             R8, [R5,#0x18]
STR             R8, [R5,#0x1C]
STR             R8, [R5,#0x20]
STRB            R8, [R5,#0x24]
SUB             R0, R5, #8
STR             R8, [R5,#0x28]
STR             R0, [SP,#0x28+var_28]
ADD             R0, R6, #4
STR             R0, [SP,#0x28+var_20]
STR             R0, [SP,#0x28+var_24]
LDR             R0, [R4]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_1A3A80
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [SP,#0x28+var_28]
LDR             R0, [R4]
CMP             R0, R1
BEQ             loc_1A3AF0
LDR             R1, [R4,#8]
ADD             R2, R4, #4
CMP             R1, R2
BNE             loc_1A3B40
CMP             R0, #0
BEQ             loc_1A3AB4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R0, [SP,#0x28+var_28]
STR             R0, [R4],#4
ADD             R0, R6, #4
CMP             R0, R4
LDRNE           R1, [SP,#0x28+var_20]
CMPNE           R1, R4
BEQ             loc_1A3AF0
MOV             R3, R1
LDM             R4, {R1,R2}
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R3, [R4,#4]
STR             R4, [R3]
STR             R4, [SP,#0x28+var_20]
STR             R0, [R4]
LDR             R0, [SP,#0x28+var_28]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R5
BLX             R2
LDR             R1, [SP,#0x28+var_20]
ADD             R0, SP, #0x28+var_24
CMP             R1, R0
BNE             loc_1A3B2C
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_1A3B2C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_1A3AB4
