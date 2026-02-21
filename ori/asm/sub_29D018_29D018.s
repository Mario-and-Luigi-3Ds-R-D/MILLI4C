PUSH            {R0-R2,R4-R11,LR}
MOV             R7, R2
MOV             R10, R0
LDR             R0, [SP,#0x30+var_2C]
LDR             R0, [R0]
LDRH            R1, [R0],#2
ADD             R4, R0, #4
STRH            R1, [R2]
LDR             R3, [R0]
LDRB            R12, [R0,#3]
LDR             R2, [R10,#4]
BIC             R0, R3, #0xFF000000
ORR             R9, R0, R12,LSL#24
ADD             R8, R2, R1,LSL#4
STR             R9, [R7,#4]
LDRB            R0, [R8]
TST             R0, #0x80
BEQ             loc_29D068
LDRH            R0, [R4],#2
STRH            R0, [R7,#2]
LDRB            R0, [R8]
AND             R11, R0, #0x7F
CMP             R11, #0
MOVNE           R5, #0
BLE             loc_29D1A0
AND             R0, R5, #0xFF
MOV             R1, R9,LSR R5
ADD             R2, R8, R0,LSR#1
TST             R1, #1
MOV             R0, R0,LSL#31
LDRB            R1, [R2,#1]
MOV             R0, R0,LSR#29
MOV             R0, R1,LSR R0
AND             R6, R0, #0xF
BEQ             loc_29D0EC
LDR             R0, [R10]
LDRH            R2, [R4]
LDR             R1, [SP,#0x30+var_2C]
LDR             R3, [R0,#0xC]
MOV             R0, R10
BLX             R3
CMP             R6, #8
ADDEQ           R0, R7, R5,LSL#2
VSTREQ          S0, [R0,#0x68]
BEQ             loc_29D0E4
VMOV            R0, S0
CMP             R0, #0x4F000000
VCVTGT.U32.F32  S0, S0
ADD             R0, R7, R5,LSL#2
VCVTLE.S32.F32  S0, S0
VSTR            S0, [R0,#8]
ADD             R4, R4, #2
B               def_29D0F0; jumptable 0029D0F0 default case
CMP             R6, #9; switch 9 cases
LDRCC           PC, [PC,R6,LSL#2]; switch jump
B               def_29D0F0; jumptable 0029D0F0 default case
DCD loc_29D11C; jump table for switch statement
LDRB            R0, [R4],#1; jumptable 0029D0F0 case 0
ADD             R1, R7, R5,LSL#2
B               loc_29D134
LDRB            R0, [R4],#1; jumptable 0029D0F0 case 3
ADD             R1, R7, R5,LSL#2
SXTB            R0, R0
STR             R0, [R1,#8]
B               def_29D0F0; jumptable 0029D0F0 default case
LDRH            R0, [R4],#2; jumptable 0029D0F0 case 1
ADD             R1, R7, R5,LSL#2
B               loc_29D134
LDRH            R0, [R4],#2; jumptable 0029D0F0 cases 4,6
ADD             R1, R7, R5,LSL#2
SXTH            R0, R0
B               loc_29D134
LDR             R0, [R4]; jumptable 0029D0F0 cases 2,5,7
LDRB            R1, [R4,#3]
ADD             R2, R7, R5,LSL#2
BIC             R0, R0, #0xFF000000
ADD             R4, R4, #4
ORR             R0, R0, R1,LSL#24
STR             R0, [R2,#8]
B               def_29D0F0; jumptable 0029D0F0 default case
LDR             R0, [R4]; jumptable 0029D0F0 case 8
LDRB            R2, [R4,#3]
ADD             R1, R7, R5,LSL#2
BIC             R0, R0, #0xFF000000
ADD             R4, R4, #4
ORR             R0, R0, R2,LSL#24
STR             R0, [R1,#0x68]
ADD             R5, R5, #1; jumptable 0029D0F0 default case
CMP             R5, R11
BLT             loc_29D07C
LDR             R0, [SP,#0x30+var_2C]
STR             R4, [R0]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
