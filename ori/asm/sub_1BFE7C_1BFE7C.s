PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R6, R0, #0x1000
ADD             R5, R0, #0x1000
VPUSH           {D8-D10}
SUB             SP, SP, #8
MOV             R7, #0
ADD             R5, R5, #0x184
LDR             R2, [R0,#8]
LDR             R8, =byte_68DBBB
VLDR            S20, =0.0
VLDR            S18, =0.5
LDRSH           R0, [R2]
VLDR            S16, =10.0
VLDR            S17, =2.0
VLDR            S19, =1.0
CMP             R0, #0x13
BEQ             loc_1C0004
BGE             loc_1BFEF8
CMP             R0, #3
VLDR            S16, =20.0
BEQ             loc_1C0010
BGT             loc_1BFEE4
CMP             R0, #0
BNE             loc_1C0010
B               loc_1BFF38
CMP             R0, #0x11
BEQ             loc_1BFFCC
CMP             R0, #0x12
BNE             loc_1C0010
B               loc_1BFFDC
SUBS            R0, R0, #0x14
BNE             loc_1C0010
LDRH            R0, [R2,#2]
VLDR            S16, =5.0
CMP             R0, #0x12
MOV             R0, R5
BEQ             loc_1C00E8
BL              sub_45AAB8
VMUL.F32        S0, S0, S18
MOV             R1, #0xA
VMUL.F32        S0, S16, S0
VMUL.F32        S0, S0, S17
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R5]
B               loc_1BFFF8
LDRB            R0, [R8]
CMP             R0, #0
BEQ             loc_1BFF9C
AND             R0, R0, #1
CMP             R0, #1
STRBEQ          R7, [R2,#0x4D6]
LDRB            R2, [R8]
MOV             R1, #0
MOVEQ           R1, #1
CMP             R0, R2
BGE             loc_1BFF9C
LDR             R2, [R4,#8]
ADD             R3, R1, #0x400
ADD             R3, R3, #0xD6
ADD             R1, R1, #1
STRB            R7, [R2,R3]
LDR             R2, [R4,#8]
ADD             R3, R1, #0x400
ADD             R3, R3, #0xD6
ADD             R0, R0, #2
STRB            R7, [R2,R3]
LDRB            R2, [R8]
ADD             R1, R1, #1
CMP             R0, R2
BLT             loc_1BFF64
LDR             R1, [R4,#8]
LDRB            R0, [R8]
ADD             R1, R1, #0x400
SUB             R0, R0, #1
STRH            R0, [R1,#0xD2]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R1, [R4,#8]
MOV             R0, #0x13
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xD4]
B               loc_1C0010
VSTR            S20, [R6,#0x180]
MOV             R0, #0
MOV             R1, #0x14
B               loc_1C00BC
MOV             R0, R5
BL              sub_45AAB8
VMUL.F32        S0, S16, S0
MOV             R1, #0x28 ; '('
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R5]
STRH            R1, [R5,#2]
STRB            R7, [R5,#4]
B               loc_1C0010
LDRH            R0, [R2,#2]
CMP             R0, #0x12
BEQ             loc_1C0094
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
CMP             R0, #0x1C; switch 28 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1C001C; jumptable 001C001C default case, cases 4-16,18-20,23,25,26
DCD loc_1C00FC; jump table for switch statement
MOV             R0, R5
BL              sub_45AAB8
VMOV            R0, S0
CMP             R0, #0x3F000000
BGE             loc_1C00C4
VMUL.F32        S0, S0, S17
MOV             R1, #0xA
VMUL.F32        S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R5]
B               loc_1BFFF8
VSUB.F32        S0, S0, S18
MOV             R1, #0xA
VSUB.F32        S0, S18, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R5]
B               loc_1BFFF8
NOP
BL              sub_45AAB8
NOP
NOP
B               loc_1BFF1C
LDR             R1, [R4,#8]; jumptable 001C001C cases 0-3,21
LDRSH           R0, [R1,#2]
CMP             R0, #0x12
CMPNE           R0, #0x14
CMPNE           R0, #0x16
BNE             def_1C001C; jumptable 001C001C default case, cases 4-16,18-20,23,25,26
VMOV.F32        S0, S19
ADD             R0, R4, #0xC
STR             R0, [SP,#0x38+var_38]
LDR             R2, [R4,#4]
ADD             R0, R1, #0x10
LDRB            R3, [R8]
VMOV.F32        S1, S0
LDR             R1, =unk_68C882
ADD             R2, R2, #0x108
BL              sub_49FCD0
NOP
NOP
B               def_1C001C; jumptable 001C001C default case, cases 4-16,18-20,23,25,26
MOV             R1, #0; jumptable 001C001C cases 17,22
ADD             R0, R4, #0x2A8
BL              loc_1BE914
NOP
NOP
B               def_1C001C; jumptable 001C001C default case, cases 4-16,18-20,23,25,26
MOV             R1, #0; jumptable 001C001C case 24
ADD             R0, R4, #0x2A8
BL              sub_1BEB0C
NOP
NOP
B               def_1C001C; jumptable 001C001C default case, cases 4-16,18-20,23,25,26
DCFS 0.0
DCD byte_68DBBB
DCFS 0.5
DCFS 10.0
DCFS 2.0
DCFS 1.0
DCFS 20.0
DCFS 5.0
DCD dword_6D1F40
DCD unk_68C882
VMOV.F32        S0, S19; jumptable 001C001C case 27
ADD             R0, R4, #0xC
STR             R0, [SP,#0x38+var_38]
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
LDRB            R3, [R8]
VMOV.F32        S1, S0
ADD             R2, R1, #0x108
LDR             R1, =unk_68C882
ADD             R0, R0, #0x10
BL              sub_49FCD0
LDR             R1, [R4,#8]; jumptable 001C001C default case, cases 4-16,18-20,23,25,26
LDRSH           R0, [R1]
CMP             R0, #0
CMPNE           R0, #1
BEQ             loc_1C01EC
CMP             R0, #4
CMPNE           R0, #0x15
BNE             loc_1C023C
LDRH            R1, [R1,#2]
CMP             R1, #3
CMPNE           R0, #4
CMPNE           R0, #0x15
BNE             loc_1C023C
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x1D0
MOV             R2, #0
MOV             R1, #9
STRH            R2, [R0]
STRH            R1, [R0,#2]
STRB            R7, [R0,#4]
VSTR            S19, [R6,#0x1D8]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0xC4]
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VSTR            S0, [R6,#0x1DC]
ADD             SP, SP, #8
VPOP            {D8-D10}
POP             {R4-R8,PC}
