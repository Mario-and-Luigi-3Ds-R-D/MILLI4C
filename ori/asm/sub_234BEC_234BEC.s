PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6B38E8
STR             R0, [R4]
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_234C38
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_234C38
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R12, R4, #0x1C
LDM             R2, {R0,R1,R3}
MOV             R2, #0
STM             R12, {R0,R1,R3}
MOV             R0, R4
STRB            R2, [R4,#0x34]
POP             {R4,PC}
