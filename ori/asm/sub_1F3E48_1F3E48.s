PUSH            {R4,LR}
LDR             R2, =off_6B2718
LDR             R1, =unk_68AF18
ADD             R4, R0, #0x14
VPUSH           {D8}
STR             R2, [R0]
LDRD            R2, R3, [R1,#(dword_68AF24 - 0x68AF18)]
VLDR            S16, =0.0
STRD            R2, R3, [R0,#4]
LDR             R2, [R1,#(dword_68AF30 - 0x68AF18)]
LDR             R1, [R1,#(dword_68AF2C - 0x68AF18)]
STR             R1, [R0,#0xC]
LDR             R1, =dword_6E1330
STR             R2, [R0,#0x10]
LDR             R1, [R1]
TST             R1, #1
BNE             loc_1F3EB4
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1F3EB4
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R1, =flt_711FE4
MOV             R0, R4
BL              sub_5A2B98
LDR             R1, =off_6B7C0C
MOV             R3, #2
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R2, R0, #0x30 ; '0'
STR             R2, [R0,#0x28]
MOV             R1, #2
STRB            R1, [R0,#0x2C]
SUB             R0, R0, #0x14
MOV             R2, #0
VSTR            S16, [R0,#0x94]
VSTR            S16, [R0,#0x98]
VSTR            S16, [R0,#0x9C]
VSTR            S16, [R0,#0xA0]
VSTR            S16, [R0,#0xA4]
VSTR            S16, [R0,#0xA8]
VSTR            S16, [R0,#0xAC]
VSTR            S16, [R0,#0xB0]
MOV             R1, #1
STRB            R2, [R0,#0xB6]
STRB            R1, [R0,#0xB7]
VPOP            {D8}
POP             {R4,PC}
