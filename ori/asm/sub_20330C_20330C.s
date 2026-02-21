VCVT.U32.F32    S1, S0
CMP             R1, #0xB
VMOVEQ          R1, S1
STRBEQ          R1, [R0,#0x2F4]
BGE             loc_20347C
CMP             R1, #9
BEQ             loc_203360
CMP             R1, #0xB; switch 11 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
BX              LR; jumptable 0020332C default case, case 9
DCD loc_20336C; jump table for switch statement
LDR             R1, [R0]
LDR             R1, [R1,#0x88]
BX              R1
VLDR            S1, =0.0; jumptable 0020332C case 0
LDR             R2, [R0]
VCMP.F32        S0, S1
LDR             R2, [R2,#0x48]
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
BX              R2
VLDR            S1, =0.0; jumptable 0020332C case 1
LDR             R2, [R0]
VCMP.F32        S0, S1
LDR             R2, [R2,#0x4C]
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
BX              R2
VLDR            S1, =0.0; jumptable 0020332C case 2
LDR             R2, [R0]
VCMP.F32        S0, S1
LDR             R2, [R2,#0x50]
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
BX              R2
LDR             R2, [R0,#0x190]; jumptable 0020332C case 3
VMOV            R1, S1
MOV             R2, R2,LSR#16
MOV             R2, R2,LSL#16
ORR             R1, R1, R2
B               loc_2033F4
LDR             R2, [R0,#0x190]; jumptable 0020332C case 4
VMOV            R1, S1
UXTH            R2, R2
ORR             R1, R2, R1,LSL#16
STR             R1, [R0,#0x190]
BX              LR
LDR             R2, [R0,#0x194]; jumptable 0020332C case 5
VMOV            R1, S1
MOV             R2, R2,LSR#16
MOV             R2, R2,LSL#16
ORR             R1, R1, R2
B               loc_203424
LDR             R2, [R0,#0x194]; jumptable 0020332C case 6
VMOV            R1, S1
UXTH            R2, R2
ORR             R1, R2, R1,LSL#16
STR             R1, [R0,#0x194]
BX              LR
LDR             R2, [R0,#0x198]; jumptable 0020332C case 7
VMOV            R1, S1
MOV             R2, R2,LSR#16
MOV             R2, R2,LSL#16
ORR             R1, R1, R2
B               loc_203454
LDR             R2, [R0,#0x198]; jumptable 0020332C case 8
VMOV            R1, S1
UXTH            R2, R2
ORR             R1, R2, R1,LSL#16
STR             R1, [R0,#0x198]
BX              LR
VLDR            S1, =0.0; jumptable 0020332C case 10
LDR             R2, [R0]
VCMP.F32        S0, S1
LDR             R2, [R2,#0x54]
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
BX              R2
NOP
BEQ             def_20332C; jumptable 0020332C default case, case 9
CMP             R1, #0xC
BNE             def_20332C; jumptable 0020332C default case, case 9
VCVT.S32.F32    S0, S0
ADD             R1, R0, #0x200
VMOV            R0, S0
STRH            R0, [R1,#0xEA]
BX              LR
