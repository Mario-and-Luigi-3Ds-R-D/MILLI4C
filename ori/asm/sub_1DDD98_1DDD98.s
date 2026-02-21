PUSH            {R4-R9,LR}
MOV             R4, R0
MOV             R8, R1
MOV             R6, R2
LDR             R9, =off_6CE970
MOV             R7, R3
VPUSH           {D8}
SUB             SP, SP, #4
LDR             R0, [R9]
MOV             R1, #1
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_58F5A4
LDR             R0, [R9]
VLDR            S16, =0.0
MOV             R1, #0
BL              sub_5EE8E0
VMOV.F32        S0, S16
MOV             R1, R0
MOV             R0, R4
BL              sub_1DB5F8
CMP             R8, #0
MOV             R5, #0
BEQ             loc_1DDE08
CMP             R8, #1
CMPNE           R8, #2
BEQ             loc_1DDF88
B               loc_1DDE7C
ADD             R0, R4, #0x20000
ADD             R0, R0, #0xF00
CMP             R6, #0
MOV             R1, #0
LDRHEQ          R1, [R0,#0xC]
BEQ             loc_1DDE34
CMP             R6, #1
LDRHEQ          R1, [R0,#8]
BEQ             loc_1DDE34
CMP             R6, #2
LDRHEQ          R1, [R0,#0xA]
MOV             R3, R7
MOV             R2, R6
ADD             R0, R4, #0x74 ; 't'
BL              sub_2162F4
ADD             R0, R4, #0x11C0
NOP
BL              sub_2A73C0
ADD             R5, R4, #0x400
ADD             R0, R4, #0x11C0
LDRH            R1, [R5,#0x6E]
BL              sub_2A72E8
NOP
NOP
BL              sub_47FFCC
LDRH            R5, [R5,#0x6E]
CMP             R6, #2
MOVEQ           R7, #2
MOVNE           R7, #1
ADD             R0, R4, #0xC00
ADD             R0, R0, #0x1C8
BL              sub_214964
LDR             R0, [R9]
MOV             R1, #3
BL              sub_529274
ADD             R0, R4, #0x20000
ADD             R0, R0, #0xF20
MOV             R6, R0
BL              sub_4E63E0
LDR             R8, =flt_6E34B0
MOV             R2, #0xFF
MOV             R1, SP
VLDR            S0, =8.0
LDR             R0, [R8,#(dword_6E35CC - 0x6E34B0)]
STRB            R0, [SP,#0x28+var_28]
STRB            R0, [SP,#0x28+var_27]
STRB            R0, [SP,#0x28+var_26]
MOV             R0, R6
STRB            R2, [SP,#0x28+var_25]
BL              sub_4E665C
ADD             R0, R4, #0x20C00
LDR             R1, [R8,#(dword_6E35D8 - 0x6E34B0)]
ADD             R0, R0, #0x314
BL              sub_4E7C50
LDR             R0, =0x20F10
MOV             R1, #1
VMOV.F32        S0, S16
MOV             R2, R5
STRB            R1, [R0,R4]
LDR             R0, [R9]
MOV             R1, R7
BL              sub_52B884
MOV             R0, #0
ADD             R1, R0, R0,LSL#1
ADD             R0, R0, #1
ADD             R2, R4, R1,LSL#2
ADD             R2, R2, #0x20800
ADD             R2, R2, #0x2C4
MOV             R1, #0
CMP             R0, #2
STRB            R1, [R2]
BLT             loc_1DDF04
LDR             R0, [R9]
MOV             R3, #0
MOV             R2, R3
ADD             R0, R0, #0x10C000
MOV             R1, #1
ADD             R0, R0, #0x214
BL              sub_58E7CC
LDR             R5, =unk_656B78
LDR             R0, [R9]
MOV             R1, #0
VLDR            S16, [R5,#(flt_656B80 - 0x656B78)]
BL              sub_5EE8E0
VMOV.F32        S0, S16
MOV             R1, R0
MOV             R0, R4
BL              sub_1DB5F8
ADD             R5, R5, #0x94
ADD             R1, R4, #0x20800
LDM             R5, {R0,R2}
ADD             R1, R1, #0x2BC
STM             R1, {R0,R2}
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4-R9,PC}
MOV             R2, R7
MOV             R1, R6
ADD             R0, R4, #0x74 ; 't'
BL              sub_215BDC
ADD             R0, R4, #0x11C0
NOP
BL              sub_2A73C0
LDR             R0, =0x138F24
CMP             R8, #1
BEQ             loc_1DDFBC
CMP             R8, #2
BNE             loc_1DDFFC
B               loc_1DDFE0
LDR             R3, [R9]
ADD             R7, R4, #0x11C0
MOV             R2, #0
MOV             R1, #0x10
ADD             R0, R0, R3; loc_138F24
BL              sub_571558
STR             R0, [R7,#0x3F8]
NOP
B               loc_1DDFFC
LDR             R3, [R9]
ADD             R7, R4, #0x11C0
MOV             R2, #0
MOV             R1, #0x11
ADD             R0, R0, R3; loc_138F24
BL              sub_571558
STR             R0, [R7,#0x3F8]
CMP             R6, #0
MOV             R7, #3
MOVEQ           R5, #0x1000
BEQ             loc_1DDE7C
CMP             R6, #1
CMPNE           R6, #2
MOVEQ           R5, #0x2000
B               loc_1DDE7C
