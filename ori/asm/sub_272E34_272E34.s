PUSH            {R4-R7,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0,#4]
BL              sub_5CC564
ADD             R0, R4, #0x400
MOV             R1, #0
VSTR            S0, [R0,#8]
ADD             R0, R4, #8
BL              sub_14C3E8
MOV             R1, #1
ADD             R0, R4, #8
BL              sub_14C450
LDR             R0, =dword_6E1330
LDR             R1, =off_6CE970
VLDR            S16, =0.0
LDR             R0, [R0]
LDR             R5, [R1]
TST             R0, #1
BNE             loc_272EB0
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_272EB0
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R6, #0
MOV             R7, #1
LDR             R3, =flt_711FE4
ADD             R2, R4, #8
MOV             R1, #0x72 ; 'r'
MOV             R0, R5
STR             R6, [SP,#0x28+var_24]
STR             R7, [SP,#0x28+var_28]
BL              sub_52C764
STR             R0, [R4,#0x3FC]
STRH            R6, [R0,#0xA]
ADD             R0, R4, #0x3FC
MOV             R1, #1
VMOV.F32        S0, S16
SUBS            R1, R1, #1
VSTR            S0, [R0,#4]
ADD             R0, R0, #8
VSTR            S0, [R0]
BNE             loc_272EE4
ADD             R5, R4, #0x400
ADD             R5, R5, #0xC
LDR             R6, [R4,#4]
MOV             R0, R5
BL              sub_5A26D0
ADD             R6, R6, #0x400
ADD             R6, R6, #0x198
ADD             R3, R5, #0x1C
LDM             R6, {R0-R2}
ADD             R5, R5, #4
STM             R3, {R0-R2}
STM             R5, {R0-R2}
LDR             R0, [R4,#4]
STRB            R7, [R0,#0x4C9]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
