PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x3F4
VPUSH           {D8}
VMOV.F32        S16, S0
SUB             SP, SP, #0x28
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0x400
ADD             R0, R0, #0x28 ; '('
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0x400
ADD             R0, R0, #0x6C ; 'l'
BL              sub_5A176C
LDRB            R0, [R4,#0x45C]
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_22C540; jumptable 0022C540 default case, cases 1,2
DCD loc_22C55C; jump table for switch statement
VMOV.F32        S0, S16; jumptable 0022C540 case 0
MOV             R0, R4
BL              sub_22BB6C
NOP
NOP
B               def_22C540; jumptable 0022C540 default case, cases 1,2
LDR             R0, [R4,#0x4D8]; jumptable 0022C540 case 3
LDRH            R1, [R0,#0xE]
TST             R1, #1
BEQ             loc_22C590
LDRB            R1, [R0,#0x16E]
CMP             R1, #0
BEQ             def_22C540; jumptable 0022C540 default case, cases 1,2
LDRB            R1, [R0,#0x172]
CMP             R1, #0
BEQ             loc_22C5AC
BL              sub_532B54
CMP             R0, #0
NOP
BNE             def_22C540; jumptable 0022C540 default case, cases 1,2
MOV             R1, #5
STRB            R1, [R4,#0x45C]
B               def_22C540; jumptable 0022C540 default case, cases 1,2
VMOV.F32        S0, S16; jumptable 0022C540 case 4
MOV             R0, R4
BL              sub_22C01C
LDR             R6, =off_6CDA80; jumptable 0022C540 default case, cases 1,2
LDR             R0, =0x126F4
ADD             R2, R4, #0x24 ; '$'
ADD             R3, R4, #0x1000
LDR             R1, [R6]
ADD             R3, R3, #0xBC
VLDM            R2, {S3-S5}
ADD             R5, R4, #0x1000
LDR             R0, [R0,R1]
ADD             R5, R5, #0xD4
ADD             R2, R0, #0x388
VLDM            R2, {S0-S2}
ADD             R2, R4, #0x1000
ADD             R2, R2, #0xC8
VADD.F32        S0, S0, S3
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S4
VSTM            R3, {S0-S2}
VLDR            S2, [R0,#0x39C]
VLDR            S3, [R4,#0x2C]
VLDR            S0, [R0,#0x394]
VLDR            S5, [R4,#0x24]
VLDR            S1, [R0,#0x398]
VLDR            S4, [R4,#0x28]
VADD.F32        S2, S2, S3
VADD.F32        S0, S0, S5
VADD.F32        S1, S1, S4
ADD             R0, SP, #0x40+var_38
VSTM            R2, {S0-S2}
MOV             R2, R4
BL              sub_2270AC
LDR             R0, [SP,#0x40+var_38]
LDR             R1, [R0]
LDR             R2, [R1,#8]
ADD             R1, SP, #0x40+var_2C
BLX             R2
LDR             R0, [R6]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
LDR             R0, [R0,#0x218]
CMP             R0, #0
BNE             loc_22C680
LDR             R0, [R4,#0x24]
STR             R0, [SP,#0x40+var_2C]
LDR             R0, [R4,#0x2C]
STR             R0, [SP,#0x40+var_24]
VLDR            S0, [SP,#0x40+var_28]
VLDR            S1, =2.0
ADD             R1, SP, #0x40+var_2C
MOV             R0, R5
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_28]
BL              sub_14E984
LDR             R0, [R4,#0x24]
VLDR            S0, =1.0
ADD             R1, SP, #0x40+var_2C
STR             R0, [SP,#0x40+var_2C]
VSTR            S0, [SP,#0x40+var_28]
VLDR            S1, [R4,#0x2C]
ADD             R0, R5, #0x3F4
VSUB.F32        S0, S1, S0
VSTR            S0, [SP,#0x40+var_24]
BL              sub_14E984
LDR             R1, [SP,#0x40+var_30]
ADD             R0, SP, #0x40+var_34
CMP             R1, R0
BNE             loc_22C718
LDR             R0, [SP,#0x40+var_38]
CMP             R0, #0
BEQ             loc_22C718
MOV             R5, R0
LDR             R0, [R6]
ADD             R4, R0, #0x12800
LDR             R0, [R5]
ADD             R4, R4, #0x10C
LDR             R1, [R0]
MOV             R0, R5
BLX             R1
LDR             R0, [R4,#4]
STR             R0, [R5]
STR             R5, [R4,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #1
STR             R0, [R4,#8]
LDRD            R0, R1, [SP,#0x40+var_34]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8}
POP             {R4-R6,PC}
