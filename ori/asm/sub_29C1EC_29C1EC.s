PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R6, R1
VPUSH           {D8}
MOV             R5, R2
LDR             R0, [R0,#8]
SUB             SP, SP, #0x20
LDR             R1, [R0]
LDR             R2, [R1,#0x84]
MOV             R1, #1
BLX             R2
MOV             R0, #1
MOV             R1, R0
STRB            R0, [R4,#0x18C]
ADD             R0, R4, #0xC
BL              sub_1E8FFC
MOV             R1, #0
MOV             R0, R4
BL              sub_29C18C
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R1, [R1,#0x288]
BLX             R1
LDR             R0, [R4,#8]
MOV             R2, #1
ADD             R1, R0, #0x400
VLDR            S0, [R0,#0x108]
VLDR            S1, [R1,#0x1BC]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_34]
VSTR            S0, [SP,#0x38+var_38]
VLDR            S0, [R0,#0x108]
VLDR            S1, [R1,#0x1C0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_30]
VSTR            S0, [SP,#0x38+var_2C]
VLDR            S0, [R0,#0x110]
VLDR            S1, [R1,#0x1C4]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_1C]
VSTR            S0, [SP,#0x38+var_28]
VLDR            S0, [R0,#0x110]
VLDR            S1, [R1,#0x1C8]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_20]
VSTR            S0, [SP,#0x38+var_24]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R3, [R1,#0x2B0]
MOV             R1, SP
BLX             R3
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R1, [R1,#0x32C]
BLX             R1
VLDR            S17, =0.0
CMP             R5, #0
BEQ             loc_29C2EC
VMOV.F32        S0, S17
LDR             R1, [R4,#8]
LDR             R0, =0x2033C
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
VLDR            S16, =1.0
CMP             R6, #0
BEQ             loc_29C334
ADD             R0, R4, #0x194
BL              sub_5A18EC
VMOV.F32        S0, S16
VSTR            S17, [R4,#0x1A0]
VSTR            S17, [R4,#0x198]
VLDR            S1, =3.0
MOV             R1, #0
ADD             R0, R4, #0x194
BL              sub_5A1598
LDR             R1, =off_67E548
LDRD            R0, R1, [R1,#(off_67E550 - 0x67E548)]
STRD            R0, R1, [R4]
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_29C370
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_29C370
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
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8}
POP             {R4-R6,PC}
