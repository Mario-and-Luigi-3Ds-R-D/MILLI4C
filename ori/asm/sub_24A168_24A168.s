PUSH            {R4-R8,LR}
ADD             R0, R0, #4
VPUSH           {D8}
BL              sub_437014
LDR             R2, =off_6B3B90
ADD             R1, R2, #0x24 ; '$'
STR             R2, [R0,#-4]
STR             R1, [R0],#0xE8
BL              sub_14F198
SUB             R0, R0, #0xEC
MOV             R6, #0
STRB            R6, [R0,#0x4E8]
ADD             R0, R0, #0x400
MOV             R1, #2
ADD             R0, R0, #0xEC
BL              sub_438514
LDR             R1, =dword_6E1330
SUB             R4, R0, #0x400
VLDR            S16, =0.0
SUB             R4, R4, #0xEC
LDR             R1, [R1]
TST             R1, #1
BNE             loc_24A1EC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_24A1EC
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
ADD             R5, R4, #0x400
ADD             R5, R5, #0xEC
LDM             R0, {R1,R2}
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R4,#0x500]
ADD             R0, R4, #0x400
ADD             R0, R0, #0xF8
STM             R0, {R1,R2}
LDR             R0, [R4,#8]
LDR             R1, [R0,#4]
MOV             R0, R5
STR             R1, [R4,#0x4F0]
LDR             R1, [R4,#8]
STR             R1, [R4,#0x4F4]
LDR             R1, [R1,#4]
STR             R5, [R1,#8]
LDR             R1, [R4,#8]
STR             R5, [R1,#4]
LDR             R1, [R4,#0x4EC]
LDR             R1, [R1,#8]
BLX             R1
MOV             R0, #4
STR             R0, [R4,#0x30]
VLDR            S0, =100.0
VSTR            S16, [R4,#0x70]
VSTR            S16, [R4,#0x74]
VSTR            S0, [R4,#0x78]
MOV             R7, #1
STRB            R7, [R4,#0xE8]
STR             R0, [R4,#0x50C]
ADD             R1, R4, #0x70 ; 'p'
MOV             R0, R5
BL              sub_438458
STRB            R6, [R4,#0x4E0]
STRB            R7, [R4,#0x554]
STRB            R6, [R4,#0x555]
STRB            R6, [R4,#0x4E9]
STR             R6, [R4,#0x4E4]
STR             R6, [R4,#0x540]
ADD             R0, R4, #0x400
STR             R6, [R4,#0x544]
STRB            R6, [R4,#0x4EA]
VSTR            S16, [R0,#0x150]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R8,PC}
