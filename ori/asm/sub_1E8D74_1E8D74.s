PUSH            {R4-R6,LR}
BL              sub_234BEC
LDR             R1, =off_6B24A0
MOV             R5, #0
MOV             R4, R0
STR             R1, [R0]
STR             R5, [R0,#0x38]
STR             R5, [R0,#0x3C]
STR             R5, [R0,#0x40]
LDR             R0, =dword_6E1320
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1E8DD0
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1E8DD0
LDR             R0, =flt_6E1324
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDR             R1, =flt_6E1324
LDRD            R0, R1, [R1]
STRD            R0, R1, [R4,#0x44]
STRB            R5, [R4,#0x4C]
STRB            R5, [R4,#0x4D]
STRB            R5, [R4,#0x4E]
MOV             R0, R4
STRB            R5, [R4,#0x4F]
POP             {R4-R6,PC}
