CMP             R0, #0xB; switch 11 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1F4608; jumptable 001F4608 default case
DCD loc_1F463C; jump table for switch statement
VCMP.F32        S0, S1; jumptable 001F4608 case 0
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1F4714
B               def_1F4608; jumptable 001F4608 default case
VCMP.F32        S0, S1; jumptable 001F4608 case 1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1F4714
B               def_1F4608; jumptable 001F4608 default case
VCMPE.F32       S0, S1; jumptable 001F4608 case 2
VMRS            APSR_nzcv, FPSCR
BCC             loc_1F4714
B               def_1F4608; jumptable 001F4608 default case
VCMPE.F32       S0, S1; jumptable 001F4608 case 3
VMRS            APSR_nzcv, FPSCR
BGT             loc_1F4714
B               def_1F4608; jumptable 001F4608 default case
VCMPE.F32       S0, S1; jumptable 001F4608 case 4
VMRS            APSR_nzcv, FPSCR
BLS             loc_1F4714
B               def_1F4608; jumptable 001F4608 default case
VCMPE.F32       S0, S1; jumptable 001F4608 case 5
VMRS            APSR_nzcv, FPSCR
BGE             loc_1F4714
B               def_1F4608; jumptable 001F4608 default case
VCVT.U32.F32    S0, S0; jumptable 001F4608 case 6
VCVT.U32.F32    S1, S1
VMOV            R0, S0
VMOV            R1, S1
ANDS            R0, R0, R1
BEQ             locret_1F4718
B               loc_1F4714
VCVT.U32.F32    S0, S0; jumptable 001F4608 case 7
VCVT.U32.F32    S1, S1
VMOV            R0, S0
VMOV            R1, S1
ORRS            R0, R0, R1
BEQ             locret_1F4718
B               loc_1F4714
VCVT.U32.F32    S0, S0; jumptable 001F4608 case 8
VCVT.U32.F32    S1, S1
VMOV            R0, S0
VMOV            R1, S1
CMP             R0, R1
BNE             loc_1F4714
B               def_1F4608; jumptable 001F4608 default case
VLDR            S1, =0.0; jumptable 001F4608 case 9
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1F4714
B               def_1F4608; jumptable 001F4608 default case
VCVT.S32.F32    S0, S0; jumptable 001F4608 case 10
VMOV            R0, S0
CMN             R0, #1
BEQ             def_1F4608; jumptable 001F4608 default case
MOV             R0, #1
BX              LR
MOV             R0, #0; jumptable 001F4608 default case
BX              LR
