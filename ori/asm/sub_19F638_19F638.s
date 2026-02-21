LDR             R0, [R0,#0xA4]
NOP
PUSH            {R4-R8,LR}
SUB             SP, SP, #0x10
MOV             R7, R0
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R6, SP
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x6C ; 'l'
BL              sub_10A358
CMP             R0, #0
MOV             R8, #0
MOVEQ           R5, #0
BEQ             loc_19F704
LDR             R1, =off_6BB3E0
STM             R0!, {R1,R7}
BL              sub_19E068
STR             R8, [R0,#0x34]
STR             R8, [R0,#0x38]
STRB            R8, [R0,#0x3C]
STR             R8, [R0,#0x40]
SUB             R5, R0, #8
ADD             R4, R0, #0x44 ; 'D'
STR             R8, [R0,#0x44]
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_19F6E0
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_19F6E0
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R12, R4, #4
LDM             R2, {R1,R3}
LDR             R2, [R2,#(flt_711FEC - 0x711FE4)]
STM             R12, {R1,R3}
ADD             R1, R4, #0xC
STM             R1, {R2,R8}
STRB            R8, [R4,#0x14]
STR             R8, [R4,#0x18]
ADD             R0, R6, #4
STR             R0, [SP,#0x28+var_20]
STR             R0, [SP,#0x28+var_24]
MOV             R1, R6
MOV             R2, #0
ADD             R0, R7, #0x3F4
STR             R5, [SP,#0x28+var_28]
BL              sub_61E2FC
LDR             R1, [SP,#0x28+var_20]
ADD             R0, SP, #0x28+var_24
CMP             R1, R0
BNE             loc_19F74C
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_19F74C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
