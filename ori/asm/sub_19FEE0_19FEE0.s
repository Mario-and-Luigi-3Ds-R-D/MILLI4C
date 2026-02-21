PUSH            {R4-R7,LR}
MOV             R5, R0
SUB             SP, SP, #0xC
LDR             R0, =dword_6E1330
LDR             R1, =off_6CE970
ADD             R4, R5, #4
LDR             R0, [R0]
LDR             R6, [R1]
TST             R0, #1
BNE             loc_19FF34
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_19FF34
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R7, #0
MOV             R0, #7
STMEA           SP, {R0,R7}
LDR             R3, =flt_711FE4
LDR             R1, =0x669
ADD             R2, R5, #0xC
MOV             R0, R6
BL              sub_52C764
MOV             R6, R0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R6, #0
STR             R6, [R4,#4]
STRNE           R4, [R6,#0x184]
LDR             R0, [R5,#8]
STRH            R7, [R0,#0xA]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
