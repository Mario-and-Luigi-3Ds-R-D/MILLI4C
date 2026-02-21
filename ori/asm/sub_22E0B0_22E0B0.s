VLDR            S1, [R1]
VLDR            S0, =0.0
LDR             R0, [R2]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
ORRNE           R0, R0, #1
BICEQ           R0, R0, #1
STR             R0, [R2]
VLDR            S1, [R1,#4]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
ORRNE           R0, R0, #2
BICEQ           R0, R0, #2
STR             R0, [R2]
VLDR            S1, [R1,#8]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
ORRNE           R0, R0, #4
BICEQ           R0, R0, #4
STR             R0, [R2]
BX              LR
