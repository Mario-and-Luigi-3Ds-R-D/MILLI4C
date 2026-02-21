ADD             R3, R2, #8
PUSH            {R4,LR}
LDM             R3, {R3,R12}
VLDR            S0, =0.0
VLDR            S1, =1.0
ANDS            R12, R12, #0xFF
MOV             R3, R3,LSL#20
MOV             R3, R3,LSR#20
ADD             R3, R0, R3,LSL#3
LDR             R3, [R3,#0x2B4]
BEQ             loc_205EF0
CMP             R3, #0
BEQ             def_205E48; jumptable 00205E48 default case, case 0
CMP             R12, #9; switch 9 cases
LDRCC           PC, [PC,R12,LSL#2]; switch jump
B               def_205E48; jumptable 00205E48 default case, case 0
DCD def_205E48; jump table for switch statement
LDRSH           R3, [R3,#0xA]; jumptable 00205E48 case 1
VMOV            S0, R3
VCVT.F32.S32    S0, S0
B               def_205E48; jumptable 00205E48 default case, case 0
LDRSH           R3, [R3,#8]; jumptable 00205E48 case 2
VLDR            S1, =0.0039062
VMOV            S0, R3
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
B               def_205E48; jumptable 00205E48 default case, case 0
LDRH            R3, [R3,#0xE]; jumptable 00205E48 case 3
AND             R3, R3, #2
MOVS            R3, R3,LSR#1
BEQ             def_205E48; jumptable 00205E48 default case, case 0
B               loc_205F04
LDRSH           R3, [R3,#0xC]; jumptable 00205E48 case 4
VMOV            S0, R3
VCVT.F32.S32    S0, S0
B               def_205E48; jumptable 00205E48 default case, case 0
VLDR            S0, [R3,#0x19C]; jumptable 00205E48 case 5
B               loc_205EE8
LDRB            R3, [R3,#0x171]; jumptable 00205E48 case 6
CMP             R3, #0
BEQ             def_205E48; jumptable 00205E48 default case, case 0
B               loc_205F04
SUB             R12, R12, #7; jumptable 00205E48 cases 7,8
AND             R12, R12, #0xFF
ADD             R3, R3, R12,LSL#2
VLDR            S0, [R3,#0x1AC]
VCVT.F32.U32    S0, S0
B               def_205E48; jumptable 00205E48 default case, case 0
CMP             R3, #0
BEQ             loc_205F04
LDRH            R3, [R3,#0xE]
TST             R3, #1
BNE             def_205E48; jumptable 00205E48 default case, case 0
VMOV.F32        S0, S1
CMP             R1, #0; jumptable 00205E48 default case, case 0
LDRH            R3, [R2,#2]
ADDNE           R1, R1, #4
MOV             R2, R1
MOV             R1, R0
MOV             R0, R3
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
