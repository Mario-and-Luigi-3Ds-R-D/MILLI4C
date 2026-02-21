PUSH            {R4-R8,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
LDRB            R0, [R0,#0x3F4]
VLDR            S16, =0.0
SUB             R1, R0, #2
CMP             R1, #8; switch 8 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_283BF4; jumptable 00283BF4 default case, case 1
DCD loc_283D6C; jump table for switch statement
LDRB            R0, [R4,#0x3F5]; jumptable 00283BF4 case 3
CMP             R0, #0
BNE             loc_283CB0
ADD             R0, R4, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_283CB0
LDR             R6, =off_6CE970
LDR             R0, =0xFFE683CC
VMOV.F32        S0, S16
LDR             R1, =0x301F7
LDR             R3, [R6]
MOV             R2, #0
SUB             R0, R3, R0
BL              sub_503414
MOV             R8, #0
LDR             R0, [R6]
MOV             R3, #1
ADD             R2, R4, #0x24 ; '$'
MOV             R1, R8
STR             R8, [SP,#0x30+var_30]
BL              sub_52AEA8
LDR             R5, [R4,#0x468]
LDR             R7, [R6]
LDR             R6, [R5]
BL              sub_4635D8
MOV             R3, R0
LDR             R1, =0x1B1
MOV             R2, R6
MOV             R0, R7
STR             R8, [SP,#0x30+var_30]
BL              sub_52C7A8
STR             R0, [R5,#4]
STRH            R8, [R0,#0xA]
MOV             R0, #1
STRB            R0, [R4,#0x3F4]
ADD             R1, R4, #0x24 ; '$'
ADD             R0, R4, #0x3F8
BL              sub_28BF30
NOP
NOP
B               def_283BF4; jumptable 00283BF4 default case, case 1
CMP             R0, #7; jumptable 00283BF4 cases 5-7
BNE             loc_283CDC
LDR             R0, [R4,#0x464]
LDR             R0, [R0,#0xF4]
STR             R0, [R4,#0x450]
MOV             R0, R4
BL              sub_283988
MOV             R2, #0
MOV             R1, SP
MOV             R0, R4
BL              sub_5C4F84
LDR             R0, [R4,#0x464]
VLDR            S0, [SP,#0x30+var_30]
VLDR            S1, [R0,#0x50]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_283D58
VLDR            S1, [R0,#0x54]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_283D58
VLDR            S1, [R0,#0x58]
VLDR            S0, [R4,#0x2C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_283D58
VLDR            S1, [R0,#0x5C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             def_283BF4; jumptable 00283BF4 default case, case 1
B               loc_283D58
ADD             R0, R4, #0x1DC; jumptable 00283BF4 case 2
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_283BF4; jumptable 00283BF4 default case, case 1
MOV             R0, R4
BL              sub_2837F8
NOP
NOP
B               def_283BF4; jumptable 00283BF4 default case, case 1
ADD             R0, R4, #0x400; jumptable 00283BF4 case 0
ADD             R0, R0, #0x58 ; 'X'
VLDR            S3, [R4,#0x2C]
VLDR            S1, [R0]
VLDR            S2, [R0,#8]
MOV             R1, SP
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VLDR            S0, [R4,#0x24]
MOV             R0, R4
VADD.F32        S0, S0, S1
VADD.F32        S1, S3, S2
VSTR            S0, [SP,#0x30+var_30]
VSTR            S1, [SP,#0x30+var_28]
VSTR            S16, [SP,#0x30+var_2C]
BL              sub_14E984
NOP
NOP
B               def_283BF4; jumptable 00283BF4 default case, case 1
ADD             R0, R4, #0x354; jumptable 00283BF4 case 4
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #2
STRBGE          R0, [R4,#0x3F4]
ADD             SP, SP, #0x10; jumptable 00283BF4 default case, case 1
MOV             R0, #1
VPOP            {D8}
POP             {R4-R8,PC}
