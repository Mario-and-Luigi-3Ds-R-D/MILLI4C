PUSH            {R4-R9,LR}
MOV             R4, R0
LDR             R7, =off_6CDC90
LDR             R2, =0x12700
VPUSH           {D8}
SUB             SP, SP, #4
LDRB            R1, [R0,#0xE]
LDR             R0, [R7]
VLDR            S16, =0.0
CMP             R1, #5; switch 5 cases
LDR             R5, [R2,R0]
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1FE390; jumptable 001FE390 default case
DCD loc_1FE3AC; jump table for switch statement
LDR             R1, =off_6CE970; jumptable 001FE390 case 0
LDR             R2, [R1]
LDRB            R1, [R4,#0xC]
ADD             R2, R2, #0x100000
ADD             R2, R2, #0x9B000
CMP             R1, #0
LDR             R2, [R2,#(loc_19B0B4 - 0x19B000)]
MOVEQ           R3, #1
MOVNE           R3, #2
CMP             R2, R3
BNE             def_1FE390; jumptable 001FE390 default case
CMP             R1, #0
ADDEQ           R0, R0, #0x12400
MOV             R2, #0xFFFFFF00
ADDEQ           R0, R0, #0x398
REV             R2, R2
ADDNE           R0, R0, #0x12800
ADDNE           R0, R0, #0x38C
MOV             R1, SP
VLDR            S0, =4.0
ADD             R0, R0, #0x32C
STR             R2, [SP,#0x28+var_28]
BL              sub_4E665C
LDR             R0, [R7]
ADD             R1, R4, #0x400
MOV             R8, #1
ADD             R0, R0, #0x12000
ADD             R0, R0, #0x6E0
ADD             R1, R1, #4
LDR             R0, [R0,#0x1C]
MOV             R9, #0
LDR             R0, [R0,#-0xC]
LDRB            R2, [R0,#0x3F8]
CMP             R2, #5
MOVEQ           R0, R8
BEQ             loc_1FE48C
CMP             R2, #2
MOVNE           R0, R9
BNE             loc_1FE48C
LDR             R2, [R0,#0x208]
VLDR            S2, [R0,#0x3FC]
ADD             R0, R0, #0x400
ADD             R2, R2, #0xC
VLDM            R2, {S0-S1}
VSUB.F32        S0, S1, S0
VLDR            S1, [R0]
VSUB.F32        S0, S0, S1
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1FE488
VLDR            S1, [R0,#4]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #1
BGE             loc_1FE48C
MOV             R0, #0
STRB            R0, [R1]
TST             R0, #0xFF
STR             R8, [R1,#4]
BEQ             loc_1FE528
ADD             R6, R4, #0x400
LDR             R0, [R7]
ADD             R6, R6, #0xC
BL              sub_1F9D54
VSTR            S0, [R6]
STR             R8, [R6,#4]
LDR             R0, [R7]
BL              sub_5C89C0
STRB            R9, [R4,#0x414]
LDRB            R1, [R0,#4]
CMP             R1, #0
BEQ             loc_1FE4DC
LDR             R0, [R0,#0x14]
LDR             R0, [R0,#0x3F4]
CMP             R0, #2
STRBEQ          R8, [R4,#0x414]
LDR             R0, [R7]
BL              sub_5C88BC
MOV             R1, #2
STRB            R0, [R4,#0x415]
STRB            R1, [R4,#0xE]
LDR             R0, [R5,#0x29C]
VLDR            S1, =256.0
MOV             R2, #1
VMOV            S0, R0
STR             R0, [SP,#0x28+var_28]
ADD             SP, SP, #4
VPOP            {D8}
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R3, R0
ADD             R0, R4, #0x10
POP             {R4-R9,LR}
B               sub_14C548
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #5
ADD             R0, R4, #0x10
STRB            R8, [R4,#0xE]
BL              sub_14C548
LDR             R0, [R5,#0x2A4]
STR             R0, [SP,#0x28+var_28]
VSTR            S16, [R4,#0x3AC]
STR             R0, [R4,#0x3B0]
ADD             SP, SP, #4; jumptable 001FE390 default case
VPOP            {D8}
POP             {R4-R9,PC}
ADD             R0, R4, #0x3AC; jumptable 001FE390 case 1
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_1FE390; jumptable 001FE390 default case
ADD             SP, SP, #4
MOV             R0, R4
VPOP            {D8}
POP             {R4-R9,LR}
B               sub_1FE23C
ADD             R0, R4, #0x10; jumptable 001FE390 case 2
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_1FE390; jumptable 001FE390 default case
MOV             R0, #3
MOV             R1, R0
STRB            R0, [R4,#0xE]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R4, #0x10
BL              sub_14C548
LDR             R0, [R5,#0x290]
STR             R0, [SP,#0x28+var_28]
VSTR            S16, [R4,#0x3AC]
STR             R0, [R4,#0x3B0]
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4-R9,PC}
ADD             R0, R4, #0x3AC; jumptable 001FE390 case 3
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_1FE390; jumptable 001FE390 default case
MOV             R0, #4
STRB            R0, [R4,#0xE]
ADD             SP, SP, #4
MOV             R1, R0
VPOP            {D8}
ADD             R0, R4, #0x10
POP             {R4-R9,LR}
MOV             R3, #0x100
MOV             R2, #1
B               sub_14C548
ADD             R0, R4, #0x10; jumptable 001FE390 case 4
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_1FE390; jumptable 001FE390 default case
LDRB            R0, [R4,#0x415]
CMP             R0, #0
BEQ             loc_1FE64C
ADD             SP, SP, #4
ADD             R0, R4, #0x10
VPOP            {D8}
MOV             R3, #0x100
POP             {R4-R9,LR}
MOV             R2, #0
MOV             R1, #1
B               sub_14C548
ADD             SP, SP, #4
MOV             R0, R4
VPOP            {D8}
MOV             R1, #0
POP             {R4-R9,LR}
B               sub_1FF054
