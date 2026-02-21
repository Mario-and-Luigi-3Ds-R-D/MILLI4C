PUSH            {R4-R11,LR}
MOV             R5, R0
VPUSH           {D8}
SUB             SP, SP, #0x14
LDRB            R0, [R0,#0x38]
CMP             R0, #0
BEQ             loc_2AA934
LDR             R11, =off_6D1648
LDR             R0, [R11]
LDR             R6, [R0,#0xBC]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R4, [R0,#4]
LDRNE           R4, [R0,#8]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_2AA758
LDR             R0, [R4,#4]
LDR             R1, =0x13D40
LDR             R1, [R1,R0]
TST             R1, #1
BNE             loc_2AA758
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
STRH            R0, [R5,#0x3A]
MOV             R0, #0
STRB            R0, [R5,#0x10]
STRB            R0, [R5,#0x98]
MOV             R9, R0
STRB            R0, [R5,#0x99]
LDR             R0, [R11]
VLDR            S16, =0.0
ADD             R7, R6, #0x10000
MOV             R4, #0
LDR             R0, [R0,#0xC4]
ADD             R10, SP, #0x40+var_38
ADD             R7, R7, #0x3D00
LDR             R0, [R0,#4]
LDR             R1, [R0,#4]
STR             R1, [SP,#0x40+var_38]
LDR             R1, [R0,#8]
STR             R1, [SP,#0x40+var_34]
LDR             R1, [R0,#0xC]
STR             R1, [SP,#0x40+var_40]
LDR             R0, [R0,#0x10]
STR             R0, [SP,#0x40+var_3C]
LDR             R6, [R10,R4,LSL#2]
LDRH            R1, [R7,#4]
ADD             R0, R6, #0x800
LDRSH           R2, [R0,#0xB8]
CMP             R2, R1
BNE             loc_2AA830
LDRH            R0, [R0,#0xB8]
BL              sub_2AF718
LDR             R2, [R5,#0xC]
LDR             R1, [R0]
ADD             R2, R2, #0x10000
ADD             R2, R2, #0x3D00
MOV             R1, R1,LSL#1
LDRH            R2, [R2,#4]
CMP             R2, R1,LSR#16
BNE             loc_2AA830
LDR             R1, [R5]
LDR             R8, [SP,R4,LSL#2]
MOV             R3, R0
ADD             R2, R6, #0x108
LDR             R12, [R1,#0x1C]
ADD             R1, R8, #0x108
MOV             R0, R5
BLX             R12
CMP             R9, #0
VSTR            S16, [R8,#0x110]
BNE             loc_2AA830
LDR             R0, [R8,#0x108]
MOV             R9, #1
STR             R0, [R5,#0x2C]
LDR             R0, [R8,#0x10C]
STR             R0, [R5,#0x30]
VSTR            S16, [R5,#0x34]
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_2AA7AC
LDR             R0, [SP,#0x40+var_34]
LDRB            R0, [R0,#0xDE]
TST             R0, #1
BNE             loc_2AA868
LDR             R0, [R11]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0x90]
CMP             R0, #0
BEQ             loc_2AA884
LDR             R0, [SP,#0x40+var_40]
MOV             R3, #0
MOV             R2, R3
LDR             R1, [R0]
LDR             R12, [R1,#0x34C]
MOV             R1, #4
B               loc_2AA89C
LDR             R0, [SP,#0x40+var_40]
MOV             R3, #0
MOV             R2, R3
LDR             R1, [R0]
LDR             R12, [R1,#0x34C]
MOV             R1, #5
BLX             R12
LDR             R0, [SP,#0x40+var_3C]
LDR             R1, [R0]
LDR             R2, [R1,#0x84]
MOV             R1, #0
BLX             R2
CMP             R9, #0
BEQ             loc_2AA934
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2AA8F4
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_2AA8F4
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R3, =flt_711FE4
LDR             R0, [R5,#0xC]
LDM             R3, {R1-R3}
ADD             R0, R0, #0x14000
ADD             R0, R0, #0x2CC
STM             R0, {R1-R3}
ADD             R1, R5, #0x2C ; ','
LDR             R0, [R5,#0xC]
LDM             R1, {R1-R3}
ADD             R0, R0, #0x24 ; '$'
STM             R0, {R1-R3}
LDR             R0, [R5,#0xC]
ADD             R1, R0, #0x24 ; '$'
ADD             R0, R0, #0x30 ; '0'
LDM             R1, {R1-R3}
STM             R0, {R1-R3}
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
