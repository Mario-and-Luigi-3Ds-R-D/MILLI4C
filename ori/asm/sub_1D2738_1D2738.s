PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, =sub_10D4F0
LDR             R1, =dword_6E1330
VPUSH           {D8}
ADD             R2, R4, R0
LDR             R1, [R1]
LDR             R5, [R2]
VLDR            S16, =0.0
TST             R1, #1
SUB             SP, SP, #4
BNE             loc_1D2790
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1D2790
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R0, #0
STR             R0, [SP,#0x18+var_18]
LDR             R3, =flt_711FE4
MOV             R2, R5
MOV             R1, #0x61 ; 'a'
MOV             R0, R4
BL              sub_52AE88
LDR             R1, =0x10E090
LDR             R3, =0xFFE683CC
VMOV.F32        S0, S16
MOV             R2, #0
STR             R0, [R1,R4]
LDR             R0, =off_6CE970
LDR             R1, =0x30081
LDR             R0, [R0]
SUB             R0, R0, R3
BL              sub_503414
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDRD            R0, R1, [R1,#(off_654044 - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4,R5,PC}
