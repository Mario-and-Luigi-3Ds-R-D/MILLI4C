VLDM            R2, {S0-S2}
VSTM            R0, {S0-S2}
VLDR            S0, [R2]
VLDR            S1, [R1]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_223B88
VLDR            S1, [R1,#0xC]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_223B8C
VSTR            S1, [R0]
VLDR            S0, [R2,#4]
VLDR            S1, [R1,#4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_223BB0
VLDR            S1, [R1,#0x10]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_223BB4
VSTR            S1, [R0,#4]
VLDR            S0, [R2,#8]
VLDR            S1, [R1,#8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_223BD8
VLDR            S1, [R1,#0x14]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             locret_223BDC
VSTR            S1, [R0,#8]
BX              LR
