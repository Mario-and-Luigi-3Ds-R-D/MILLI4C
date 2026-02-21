PUSH            {R4-R6,LR}
ADD             R1, R0, #0x12400
ADD             R5, R0, #0x12400
ADD             R1, R1, #0x314
ADD             R5, R5, #0x318
LDR             R4, [R1]
LDR             R0, [R5]
CMP             R0, R4
BEQ             loc_1FA104
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x18]
BLX             R1
CMP             R0, #0
BEQ             loc_1FA0F4
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
POP             {R4-R6,LR}
BX              R1
LDR             R0, [R5]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_1FA0C8
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1FA144
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1FA144
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VLDM            R0, {S0-S2}
POP             {R4-R6,PC}
