CMP             R1, #0
PUSH            {R4}
BEQ             loc_1E2B10
LDR             R12, [R1]
TST             R12, #2
BNE             loc_1E2B10
LDR             R4, [R1,#4]
LDR             R4, [R4,#8]
TST             R4, #1
TSTNE           R12, #4
BEQ             loc_1E2B10
CMP             R2, #0
BEQ             loc_1E2AD4
VLDR            S0, [R0]
VLDR            S1, [R1,#8]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1E2AD4
VLDR            S0, [R0,#4]
VLDR            S1, [R1,#0xC]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1E2B04
CMP             R3, #0
BEQ             loc_1E2B10
VLDR            S0, [R0]
VLDR            S1, [R1,#0x10]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1E2B10
VLDR            S0, [R0,#4]
VLDR            S1, [R1,#0x14]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1E2B10
POP             {R4}
MOV             R0, #1
BX              LR
POP             {R4}
MOV             R0, #0
BX              LR
