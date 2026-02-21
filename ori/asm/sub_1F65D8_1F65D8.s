PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R7, #0
MOV             R4, R7
LDR             R1, =off_68BB50
LDR             R9, =dword_6E1330
LDR             R8, =flt_711FE4
VPUSH           {D8}
STRB            R7, [R0,#0x32]
STR             R7, [R0,#0x34]
STR             R7, [R0,#0x44]
STR             R7, [R0,#0x48]
STRH            R7, [R0,#0xA0]
LDRD            R0, R1, [R1,#(dword_68BBB0 - 0x68BB50)]
VLDR            S16, =0.0
STRD            R0, R1, [R5,#0xA4]
ADD             R0, R5, R4,LSL#2
STR             R7, [R0,#0x38]
STR             R7, [R0,#0x4C]
LDR             R0, [R9]
TST             R0, #1
BNE             loc_1F665C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1F665C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
ADD             R1, R4, R4,LSL#1
ADD             R6, R5, R1,LSL#2
LDM             R8, {R0-R2}
ADD             R3, R6, #0x58 ; 'X'
STM             R3, {R0-R2}
LDR             R0, [R9]
TST             R0, #1
BNE             loc_1F66A8
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1F66A8
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDM             R8, {R0-R2}
ADD             R6, R6, #0x7C ; '|'
ADD             R4, R4, #1
CMP             R4, #3
STM             R6, {R0-R2}
BLT             loc_1F6618
LDR             R4, =off_6D1648
LDR             R0, [R4]
BL              sub_5C8540
CMP             R0, #0
NOP
BEQ             loc_1F6720
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x310]
TST             R0, #0x1000
BEQ             loc_1F6720
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x2F0
LDR             R1, [R0]
ORR             R1, R1, #4
STR             R1, [R0]
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19DA68
VPOP            {D8}
MOV             R0, R5
POP             {R4-R10,PC}
