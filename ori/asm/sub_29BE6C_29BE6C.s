PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R7, #0
MOV             R4, R7
LDR             R1, =dword_68BC98
LDR             R9, =dword_6E1330
LDR             R8, =flt_711FE4
VPUSH           {D8}
STR             R7, [R0]
STR             R7, [R0,#0x10]
STR             R7, [R0,#0x14]
STRH            R7, [R0,#0x6C]
LDRD            R0, R1, [R1,#(dword_68BCF8 - 0x68BC98)]
VLDR            S16, =0.0
STRD            R0, R1, [R5,#0x70]
ADD             R0, R5, R4,LSL#2
STR             R7, [R0,#4]
STR             R7, [R0,#0x18]
LDR             R0, [R9]
TST             R0, #1
BNE             loc_29BEEC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_29BEEC
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
ADD             R1, R4, R4,LSL#1
ADD             R6, R5, R1,LSL#2
LDM             R8, {R0-R2}
ADD             R3, R6, #0x24 ; '$'
STM             R3, {R0-R2}
LDR             R0, [R9]
TST             R0, #1
BNE             loc_29BF38
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_29BF38
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDM             R8, {R0-R2}
ADD             R6, R6, #0x48 ; 'H'
ADD             R4, R4, #1
CMP             R4, #3
STM             R6, {R0-R2}
BLT             loc_29BEA8
VPOP            {D8}
MOV             R0, R5
POP             {R4-R10,PC}
