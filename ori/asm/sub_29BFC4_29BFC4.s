PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
ADD             R0, R0, #0x194
VLDR            S16, =1.0
VMOV.F32        S0, S16
BL              sub_5A176C
LDR             R0, [R4,#8]
VSTR            S0, [R0,#0xE4]
LDR             R0, [R4,#8]
VSTR            S0, [R0,#0xE8]
LDR             R0, [R4,#8]
VSTR            S0, [R0,#0xEC]
ADD             R0, R4, #0x194
BL              sub_5F1964
CMP             R0, #0
BNE             loc_29C074
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_29C040
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_29C040
LDR             R0, =flt_711FD8
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S16, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R3, =flt_711FD8
LDR             R2, [R4,#8]
LDR             R0, [R3]
LDMIB           R3, {R1,R3}
ADD             R2, R2, #0xE4
STM             R2, {R0,R1,R3}
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0xDE]
ORR             R1, R1, #1
STRB            R1, [R0,#0xDE]
LDR             R1, =off_67E548
LDRD            R0, R1, [R1]
STRD            R0, R1, [R4]
VPOP            {D8}
POP             {R4,PC}
