PUSH            {R4-R7,LR}
MOV             R4, R0
ADD             R1, R4, #0x10
SUB             SP, SP, #0x14
LDM             R1, {R1-R3}
LDR             R0, [R0,#0x2C]
STMEA           SP, {R1-R3}
ADD             R5, R0, #0x24 ; '$'
LDRB            R1, [R4,#0x28]
CMP             R1, #0
BEQ             loc_299940
CMP             R1, #1
BEQ             loc_29995C
CMP             R1, #2
BNE             loc_29998C
B               loc_299974
VMOV            S0, R3
VLDR            S1, [R5,#0x20]
MOV             R7, #0x13
MOV             R6, #0
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_20]
B               loc_29998C
VLDR            S1, [R5,#0x20]
VLDR            S0, [SP,#0x28+var_28]
MOV             R7, #0x11
MOV             R6, #0
VSUB.F32        S0, S0, S1
B               loc_299988
VLDR            S1, [R5,#0x20]
VLDR            S0, [SP,#0x28+var_28]
MOV             R7, #0x11
MOV             R6, #1
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_28]
MOV             R0, #9
STRB            R0, [R4,#6]
LDR             R0, [R4,#0x2C]
MOV             R2, #0
LDR             R1, [R0,#4]
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, R7
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14C548
MOV             R0, #0xFFFFFF00
STRB            R6, [R4,#0x13B]
REV             R0, R0
ADD             R1, SP, #0x28+var_18
STR             R0, [SP,#0x28+var_18]
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14D778
MOV             R0, #0xFFFFFF00
ADD             R6, R4, #0x374
REV             R0, R0
STR             R0, [SP,#0x28+var_1C]
MOV             R0, R6
BL              sub_4E63E0
LDR             R0, [SP,#0x28+var_1C]
ADD             R1, SP, #0x28+var_1C
STR             R0, [R6,#4]
STR             R0, [R6]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x28+var_1C]
VLDR            S0, [R5,#0x24]
ADD             R0, R4, #0x374
VCVT.F32.U32    S0, S0
BL              sub_4E665C
MOV             R7, #1
MOV             R1, SP
ADD             R0, R4, #0x48 ; 'H'
STRB            R7, [R4,#0x13A]
BL              sub_14E984
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_299A70
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_299A70
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R1, =flt_711FE4
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14E9C8
LDR             R2, =dword_6D1F40
LDRD            R0, R1, [R5,#0x18]
BL              sub_47EADC
VMOV            S0, R0
ADD             R1, R4, #0x10
ADD             R0, R4, #0x224
VCVT.F32.S32    S0, S0
BL              sub_5A1FC8
LDR             R0, [R4,#0x2C]
ADD             R1, R4, #0x48 ; 'H'
LDR             R3, [R0]
MOV             R0, #0
CMP             R0, #4
ADD             R2, R3, #8
BCC             loc_299ABC
BL              sub_2FE484
ADD             R2, R2, R0,LSL#3
MOV             R12, R0
LDR             R2, [R2,#4]
CMP             R2, #0
BEQ             loc_299AF0
ADD             R0, R12, #1
CMP             R0, #4
BCC             loc_299AAC
MOV             R5, #0
STR             R5, [R4,#0x444]
STRB            R7, [R4,#3]
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
ADD             R2, R3, #8
ADD             R5, R2, R12,LSL#3
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R2, =0x30216
MOV             R3, #0
LDR             R12, [R12]
SUB             R0, R12, R0
BL              sub_503720
MOV             R6, R0
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x64]
B               loc_299AE0
