PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #0
VPUSH           {D8}
MOV             R1, #2
STRB            R0, [R4,#0xC]
LDR             R5, =dword_6E1338
STRB            R0, [R4,#0xD]
STRB            R0, [R4,#0xE]
STRB            R0, [R4,#0xF]
STRB            R1, [R4,#0x10]
LDR             R0, [R5]
VLDR            S17, =1.0
VLDR            S16, =0.0
TST             R0, #1
BNE             loc_14A8C8
MOV             R0, R5
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_14A8C8
LDR             R0, =flt_712000
ADD             R1, R0, #0xC
VSTR            S17, [R0]
VSTR            S16, [R0,#(flt_712004 - 0x712000)]
VSTR            S16, [R0,#(flt_712008 - 0x712000)]
VSTM            R1, {S16-S17}
VSTR            S16, [R0,#(flt_712014 - 0x712000)]
MOV             R0, R5
NOP
LDR             R6, =flt_712000
ADD             R0, R4, #0x14
VLDM            R6, {S0-S5}
VSTM            R0, {S0-S5}
LDR             R0, [R5]
TST             R0, #1
BNE             loc_14A91C
LDR             R0, =dword_6E1338
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_14A91C
MOV             R0, R6
ADD             R1, R0, #0xC
VSTR            S17, [R0]
VSTR            S16, [R0,#(flt_712004 - 0x712000)]
VSTR            S16, [R0,#(flt_712008 - 0x712000)]
VSTM            R1, {S16-S17}
VSTR            S16, [R0,#(flt_712014 - 0x712000)]
LDR             R0, =dword_6E1338
NOP
LDM             R6, {R0-R3,R5,R12}
ADD             LR, R4, #0x2C ; ','
STM             LR, {R0-R3,R5,R12}
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,PC}
