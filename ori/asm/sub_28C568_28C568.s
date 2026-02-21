VLDM            R2, {S0-S2}
VSTM            R0, {S0-S2}
VLDR            S0, [R2]
VLDR            S1, [R1]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_28C594
VLDR            S1, [R1,#0xC]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_28C598
VSTR            S1, [R0]
VLDR            S0, [R2,#4]
VLDR            S1, [R1,#4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_28C5BC
VLDR            S1, [R1,#0x10]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_28C5C0
VSTR            S1, [R0,#4]
VLDR            S0, [R2,#8]
VLDR            S1, [R1,#8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_28C5E4
VLDR            S1, [R1,#0x14]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             locret_28C5E8
VSTR            S1, [R0,#8]
BX              LR
