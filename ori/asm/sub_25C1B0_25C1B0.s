PUSH            {R0,R1,R4-R11,LR}
MOV             R6, R0
MOV             R9, #0
LDR             R10, =off_6CE970
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0,#0x10]
LDR             R5, [R6,#0xC]
CMP             R0, R5
LDRNE           R11, =dword_6E1330
VLDRNE          S17, =0.0
BEQ             loc_25C340
LDR             R4, [R5]
LDRB            R0, [R4,#0x800]
CMP             R0, #0
BEQ             loc_25C224
LDR             R7, =0xFFE683CC
LDR             R0, [R10]
LDR             R2, =0x30178
MOV             R3, #0
ADD             R1, R4, #4
SUB             R0, R0, R7
BL              sub_503720
LDR             R0, [R10]
LDR             R2, =0x30179
MOV             R3, #0
ADD             R1, R4, #4
SUB             R0, R0, R7
BL              sub_503720
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x1B
ADD             R0, R4, #4
BL              sub_14C548
LDR             R8, =dword_6D1F40
ADD             R0, R4, #4
BL              sub_5C5724
MOV             R7, R0
MOV             R0, R8
BL              sub_546DB0
MUL             R0, R0, R7
MOV             R1, R0,LSR#16
ADD             R0, R4, #4
BL              sub_14F01C
LDR             R0, [R4,#0x838]
MOV             R2, R8
LDR             R0, [R0,#8]
VLDR            S0, [R0,#0x2C8]
VCVT.S32.F32    S0, S0
VMOV            R1, S0
VLDR            S0, [R0,#0x2C4]
VCVT.S32.F32    S0, S0
VMOV            R0, S0
BL              sub_47EADC
VMOV            S0, R0
VMOV.F32        S16, S17
VCVT.F32.S32    S0, S0
VSTR            S16, [R4,#0x3A0]
VSTR            S0, [R4,#0x3A4]
LDRB            R0, [R4]
CMP             R0, #0
BNE             loc_25C2C4
LDR             R0, [R4,#0x7EC]
CMP             R0, #0
BEQ             loc_25C2BC
BL              sub_533330
STR             R9, [R4,#0x7EC]
ADD             R0, R4, #0x3F8
BL              sub_528B1C
LDR             R0, [R11]
LDR             R7, [R10]
TST             R0, #1
BNE             loc_25C300
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_25C300
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R0, #7
STMEA           SP, {R0,R9}
LDR             R3, =flt_711FE4
ADD             R2, R4, #4
MOV             R1, #0x2D8
MOV             R0, R7
BL              sub_52C764
STR             R0, [R4,#0x7F0]
MOV             R1, #3
STRH            R9, [R0,#0xA]
STRB            R1, [R4]
STRB            R9, [R4,#1]
LDR             R0, [R6,#0x10]
ADD             R5, R5, #0xC
CMP             R0, R5
BNE             loc_25C1E0
LDR             R0, [R10]
LDR             R2, [SP,#0x40+var_28]
LDR             R1, =0x2D6
MOV             R3, #1
STR             R9, [SP,#0x40+var_40]
BL              sub_52AEA8
MOV             R0, #2
STRB            R0, [R6,#0x1A]
LDRB            R0, [R6,#0x810]
CMP             R0, #0
VLDRNE          S16, =4.0
MOVNE           R4, #0
BEQ             loc_25C3AC
MOV             R0, #0xFFFFFF00
VMOV.F32        S0, S16
REV             R0, R0
MOV             R1, SP
STR             R0, [SP,#0x40+var_40]
ADD             R0, R4, R4,LSL#1
RSB             R0, R0, R4,LSL#8
ADD             R0, R6, R0,LSL#2
ADD             R0, R0, #0x354
BL              sub_4E665C
ADD             R4, R4, #1
CMP             R4, #2
BCC             loc_25C374
STRB            R9, [R6,#0x810]
ADD             SP, SP, #0xC
VPOP            {D8}
ADD             SP, SP, #8
POP             {R4-R11,PC}
