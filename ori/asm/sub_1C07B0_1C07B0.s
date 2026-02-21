PUSH            {R4-R12,LR}
MOV             R6, R0
MOV             R4, #0
LDR             R9, =0x19C98
LDR             R10, =0x21218
LDR             R11, =byte_68DBBB
VPUSH           {D8-D9}
VLDR            S17, =2.0
VLDR            S16, =0.000015259
VLDR            S18, =0.25
RSB             R0, R4, R4,LSL#4
ADD             R1, R0, R4,LSL#5
LDR             R0, [R6,#4]
ADD             R1, R9, R1,LSL#2
ADD             R5, R0, R1
RSB             R1, R4, R4,LSL#3
ADD             R1, R10, R1,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDRB            R0, [R11]
CMP             R4, R0
BGE             loc_1C0884
LDR             R1, =0x2807
MOV             R0, R5
BL              sub_543494
LDR             R0, =unk_68C882
ADD             R0, R0, R4,LSL#5
LDRSH           R8, [R0,#8]
LDRH            R0, [R0,#0x1E]
CMP             R0, #0
MOVEQ           R2, #0
BEQ             loc_1C0850
LDR             R0, [R5,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
MOV             R7, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R7
MOV             R2, R0,LSR#16
LDR             R0, [R5]
VMOV.F32        S0, S17
MOV             R3, #0
MOV             R1, R8
LDR             R12, [R0,#0x3C]
MOV             R0, R5
BLX             R12
LDR             R0, [R5]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
B               loc_1C0898
LDR             R0, [R5]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
VMOV.F32        S1, S18
ADD             R0, R6, R4,LSL#2
ADD             R4, R4, #1
CMP             R4, #0x9F
VCVT.F32.U32    S0, S0
VMOV.F32        S2, S1
VMUL.F32        S0, S0, S16
VMLA.F32        S2, S0, S1
VSTR            S2, [R0,#0x28]
BLT             loc_1C07D8
LDR             R4, [R6,#4]
MOV             R1, #0x2800
ADD             R4, R4, #0x21000
ADD             R4, R4, #0x15C
MOV             R0, R4
BL              sub_543494
LDR             R0, [R4]
MOV             R2, #0
MOV             R1, #2
LDR             R3, [R0,#0x38]
MOV             R0, R4
BLX             R3
LDR             R0, [R4]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R4
BLX             R2
LDR             R0, [R6,#4]
LDR             R5, =dword_6E1330
VLDR            S16, =0.0
ADD             R4, R0, #0x23000
ADD             R4, R4, #0x4E0
VSTR            S16, [R4,#0x30]
LDR             R0, [R5]
TST             R0, #1
BNE             loc_1C0960
MOV             R0, R5
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1C0960
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R5
NOP
LDR             R0, =flt_711FE4
LDR             R1, [R0]
STR             R1, [R4,#0x10]
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
STR             R1, [R4,#0x14]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R4,#0x18]
LDR             R0, [R5]
TST             R0, #1
BNE             loc_1C09B4
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1C09B4
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
LDR             R1, [R0]
STR             R1, [R4,#0x1C]
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
STR             R1, [R4,#0x20]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R4,#0x24]
VPOP            {D8-D9}
POP             {R4-R12,PC}
