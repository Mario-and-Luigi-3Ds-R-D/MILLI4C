PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
SUB             SP, SP, #8
LDR             R5, [R0,#0x18]
LDR             R0, [R5,#0x204]
ADD             R0, R0, #0x34 ; '4'
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_21BF5C
LDR             R6, =off_6CE970
LDR             R0, =0xFFE683CC
LDRH            R1, [R5,#0x10]
LDR             R2, =0x3000A
LDR             R12, [R6]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503808
LDR             R0, =dword_6E1330
LDR             R6, [R6]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_21BF10
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_21BF10
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R0, #7
MOV             R1, #0
STRD            R0, R1, [SP,#0x18+var_18]
LDR             R3, =flt_711FE4
MOV             R2, R5
MOV             R0, R6
BL              sub_52AE1C
LDRB            R0, [R4,#0x15]
LDR             R5, =off_64E814
ADD             R0, R0, #1
AND             R0, R0, #0xFF
CMP             R0, #3
STRB            R0, [R4,#0x15]
LDRDEQ          R0, R1, [R5,#(off_64E81C - 0x64E814)]
BEQ             loc_21BF58
MOV             R0, R4
BL              sub_21C044
LDRD            R0, R1, [R5]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #8
POP             {R4-R6,PC}
