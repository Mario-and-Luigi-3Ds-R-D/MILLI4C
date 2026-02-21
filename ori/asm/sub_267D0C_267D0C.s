PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R3, #0
LDR             R5, =off_6CE970
LDR             R6, =0xFFE683CC
LDR             R2, =0x3017A
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R1, [R0,#8]
LDR             R0, [R5]
SUB             R0, R0, R6
BL              sub_503720
LDR             R0, [R5]
LDR             R1, [R4,#8]
LDR             R2, =0x3017B
MOV             R3, #0
SUB             R0, R0, R6
BL              sub_503720
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xB
BL              sub_14C548
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
VLDR            S16, =0.0
MOV             R7, #0
LDR             R1, [R1,#8]
ADD             R0, R0, #0x39C
LDR             R1, [R1,#0x140]
VSTR            S16, [R0]
STR             R1, [R0,#4]
MOV             R0, #0xA
STRB            R0, [R4,#0xC]
LDR             R0, [R4,#0x50]
CMP             R0, #0
BEQ             loc_267DA8
BL              sub_533330
STR             R7, [R4,#0x50]
LDR             R0, =dword_6E1330
LDR             R6, [R4,#8]
LDR             R5, [R5]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_267DEC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_267DEC
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R0, #7
ADD             R1, R0, #0x2D0
STMEA           SP, {R0,R7}
LDR             R3, =flt_711FE4
MOV             R2, R6
MOV             R0, R5
BL              sub_52C764
STR             R0, [R4,#0x50]
STRH            R7, [R0,#0xA]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
