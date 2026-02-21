PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R5, =off_6CE970
ADD             R1, R0, #8
LDR             R0, =0xFFE683CC
LDR             R2, =0x300BE
LDR             R12, [R5]
SUB             SP, SP, #0x14
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R2, #0
ADD             R1, SP, #0x20+var_1C
ADD             R0, R4, #8
BL              sub_5C48B8
LDR             R0, [R5]
MOV             R1, #0
STR             R1, [SP,#0x20+var_20]
MOV             R3, #1
ADD             R2, SP, #0x20+var_1C
MOV             R1, #0x20C
BL              sub_52AEA8
MOV             R5, R0
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2820EC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_2820EC
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R3, =flt_711FE4
MOV             R2, #0x10000
ADD             R1, R4, #8
MOV             R0, R5
BL              sub_14C8F8
LDR             R0, [R5,#0x19C]
MOV             R3, #0x100
MOV             R2, #0
ORR             R0, R0, #0x100000
STR             R0, [R5,#0x19C]
MOV             R0, #5
STRB            R0, [R4,#4]
MOV             R1, #1
ADD             R0, R4, #8
BL              sub_14C430
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
