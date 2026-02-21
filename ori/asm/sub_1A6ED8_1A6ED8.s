PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R5, R4, #0x3800
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, [R0,#8]
ADD             R5, R5, #0x288
LDRSH           R0, [R0]
CMP             R0, #0x32; switch 50 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1A6EFC; jumptable 001A6EFC default case, cases 0,2-38,44
DCD def_1A6EFC; jump table for switch statement
ADD             R0, R4, #0x1000; jumptable 001A6EFC case 1
ADD             R0, R0, #0x198
VLDR            S0, =60.0
VLDM            R0, {S2-S3}
VDIV.F32        S1, S3, S0
VDIV.F32        S3, S2, S0
VCVT.S32.F32    S0, S1
VCVT.S32.F32    S1, S3
VMOV            R0, S0
SXTB            R0, R0
VMOV            R1, S1
SXTB            R1, R1
CMP             R0, R1
BEQ             def_1A6EFC; jumptable 001A6EFC default case, cases 0,2-38,44
LDR             R1, [R4,#4]
VLDR            S0, =0.0
LDR             R0, =0x20062
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
MOV             R1, #0
VLDR            S0, =3.0
BL              sub_234A9C
NOP
NOP
B               def_1A6EFC; jumptable 001A6EFC default case, cases 0,2-38,44
LDR             R0, [R5]; jumptable 001A6EFC cases 39-43,45-49
CMP             R0, #0
BEQ             loc_1A709C
ADD             R2, R4, #0x3800
ADD             R2, R2, #0x21C
VLDR            S0, =67.5
LDM             R2, {R0-R2}
VMOV            S1, R1
STMEA           SP, {R0-R2}
MOV             R1, SP
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x28+var_24]
LDR             R0, [R5]
BL              sub_231750
LDR             R1, [R5]; jumptable 001A6EFC default case, cases 0,2-38,44
CMP             R1, #0
BEQ             loc_1A709C
ADD             R6, R4, #0x3800
ADD             R6, R6, #0x298
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_1A7174
CMN             R0, #1
SUBNE           R0, R0, #1
BEQ             loc_1A709C
STR             R0, [R6]
LDR             R1, [R4,#4]
LDR             R0, =0x468
LDRH            R0, [R0,R1]
CMP             R0, #1
CMPNE           R0, #3
BNE             loc_1A7168
LDR             R0, [R4,#8]
VLDR            S16, =1.0
ADD             R0, R0, #0x500
ADD             R0, R0, #0x7E ; '~'
LDRSH           R2, [R0,#2]
LDRSH           R3, [R0]
VMOV            S1, R2
VMOV            S0, R3
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S16
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1A718C
LDR             R0, =0x20079
VLDR            S0, =0.0
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
LDR             R0, [R4,#8]
ADD             R4, R0, #0x500
LDR             R0, =dword_6D1F40
ADD             R4, R4, #0x7E ; '~'
BL              sub_546DB0
MOV             R1, #0x12C
VLDR            S1, =0.5
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0xB4
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R1, #0
STRH            R1, [R4]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VADDNE.F32      S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
MOVLT           R0, #1
STRH            R0, [R4,#2]
MOV             R0, #0
STRB            R0, [R4,#4]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
MOV             R0, R1
BL              sub_533330
MOV             R1, #0
MOV             R0, #0xFFFFFFFF
STR             R1, [R5]
B               loc_1A7098
NOP
BL              sub_45AA4C
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
