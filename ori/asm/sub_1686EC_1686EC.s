PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =dword_6E1320
ADD             R0, R0, #0x16000
ADD             R0, R0, #0xBE0
VPUSH           {D8}
MOV             R1, #0
STR             R1, [R0]
LDR             R0, [R5]
VLDR            S16, =0.0
TST             R0, #1
BNE             loc_168740
MOV             R0, R5
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_168740
LDR             R0, =flt_6E1324
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_6E1328 - 0x6E1324)]
MOV             R0, R5
NOP
LDR             R6, =flt_6E1324
ADD             R1, R4, #0x16800
ADD             R1, R1, #0x3E4
LDM             R6, {R0,R2}
STM             R1, {R0,R2}
LDR             R0, [R5]
TST             R0, #1
BNE             loc_168788
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_168788
MOV             R0, R6
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDR             R5, =off_6D1648
LDRD            R0, R1, [R6]
ADD             R2, R4, #0x13C00
STRD            R0, R1, [R2,#0x48]
LDR             R0, [R5]
BL              sub_1E4614
VSTR            S16, [R0,#0x120]
LDR             R0, [R5]
BL              sub_1E4614
VSTR            S16, [R0,#0x110]
LDR             R0, [R5]
BL              sub_1E4604
VSTR            S16, [R0,#0x120]
LDR             R0, [R5]
BL              sub_1E4604
VSTR            S16, [R0,#0x110]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,LR}
B               sub_193B7C
