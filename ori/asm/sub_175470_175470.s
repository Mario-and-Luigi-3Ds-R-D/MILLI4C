PUSH            {R0-R11,LR}
MOV             R5, R1
MOV             R8, R0
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R1,#0xA4]
LDRB            R1, [R0,#0x6C]
STR             R1, [SP,#0x48+var_44]
LDR             R2, [R0,#0x10]
LDR             R0, [R0,#4]
MOV             R4, R1
BL              sub_136824
MOV             R9, R0
LDR             R0, [SP,#0x48+var_2C]
MOV             R7, #0
MOV             R11, R7
CMP             R0, #7
LDREQ           R1, [R5,#0xA4]
BEQ             loc_1756C8
CMP             R0, #0
LDREQ           R1, [R5,#0xA4]
BEQ             loc_175768
LDR             R0, [R5,#0xA8]
LDR             R2, [R8,#0x4EC]
LDR             R10, [R0,#0x38]
LDR             R0, =unk_6731D8
LDRB            R1, [R10,#0x1C]
AND             R1, R1, #7
LDRB            R0, [R0,R1]
MOVS            R1, R0
BEQ             loc_175580
MOV             R6, R1
LDR             R1, [R8,#0x464]
CMP             R0, #0x10
AND             R1, R1, #0xF
BEQ             loc_17552C
CMP             R0, #8
LDREQ           R3, =unk_67DE00
LDRBEQ          R1, [R3,R1]
BEQ             loc_17552C
CMP             R0, #4
LDREQ           R3, =unk_67DDF0
BEQ             loc_175590
CMP             R0, #2
LDREQ           R3, =unk_67DDE0
MOVNE           R1, #0
BEQ             loc_175590
STR             R0, [SP,#0x48+var_48]
LDR             R0, [R8]
MOV             R2, R2,LSL#7
MOV             R3, R2,ASR#27
LDR             R12, [R0,#0x334]
MOV             R2, R1
MOV             R1, #0
MOV             R0, R8
BLX             R12
LDR             R1, [SP,#0x48+var_2C]
MOV             R4, R0
CMP             R1, #7; switch 7 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_17555C; jumptable 0017555C default case, cases 0,2
DCD def_17555C; jump table for switch statement
LDR             R0, [SP,#0x48+var_2C]
CMP             R0, #3
BNE             def_17555C; jumptable 0017555C default case, cases 0,2
B               loc_1755A8
LDRB            R1, [R3,R1]
B               loc_17552C
LDRB            R0, [R10,#0x1C]; jumptable 0017555C case 3
TST             R0, #8
ADDNE           R4, R4, R6
BNE             def_17555C; jumptable 0017555C default case, cases 0,2
MOV             R9, #0
MOV             R7, #1
B               def_17555C; jumptable 0017555C default case, cases 0,2
LDRB            R0, [R10,#0x1C]; jumptable 0017555C case 5
TST             R0, #0x10
ADDNE           R4, R4, R6,LSL#1
TST             R0, #8
LDR             R0, [R5,#0xA4]
ADDNE           R4, R4, R6
LDRB            R1, [R0,#0x6C]
CMP             R1, R4
BEQ             loc_1755E0
MOV             R11, #1
B               def_17555C; jumptable 0017555C default case, cases 0,2
LDRH            R0, [R0,#0x1A]
AND             R0, R0, #2
MOV             R7, R0,LSR#1
B               def_17555C; jumptable 0017555C default case, cases 0,2
LDRB            R0, [R10,#0x1C]; jumptable 0017555C case 4
TST             R0, #0x10
ADDNE           R4, R4, R6
TST             R0, #8
LDR             R0, [R5,#0xA4]
ADDNE           R4, R4, R6
LDRB            R1, [R0,#0x6C]
CMP             R1, R4
BEQ             loc_1755E0
B               loc_1755D8
LDRB            R0, [R10,#0x1C]; jumptable 0017555C case 6
TST             R0, #0x20
ADDNE           R1, R6, R6,LSL#1
ADDNE           R4, R4, R1
TST             R0, #8
LDR             R0, [R5,#0xA4]
ADDNE           R4, R4, R6
LDRB            R1, [R0,#0x6C]
CMP             R1, R4
BEQ             loc_1755E0
B               loc_1755D8
MOV             R9, #1; jumptable 0017555C case 1
LDR             R0, [SP,#0x48+arg_0]; jumptable 0017555C default case, cases 0,2
CMP             R0, #0
LDREQ           R0, [SP,#0x48+var_44]
CMPEQ           R0, R4
BEQ             loc_1756BC
LDR             R0, [SP,#0x48+var_2C]
CMP             R0, #2
ADD             R0, R8, #0x400
BEQ             loc_1756D0
VLDR            S0, [R0,#0x70]
LDR             R6, [SP,#0x48+var_28]
SXTH            R3, R11
MOV             R1, R4
MOV             R2, R9
MOV             R0, R5
BL              sub_1949CC
CMP             R6, #0
NOP
BEQ             loc_1756B0
LDR             R3, [R8]
LDR             R1, [R5,#0xA4]
MOV             R0, R8
LDR             R3, [R3,#0x278]
LDRB            R2, [R1,#0x6C]
LDR             R1, [R5,#0xA8]
BLX             R3
LDR             R0, [R5,#0xA4]
ADD             R0, R0, #0x10
BL              sub_4857C8
LDR             R1, [R5,#0xA4]
CMP             R7, #0
BEQ             loc_175768
MOV             R0, #1
B               loc_17576C
LDR             R1, [R5,#0xA4]
VLDR            S1, =0.0039062
LDR             R6, [SP,#0x48+var_28]
SXTH            R3, R11
VLDR            S0, [R1,#0x10]
MOV             R1, R4
MOV             R2, R9
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
VLDR            S0, [R0,#0x70]
MOV             R0, R5
BL              sub_1949CC
CMP             R6, #0
NOP
BEQ             loc_175728
LDR             R3, [R8]
LDR             R1, [R5,#0xA4]
MOV             R0, R8
LDR             R3, [R3,#0x278]
LDRB            R2, [R1,#0x6C]
LDR             R1, [R5,#0xA8]
BLX             R3
LDR             R0, [R5,#0xA4]
LDRSH           R1, [R0,#0x18]
ADD             R0, R0, #0x10
VMOV            S0, R1
VCVT.F32.S32    S1, S0
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
VCVTCC.F32.S32  S16, S0
VLDR            S0, =256.0
VMUL.F32        S0, S16, S0
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BL              sub_485780
NOP
NOP
B               loc_1756BC
MOV             R0, #0
LDRH            R2, [R1,#0x1A]
BIC             R2, R2, #2
ORR             R0, R2, R0,LSL#1
STRH            R0, [R1,#0x1A]
ADD             SP, SP, #0xC
VPOP            {D8}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
