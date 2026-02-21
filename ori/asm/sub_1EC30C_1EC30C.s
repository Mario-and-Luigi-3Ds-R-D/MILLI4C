PUSH            {R4-R9,LR}
MOV             R5, R0
MOV             R4, R1
MOV             R6, R2
VPUSH           {D8}
SUB             SP, SP, #4
LDRB            R0, [R2,#0x75C]
ANDS            R0, R0, #8
BEQ             loc_1EC64C
LDR             R0, [R4,#0x658]
VLDR            S0, =0.5
TST             R0, #0x800
BNE             loc_1EC364
ADD             R0, R6, #0x400
VLDR            S1, [R6,#0x10C]
VLDR            S2, [R0,#0x234]
VLDR            S3, [R4,#0x10C]
VMLA.F32        S1, S2, S0
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
MOVGT           R0, #0
BGT             loc_1EC64C
LDR             R0, =off_6D1648
LDR             R7, =unk_6EC450
LDR             R0, [R0,#(dword_6D1650 - 0x6D1648)]
TST             R0, #1
BNE             loc_1EC3A8
LDR             R0, =dword_6D1650
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1EC3A8
ADD             R1, R7, #8
VLDR            S0, =1.0
VLDR            S1, =14.0
LDR             R0, =dword_6D1650
VSTM            R7, {S0-S1}
VSTM            R1, {S0-S1}
NOP
LDRB            R1, [R4,#0xDE]
LDR             R0, [R4,#0x86C]
VLDR            S2, =-1.0
BIC             R1, R1, #8
STRB            R1, [R4,#0xDE]
LDR             R1, [R4]
AND             R0, R0, #0x20 ; ' '
ADD             R0, R7, R0,LSR#2
LDR             R1, [R1,#0x214]
VLDM            R0, {S0-S1}
MOV             R0, R4
BLX             R1
ADD             R7, R4, #0x400
VLDR            S16, =0.0
LDRH            R0, [R7,#0x68]
MOV             R8, #0
SUB             R0, R0, #8
CMP             R0, #8
BCS             loc_1EC430
LDR             R0, [R4]
LDR             R1, [R0,#0x370]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x3C0]
MOV             R0, R4
BLX             R1
STRH            R8, [R7,#0x68]
VSTR            S16, [R7,#0x78]
LDR             R0, [R5,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
BIC             R1, R1, #0x40 ; '@'
STR             R1, [R0,#0x14]
LDRB            R1, [R6,#0x75C]
LDR             R0, =dword_6E2378
LDR             R3, =0x20003
LDR             R8, =dword_6E1330
TST             R1, #0x10
MOV             R9, #8
ADD             R7, R4, #0x800
BEQ             loc_1EC54C
VMOV.F32        S0, S16
MOV             R1, #3
STRB            R1, [R0,#(byte_6E2387 - 0x6E2378)]
MOV             R2, #0
MOV             R1, R6
MOV             R0, R3
VMOV.F32        S1, S0
BL              sub_1459F8
STR             R9, [R5,#0x154]
LDRH            R0, [R7,#0xB8]
BL              sub_2AF718
LDR             R0, [R0]
TST             R0, #1
LDR             R0, [R8]
AND             R0, R0, #1
BEQ             loc_1EC49C
CMP             R0, #0
BEQ             loc_1EC4F8
B               loc_1EC524
CMP             R0, #0
BNE             loc_1EC4D0
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1EC4D0
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
LDR             R2, =0x172
MOV             R3, R4
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R5,#0xA0]
MOV             R1, #0
BL              sub_2D3F94
NOP
NOP
B               loc_1EC63C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1EC524
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
LDR             R2, =0x1AA
MOV             R3, R4
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R5,#0xA0]
MOV             R1, #0
BL              sub_2D3F94
NOP
NOP
B               loc_1EC63C
VMOV.F32        S0, S16
MOV             R1, #1
STRB            R1, [R0,#(byte_6E2387 - 0x6E2378)]
MOV             R2, #0
MOV             R1, R6
MOV             R0, R3
VMOV.F32        S1, S0
BL              sub_1459F8
STR             R9, [R5,#0x154]
LDRH            R0, [R7,#0xB8]
BL              sub_2AF718
LDR             R0, [R0]
TST             R0, #1
LDR             R0, [R8]
AND             R0, R0, #1
BEQ             loc_1EC598
CMP             R0, #0
BNE             loc_1EC620
B               loc_1EC5F4
CMP             R0, #0
BNE             loc_1EC5CC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1EC5CC
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
MOV             R3, R4
MOV             R2, #0xE1
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R5,#0xA0]
MOV             R1, #0
BL              sub_2D3F94
NOP
NOP
B               loc_1EC63C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1EC620
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
MOV             R3, R4
MOV             R2, #0x110
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R5,#0xA0]
MOV             R1, #0
BL              sub_2D3F94
LDR             R1, =off_67E18C
LDRD            R0, R1, [R1,#(off_67E1C4 - 0x67E18C)]
STRD            R0, R1, [R5,#0x4C]
MOV             R0, #1
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4-R9,PC}
