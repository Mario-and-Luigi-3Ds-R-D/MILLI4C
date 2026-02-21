PUSH            {R4,LR}
LDR             R2, [R0,#0x110]
RSB             R3, R1, R1,LSL#3
ADD             R4, R2, R3,LSL#3
MOV             R2, #0
STRB            R2, [R4,#0x24]
LDRSB           R3, [R0,#0xFF]
CMP             R3, R1
MOVEQ           R1, #0xFF
STRBEQ          R1, [R0,#0xFF]
LDR             R0, =dword_6E1330
STRH            R2, [R4,#0x26]
STR             R2, [R4,#0x28]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_218A10
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_218A10
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R1, =flt_711FE4
LDM             R1, {R0,R2}
LDR             R1, [R1,#(flt_711FEC - 0x711FE4)]
STR             R1, [R4,#0x34]
ADD             R4, R4, #0x2C ; ','
STM             R4, {R0,R2}
POP             {R4,PC}
