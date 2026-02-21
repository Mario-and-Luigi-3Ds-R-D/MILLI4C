VLDR            S1, [R0,#0x118]
VLDR            S0, [R2]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_22EF84
VLDR            S2, [R0,#0x108]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_22EFA0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_22EFA4
VLDR            S1, [R0,#0x108]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_22EFA4
VSTR            S0, [R0,#0x108]
VLDR            S1, [R0,#0x11C]
VLDR            S0, [R2,#4]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_22EFC8
VLDR            S2, [R0,#0x10C]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_22EFE4
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_22EFE8
VLDR            S1, [R0,#0x10C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_22EFE8
VSTR            S0, [R0,#0x10C]
VLDR            S1, [R0,#0x120]
VLDR            S0, [R2,#8]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_22F00C
VLDR            S2, [R0,#0x110]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_22F028
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             locret_22F02C
VLDR            S1, [R0,#0x110]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             locret_22F02C
VSTR            S0, [R0,#0x110]
BX              LR
