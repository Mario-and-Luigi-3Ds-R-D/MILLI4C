VLDR            S0, [R1]
VLDR            S1, [R2]
MOV             R0, #0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_21D658
VLDR            S1, [R2,#4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_21D660
VSTR            S1, [R1]
MOV             R0, #1
VLDR            S0, [R1,#4]
VLDR            S1, [R2,#8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGT             loc_21D684
VLDR            S1, [R2,#0xC]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             locret_21D68C
VSTR            S1, [R1,#4]
MOV             R0, #1
BX              LR
