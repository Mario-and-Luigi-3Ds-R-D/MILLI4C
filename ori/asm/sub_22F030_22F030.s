LDR             R3, [R1]
TST             R3, #1
BEQ             loc_22F080
VLDR            S1, [R1,#0x1C]
VLDR            S0, [R2]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_22F060
VLDR            S2, [R0,#0x108]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_22F07C
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_22F080
VLDR            S1, [R0,#0x108]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_22F080
VSTR            S0, [R0,#0x108]
LDR             R3, [R1]
TST             R3, #2
BEQ             loc_22F0D0
VLDR            S1, [R1,#0x20]
VLDR            S0, [R2,#4]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_22F0B0
VLDR            S2, [R0,#0x10C]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_22F0CC
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_22F0D0
VLDR            S1, [R0,#0x10C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_22F0D0
VSTR            S0, [R0,#0x10C]
LDR             R3, [R1]
TST             R3, #4
BEQ             locret_22F120
VLDR            S1, [R1,#0x24]
VLDR            S0, [R2,#8]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_22F100
VLDR            S2, [R0,#0x110]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_22F11C
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             locret_22F120
VLDR            S1, [R0,#0x110]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             locret_22F120
VSTR            S0, [R0,#0x110]
BX              LR
