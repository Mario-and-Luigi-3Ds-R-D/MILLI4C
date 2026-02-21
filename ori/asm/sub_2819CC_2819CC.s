PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, [R0,#0x20]
SUB             SP, SP, #0x14
MOV             R3, R1
CMP             R0, #0
BEQ             loc_281A78
ADD             R1, R0, #0x3FC
ADD             R2, SP, #0x20+var_1C
MOV             R0, R3
BL              sub_288EFC
CMP             R0, #0
BEQ             loc_281A78
LDR             R0, =dword_6E1330
LDR             R1, =off_6CE970
LDR             R4, [R4,#0x20]
LDR             R0, [R0]
LDR             R5, [R1]
TST             R0, #1
BNE             loc_281A48
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_281A48
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R0, #0
STR             R0, [SP,#0x20+var_20]
LDR             R3, =flt_711FE4
ADD             R2, R4, #8
MOV             R1, #0x1B0
MOV             R0, R5
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
MOV             R0, #6
STRB            R0, [R4,#4]
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
