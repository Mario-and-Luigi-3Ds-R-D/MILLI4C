LDRB            R2, [R1]
TST             R2, #7
BEQ             locret_22D9F0
TST             R2, #8
BNE             locret_22D9F0
TST             R2, #0x10
BEQ             loc_22D9F4
LDR             R2, [R1,#0x2C]
LDRH            R3, [R1,#2]
CMP             R2, R3
BNE             loc_22D9A8
LDR             R2, [R1,#0x20]
STR             R2, [R0,#0xE4]
LDRB            R2, [R1]
BIC             R2, R2, #1
STRB            R2, [R1]
LDR             R2, [R1,#0x2C]
LDRH            R3, [R1,#4]
CMP             R2, R3
BNE             loc_22D9CC
LDR             R2, [R1,#0x24]
STR             R2, [R0,#0xE8]
LDRB            R2, [R1]
BIC             R2, R2, #2
STRB            R2, [R1]
LDR             R2, [R1,#0x2C]
LDRH            R3, [R1,#6]
CMP             R2, R3
BNE             locret_22D9F0
LDR             R2, [R1,#0x28]
STR             R2, [R0,#0xEC]
LDRB            R0, [R1]
BIC             R0, R0, #4
STRB            R0, [R1]
BX              LR
TST             R2, #1
BEQ             loc_22DA4C
VLDR            S1, [R1,#0x14]
VLDR            S0, [R1,#0x20]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_22DA20
VLDR            S2, [R0,#0xE4]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_22DA3C
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_22DA4C
VLDR            S1, [R0,#0xE4]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_22DA4C
VSTR            S0, [R0,#0xE4]
LDRB            R2, [R1]
BIC             R2, R2, #1
STRB            R2, [R1]
LDRB            R2, [R1]
TST             R2, #2
BEQ             loc_22DAA8
VLDR            S1, [R1,#0x18]
VLDR            S0, [R1,#0x24]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_22DA7C
VLDR            S2, [R0,#0xE8]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_22DA98
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_22DAA8
VLDR            S1, [R0,#0xE8]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_22DAA8
VSTR            S0, [R0,#0xE8]
LDRB            R2, [R1]
BIC             R2, R2, #2
STRB            R2, [R1]
LDRB            R2, [R1]
TST             R2, #4
BEQ             locret_22D9F0
VLDR            S1, [R1,#0x1C]
VLDR            S0, [R1,#0x28]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_22DAD8
VLDR            S2, [R0,#0xEC]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_22DAF4
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             locret_22D9F0
VLDR            S1, [R0,#0xEC]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             locret_22D9F0
VSTR            S0, [R0,#0xEC]
LDRB            R0, [R1]
BIC             R0, R0, #4
STRB            R0, [R1]
BX              LR
