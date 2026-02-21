PUSH            {R4,LR}
LDR             R3, [R0,#0x110]
RSB             R12, R1, R1,LSL#3
ADD             R4, R3, R12,LSL#3
MOV             R3, #1
STRB            R3, [R4,#0x24]
VLDM            R2, {S0-S2}
VSTM            R4, {S0-S2}
LDRSB           R2, [R0,#0xFF]
CMP             R2, R1
MOVEQ           R1, #0xFF
STRBEQ          R1, [R0,#0xFF]
MOV             R0, #0
STRH            R0, [R4,#0x26]
STR             R0, [R4,#0x28]
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_218F38
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_218F38
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
LDM             R0, {R1,R2}
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R4,#0x34]
ADD             R4, R4, #0x2C ; ','
STM             R4, {R1,R2}
POP             {R4,PC}
