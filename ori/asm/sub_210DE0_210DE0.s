PUSH            {R3-R9,LR}
MOV             R4, R1
MOV             R6, R2
MOV             R9, R0
LDRH            R0, [R2]
LDR             R1, [R2,#8]
ADD             R5, R2, #8
SUB             R0, R0, #0x3F ; '?'
CMP             R0, #0x10; switch 16 cases
UXTH            R8, R1
ADD             R7, R2, #0x68 ; 'h'
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
DCD loc_210E54; jump table for switch statement
LDR             R0, [R5,#4]; jumptable 00210E0C case 0
MOV             R3, R4
MOV             R1, R8
CMP             R0, #0
MOVNE           R0, #1
STR             R0, [SP,#0x20+var_20]
LDR             R0, =off_6CE970
LDR             R2, [R4,#4]
LDR             R0, [R0]
BL              sub_4E19B4
LDR             R0, [R5,#8]
LDR             R1, [R4,#4]
ADD             R0, R0, R1
STR             R0, [R4,#4]
MOV             R0, #0
POP             {R3-R9,PC}
LDRB            R0, [R4,#0x1A8]; jumptable 00210E0C case 1
CMP             R0, #0
BNE             loc_210ED0
LDR             R0, [R5,#4]
MOV             R3, R4
MOV             R1, R8
CMP             R0, #0
MOVNE           R0, #1
STR             R0, [SP,#0x20+var_20]
LDR             R0, =off_6CE970
LDR             R2, [R4,#4]
LDR             R0, [R0]
BL              sub_4E19B4
MOV             R0, #1
STRB            R0, [R4,#0x1A8]
LDR             R0, =off_6CE970
MOV             R2, #0
MOV             R1, R8
LDR             R0, [R0]
BL              sub_528CFC
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
BEQ             loc_210F1C
CMP             R4, #0
BEQ             loc_210F04
ADD             R1, R4, #4
B               loc_210F08
MOV             R1, #0
MOV             R2, R6
MOV             R0, R9
BL              sub_29D1B0
MOV             R0, #3
POP             {R3-R9,PC}
LDR             R1, [R4,#4]
LDR             R2, [R5,#8]
MOV             R0, #0
ADD             R1, R1, R2
STR             R1, [R4,#4]
STRB            R0, [R4,#0x1A8]
B               def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
LDR             R0, [R5,#4]; jumptable 00210E0C case 2
MOV             R3, R4
CMP             R0, #0
MOVNE           R0, #1
STR             R0, [SP,#0x20+var_20]
LDR             R0, [R5,#8]
LDR             R1, [R4,#4]
ADD             R2, R1, R0
LDR             R0, =off_6CE970
MOV             R1, R8
LDR             R0, [R0]
BL              sub_4E19B4
NOP
NOP
B               def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
LDR             R0, =off_6CE970; jumptable 00210E0C case 3
MOV             R2, #0
MOV             R1, R8
LDR             R0, [R0]
BL              sub_528CFC
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
BEQ             def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
CMP             R4, #0
BEQ             loc_210F04
B               loc_210EFC
LDR             R0, =off_6CE970; jumptable 00210E0C case 5
MOV             R2, #0
MOV             R1, R8
LDR             R0, [R0]
BL              sub_528CFC
CMP             R0, #0
NOP
BEQ             def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
MOV             R1, #0
ADD             R2, R0, #0x100
STRB            R1, [R0,#0x1AC]
STRH            R1, [R2,#0xAE]
STRH            R1, [R2,#0xB2]
STR             R1, [R0,#4]
STRB            R1, [R0,#0x1AD]
STRH            R1, [R2,#0xB0]
STRH            R1, [R2,#0xB4]
STR             R1, [R0,#0x1B8]
MOV             R1, #0x1A4
LDRH            R2, [R2,#0xA4]
LDRH            R1, [R1,R4]
CMP             R2, R1
BNE             def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
LDRB            R0, [R0,#0x1A6]
CMP             R0, #5
MOVEQ           R0, #1
BEQ             locret_210E90
B               def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
LDR             R0, =off_6CE970; jumptable 00210E0C case 7
MOV             R2, #0
MOV             R1, R8
LDR             R0, [R0]
BL              sub_528CFC
CMP             R0, #0
MOVNE           R1, #1
BEQ             def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
STRB            R1, [R0,#0x1A7]
B               def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
LDR             R0, =off_6CE970; jumptable 00210E0C case 9
MOV             R2, #0
MOV             R1, R8
LDR             R0, [R0]
BL              sub_528CFC
CMP             R0, #0
MOVNE           R1, #0
BEQ             def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
B               loc_211034
LDR             R0, =off_6CE970; jumptable 00210E0C case 11
MOV             R2, #0
MOV             R1, R8
LDR             R0, [R0]
BL              sub_528CFC
CMP             R0, #0
LDRNE           R1, [R0,#4]
CMPNE           R1, #0
VLDREQ          S0, =0.0
BEQ             loc_211098
LDRB            R1, [R0,#0x1A7]
CMP             R1, #0
VLDRNE          S0, =3.0
BEQ             loc_2110B8
CMP             R4, #0
LDRH            R0, [R6,#2]
ADDNE           R2, R4, #4
MOVEQ           R2, #0
MOV             R1, R9
BL              sub_145730
MOV             R0, #0; jumptable 00210E0C default case, cases 4,6,8,10
POP             {R3-R9,PC}
LDRB            R0, [R0,#0x1AB]
CMP             R0, #3
VLDREQ          S0, =2.0
VLDRNE          S0, =1.0
B               loc_211098
LDR             R0, =off_6CE970; jumptable 00210E0C case 12
MOV             R2, #0
MOV             R1, R8
LDR             R0, [R0]
BL              sub_528CFC
LDR             R1, [R5,#4]
CMP             R1, #0
BEQ             loc_211124
MOVS            R1, R0
ADDNE           R1, R0, #4
LDR             R0, [R5,#8]
LDR             R1, [R1,#0x2C]
CMP             R4, #0
MOV             R2, R0,LSR#5
AND             R0, R0, #0x1F
LDR             R1, [R1,R2,LSL#2]
MOV             R0, R1,LSR R0
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
BEQ             loc_21114C
B               loc_211144
CMP             R0, #0
ADDNE           R0, R0, #4
LDR             R1, [R5,#8]
LDR             R0, [R0,#0x28]
CMP             R4, #0
ADD             R0, R0, R1,LSL#2
VLDR            S0, [R0]
BEQ             loc_21114C
ADD             R2, R4, #4
B               loc_211150
MOV             R2, #0
LDRH            R0, [R6,#2]
MOV             R1, R9
B               loc_211220
LDR             R0, =off_6CE970; jumptable 00210E0C case 13
MOV             R2, #0
MOV             R1, R8
LDR             R0, [R0]
BL              sub_528CFC
LDR             R1, [R5,#4]
CMP             R1, #0
BEQ             loc_2111C0
VLDR            S0, [R7,#0xC]
MOVS            R1, R0
ADDNE           R1, R0, #4
VCVT.U32.F32    S0, S0
LDR             R0, [R5,#8]
MOV             R3, #1
VMOV            R2, S0
CMP             R2, #0
LDR             R2, [R1,#0x2C]
MOV             R1, R0,LSR#5
AND             R0, R0, #0x1F
LDR             R12, [R2,R1,LSL#2]
MOV             R0, R3,LSL R0
ORRNE           R0, R0, R12
BICEQ           R0, R12, R0
STR             R0, [R2,R1,LSL#2]
B               def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
CMP             R0, #0
ADDNE           R1, R0, #4
MOVEQ           R1, #0
LDR             R0, [R5,#8]
LDR             R1, [R1,#0x28]
LDR             R2, [R7,#0xC]
STR             R2, [R1,R0,LSL#2]
B               def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
LDR             R0, =off_6CE970; jumptable 00210E0C case 14
MOV             R2, #0
MOV             R1, R8
LDR             R0, [R0]
BL              sub_528CFC
MOVS            R1, R0
MOV             R0, #0
LDRBNE          R0, [R1,#0x1B7]
LDRH            R3, [R6,#2]
CMP             R4, #0
VMOV            S0, R0
ADDNE           R2, R4, #4
MOVEQ           R2, #0
MOV             R1, R9
MOV             R0, R3
VCVT.F32.U32    S0, S0
BL              sub_145730
B               def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
LDR             R0, [R5,#4]; jumptable 00210E0C case 15
MOV             R2, #0
MOV             R1, R8
AND             R4, R0, #0xFF
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528CFC
LDRB            R1, [R0,#0x1B7]
CMP             R1, R4
BEQ             def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
MOV             R1, #1
STRB            R4, [R0,#0x1B7]
STRB            R1, [R0,#0x1B6]
LDR             R0, [R0,#0x84]
STRB            R1, [R0,#0xC24]
B               def_210E0C; jumptable 00210E0C default case, cases 4,6,8,10
