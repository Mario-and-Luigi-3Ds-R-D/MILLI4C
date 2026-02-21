PUSH            {R0-R2,R4-R11,LR}
ADD             R0, R2, #0x14
MOV             R5, R1
ADD             R1, R2, #8
MOV             R4, R2
VPUSH           {D8}
SUB             SP, SP, #0x50
LDM             R0, {R0,R2,R3}
LDM             R1, {R1,R6,R12}
SXTH            R10, R0
LDR             R0, =off_6CE970
UXTH            R1, R1
SXTH            R11, R12
VLDR            S16, =0.0
LDR             R0, [R0]
AND             R6, R6, #0xFF
AND             R8, R3, #0xFF
SXTB            R7, R2
BL              sub_52F538
MOV             R9, R0
ADD             R0, SP, #0x88+var_68
BL              sub_2A251C
MOV             R0, #0
STMEA           SP, {R0,R8}
MOV             R3, R10
MOV             R2, R11
ADD             R1, SP, #0x88+var_68
MOV             R0, R9
BL              sub_5ED4B0
CMN             R7, #1
BEQ             loc_211CE0
MOV             R2, R7
ADD             R1, SP, #0x88+var_80
ADD             R0, SP, #0x88+var_68
BL              sub_5CE420
CMP             R0, #0
BEQ             def_211CBC; jumptable 00211CBC default case, case 0
CMP             R6, #7; switch 7 cases
LDRCC           PC, [PC,R6,LSL#2]; switch jump
B               def_211CBC; jumptable 00211CBC default case, case 0
DCD def_211CBC; jump table for switch statement
ADD             R1, SP, #0x88+var_80
ADD             R0, SP, #0x88+var_68
BL              sub_5CE338
NOP
NOP
B               loc_211CB0
VLDR            S16, [SP,#0x88+var_80]; jumptable 00211CBC case 1
B               def_211CBC; jumptable 00211CBC default case, case 0
VLDR            S16, [SP,#0x88+var_7C]; jumptable 00211CBC case 2
B               def_211CBC; jumptable 00211CBC default case, case 0
VLDR            S16, [SP,#0x88+var_78]; jumptable 00211CBC case 3
B               def_211CBC; jumptable 00211CBC default case, case 0
VLDR            S16, [SP,#0x88+var_74]; jumptable 00211CBC case 4
B               def_211CBC; jumptable 00211CBC default case, case 0
VLDR            S16, [SP,#0x88+var_70]; jumptable 00211CBC case 5
B               def_211CBC; jumptable 00211CBC default case, case 0
VLDR            S16, [SP,#0x88+var_6C]; jumptable 00211CBC case 6
CMP             R5, #0; jumptable 00211CBC default case, case 0
LDRH            R0, [R4,#2]
VMOV.F32        S0, S16
LDR             R1, [SP,#0x88+var_30]
ADDNE           R2, R5, #4
MOVEQ           R2, #0
BL              sub_145730
ADD             SP, SP, #0x50 ; 'P'
MOV             R0, #0
VPOP            {D8}
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
