PUSH            {R0-R3}
LDR             R1, =dword_6D4598
PUSH            {R4-R10,LR}
MOV             R6, R0
LDR             R5, [R1,#(dword_6D459C - 0x6D4598)]
MOV             R0, R5
LDR             R2, [R5]
CMP             R2, #0
BNE             loc_11D0D0
LDR             R4, =unk_70C1D0
ADD             R0, R0, #0x20 ; ' '
STR             R0, [R1,#(dword_6D459C - 0x6D4598)]
CMP             R0, R4
SUBEQ           R0, R4, #0x2000
STREQ           R0, [R1,#(dword_6D459C - 0x6D4598)]
LDR             R0, [SP,#0x30+varg_r1]
SUB             R2, R0, #1
CMP             R2, #8
BCS             loc_11D0D0
ADD             R2, SP, #0x30+arg_7
STR             R0, [R5]
LDR             R8, [SP,#0x30+varg_r1]
BIC             R2, R2, #7
ADD             R3, SP, #0x30+arg_3
ADD             R12, R2, #0xF
BIC             R0, R3, #7
BIC             R12, R12, #7
CMP             R8, #9; switch 9 cases
ADD             R3, R0, #8
ADD             R7, R12, #8
LDRCC           PC, [PC,R8,LSL#2]; switch jump
B               def_11CE18; jumptable 0011CE18 default case, case 0
DCD def_11CE18; jump table for switch statement
LDR             R12, [SP,#0x30+varg_r2]; jumptable 0011CE18 case 1
STR             R12, [R5,#4]
LDR             R2, [SP,#0x30+varg_r3]
STR             R2, [R5,#8]
LDR             R0, [SP,#0x30]
CMP             R0, #0
STR             R0, [R5,#0xC]
BGT             loc_11CEDC
LDR             R0, [R1,#(dword_6D45A0 - 0x6D4598)]
LDR             R7, =0x3E7
LDR             R8, [R1,#(dword_6D459C - 0x6D4598)]
ADD             R0, R0, #0x20 ; ' '
CMP             R0, R4
BNE             loc_11CEBC
LDR             R0, =unk_70A1D0
B               loc_11CEBC
CMP             R1, #2
CMPNE           R1, #3
CMPNE           R1, #4
BNE             loc_11CEB0
CMN             R12, #1
BEQ             loc_11CEF8
LDR             R1, [R0,#4]
CMP             R1, R12
BNE             loc_11CEB0
STR             R7, [R0,#0x1C]
STR             R7, [R0]
ADD             R0, R0, #0x20 ; ' '
CMP             R0, R4
BEQ             loc_11CE7C
LDR             R1, [R0]
CMP             R1, #0
BEQ             loc_11CEDC
LDR             R3, [R0,#0x1C]
CMP             R1, R3
BNE             loc_11CEDC
CMP             R0, R8
BNE             loc_11CE84
ADD             R1, R5, #4
MOV             R0, R6
LDM             R1, {R1-R3}
BL              sub_123DD8
NOP
NOP
B               def_11CE18; jumptable 0011CE18 default case, case 0
CMN             R2, #1
BEQ             loc_11CEA8
CMP             R2, #0x12C
BEQ             loc_11CF34
BGE             loc_11CF24
CMP             R2, #0x64 ; 'd'
BEQ             loc_11CF40
CMP             R2, #0xC8
CMPEQ           R1, #3
BNE             loc_11CEB0
B               loc_11CEA8
SUB             R3, R2, #0x100
SUBS            R3, R3, #0x2D ; '-'
CMPNE           R3, #1
BNE             loc_11CEB0
CMP             R1, #4
BNE             loc_11CEB0
B               loc_11CEA8
CMP             R1, #2
BNE             loc_11CEB0
B               loc_11CEA8
LDR             R0, [SP,#0x30+varg_r2]; jumptable 0011CE18 case 2
STR             R0, [R5,#4]
LDR             R0, [SP,#0x30+varg_r3]
STR             R0, [R5,#8]
VLDR            D0, [R2]
VCVT.F32.F64    S0, D0
VSTR            S0, [R5,#0xC]
VLDR            D0, [R12]
VCVT.F32.F64    S0, D0
VSTR            S0, [R5,#0x10]
B               def_11CE18; jumptable 0011CE18 default case, case 0
LDR             R0, [SP,#0x30+varg_r2]; jumptable 0011CE18 case 3
STR             R0, [R5,#4]
LDR             R0, [SP,#0x30+varg_r3]
STR             R0, [R5,#8]
VLDR            D0, [R2]
VCVT.F32.F64    S0, D0
VSTR            S0, [R5,#0xC]
B               def_11CE18; jumptable 0011CE18 default case, case 0
LDR             R0, [SP,#0x30+varg_r2]; jumptable 0011CE18 case 4
STR             R0, [R5,#4]
LDR             R0, [SP,#0x30+varg_r3]
STR             R0, [R5,#8]
VLDR            D0, [R2]
VCVT.F32.F64    S0, D0
VSTR            S0, [R5,#0xC]
VLDR            D0, [R12]
VCVT.F32.F64    S0, D0
VSTR            S0, [R5,#0x10]
LDR             R0, [R7]
STR             R0, [R5,#0x14]
B               def_11CE18; jumptable 0011CE18 default case, case 0
LDR             R1, [SP,#0x30+varg_r2]; jumptable 0011CE18 cases 5,6
STR             R1, [R5,#4]
VLDR            D0, [R0]
VCVT.F32.F64    S0, D0
VSTR            S0, [R5,#8]
LDR             R0, [R3]
B               loc_11CFFC
LDR             R0, [SP,#0x30+varg_r2]; jumptable 0011CE18 case 7
STR             R0, [R5,#4]
LDR             R0, [SP,#0x30+varg_r3]
STR             R0, [R5,#8]
LDR             R0, [SP,#0x30]
STR             R0, [R5,#0xC]
B               def_11CE18; jumptable 0011CE18 default case, case 0
LDR             R7, [SP,#0x30+varg_r2]; jumptable 0011CE18 case 8
VLDR            S1, =2.0
STR             R7, [R5,#4]
LDR             R0, [SP,#0x30+varg_r3]
STR             R0, [R5,#8]
VLDR            S0, [SP,#0x30]
CMP             R0, #0
VSTR            S0, [R5,#0xC]
VCVT.F32.S32    S0, S0
LDR             R4, [R6,#0xC]
MOVNE           R9, #1
MOVEQ           R9, #0
CMN             R7, #1
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R8, S0
BNE             loc_11D088
MOV             R0, R4
BL              sub_12CD2C
CMP             R0, #0
NOP
BEQ             loc_11D06C
MOV             R2, R8
MOV             R1, R9
MOV             R0, R4
BL              sub_12B91C
LDRD            R0, R1, [R6,#8]
ADD             R4, R4, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R4
BNE             loc_11D048
B               def_11CE18; jumptable 0011CE18 default case, case 0
MOV             R1, R7
MOV             R0, R4
BL              sub_12B880
CMP             R0, #0
NOP
BEQ             loc_11D0B0
MOV             R2, R8
MOV             R1, R9
MOV             R0, R4
BL              sub_12B91C
LDRD            R0, R1, [R6,#8]
ADD             R4, R4, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R4
BNE             loc_11D088
LDR             R0, [SP,#0x30+varg_r1]; jumptable 0011CE18 default case, case 0
STR             R0, [R5,#0x1C]
POP             {R4-R10}
LDR             PC, [SP+0x14+var_14],#0x14
