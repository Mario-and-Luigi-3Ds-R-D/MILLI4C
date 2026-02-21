LDR             R2, =off_6D1648
CMP             R1, #0
LDR             R2, [R2]
LDR             R2, [R2,#0xC4]
LDR             R2, [R2,#4]
LDR             R2, [R2,#4]
ADD             R2, R2, #0x108
VLDM            R2, {S0-S1}
BEQ             loc_2005F4
VLDR            S3, [R1]
VMOV.F32        S2, S0
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
BGT             loc_20063C
VLDR            S2, [R1,#4]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_20063C
VMOV.F32        S0, S1
VLDR            S2, [R1,#8]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_20063C
VLDR            S0, [R1,#0xC]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGT             loc_20063C
B               loc_200644
VMOV.F32        S2, S0
VLDR            S3, [R0,#0xA4]
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
BGT             loc_20063C
VLDR            S2, [R0,#0xA8]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_20063C
VMOV.F32        S0, S1
VLDR            S2, [R0,#0xAC]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_20063C
VLDR            S0, [R0,#0xB0]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_200644
MOV             R0, #0
BX              LR
MOV             R0, #1
BX              LR
