VLDR            S0, [R0]
VLDR            S1, [R1,#0xC]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#0xC]
VLDR            S1, [R1]
MOVGT           R2, #1
MOVLE           R2, #0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#4]
VLDR            S1, [R1,#0x10]
MOVCC           R3, #1
MOVCS           R3, #0
VCMPE.F32       S0, S1
ORR             R3, R3, R2
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#0x10]
VLDR            S1, [R1,#4]
MOVGT           R2, #1
MOVLE           R2, #0
VCMPE.F32       S0, S1
ORR             R3, R3, R2
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#8]
VLDR            S1, [R1,#0x14]
MOVCC           R2, #1
MOVCS           R2, #0
VCMPE.F32       S0, S1
ORR             R3, R3, R2
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#0x14]
VLDR            S1, [R1,#8]
MOVGT           R2, #1
MOVLE           R2, #0
VCMPE.F32       S0, S1
ORR             R1, R3, R2
VMRS            APSR_nzcv, FPSCR
MOVCC           R0, #1
MOVCS           R0, #0
ORR             R0, R0, R1
EOR             R0, R0, #1
BX              LR
