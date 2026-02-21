PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, R1
MOV             R1, #1
VPUSH           {D8}
LDR             R5, =dword_6E1330
LDR             R0, [SP,#0x20+arg_0]
STRB            R1, [R4,#0x11C]
ADD             R1, R4, #0x3AC
VLDR            S16, =0.0
STM             R1, {R2,R3}
LDR             R1, [R0]
STR             R1, [R4,#0x3B4]
LDR             R0, [R0,#4]
STR             R0, [R4,#0x3B8]
LDR             R0, [R5]
TST             R0, #1
BNE             loc_185130
MOV             R0, R5
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_185130
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R5
NOP
LDR             R2, =flt_711FE4
ADD             R3, R4, #0x12C
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
LDR             R0, [R5]
ADD             R5, R4, #0x354
TST             R0, #1
BNE             loc_18517C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_18517C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R6, =flt_711FE4
MOV             R0, R5
BL              sub_5A26D0
LDM             R6, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
VLDR            S16, =1.0
STM             R3, {R0-R2}
STM             R5, {R0-R2}
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1851DC
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1851DC
LDR             R0, =flt_711FD8
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S16, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
VMOV            S0, R7
LDR             R1, =flt_711FD8
VLDR            S2, =0.2
ADD             R0, R4, #0x354
VCVT.F32.U32    S1, S0
VMOV.F32        S0, S16
BL              sub_5A27A0
LDR             R1, =off_6738C0
LDRD            R0, R1, [R1,#(off_6738D8 - 0x6738C0)]
STRD            R0, R1, [R4]
VPOP            {D8}
POP             {R4-R8,PC}
