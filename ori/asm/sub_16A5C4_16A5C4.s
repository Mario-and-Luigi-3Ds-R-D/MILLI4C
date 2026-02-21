ADD             R0, R3, #0x10
VLDR            S3, [R1,#0x10]
VLDR            S0, [R1,#0x14]
VLDR            S10, [R3]
VLDR            S9, [R2]
VLDM            R0, {S7-S8}
ADD             R0, R2, #0x10
VCMP.F32        S9, S10
VLDM            R0, {S5-S6}
VSUB.F32        S1, S7, S5
VSUB.F32        S2, S8, S6
VSUB.F32        S3, S5, S3
VSUB.F32        S4, S6, S0
VLDR            S0, =0.0
VMRS            APSR_nzcv, FPSCR
BNE             loc_16A674
VLDR            S10, [R2,#4]
VLDR            S11, [R3,#4]
VCMP.F32        S10, S11
VMRS            APSR_nzcv, FPSCR
BNE             loc_16A674
VLDR            S10, [R2,#8]
VLDR            S11, [R3,#8]
VCMP.F32        S10, S11
VMRS            APSR_nzcv, FPSCR
BNE             loc_16A674
VLDR            S10, [R2,#0xC]
VLDR            S11, [R3,#0xC]
VCMP.F32        S10, S11
VMRS            APSR_nzcv, FPSCR
BNE             loc_16A674
VABS.F32        S1, S3
VABS.F32        S2, S4
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLE             loc_16A664
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_16A778
B               loc_16A770
VCMPE.F32       S4, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_16A79C
B               loc_16A794
VMOV.F32        S3, S1
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_16A690
VCMP.F32        S8, S6
VMRS            APSR_nzcv, FPSCR
BEQ             loc_16A770
VMOV.F32        S3, S1
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_16A6AC
VCMP.F32        S8, S6
VMRS            APSR_nzcv, FPSCR
BEQ             loc_16A778
VCMP.F32        S7, S5
VMRS            APSR_nzcv, FPSCR
BNE             loc_16A6C8
VMOV.F32        S3, S2
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_16A794
VCMP.F32        S7, S5
VMRS            APSR_nzcv, FPSCR
BNE             loc_16A6E4
VMOV.F32        S3, S2
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_16A79C
VLDR            S3, [R2,#4]
VLDR            S4, [R1]
VCMPE.F32       S3, S4
VMRS            APSR_nzcv, FPSCR
BLE             loc_16A718
VLDR            S3, [R1,#4]
VCMPE.F32       S9, S3
VMRS            APSR_nzcv, FPSCR
BCS             loc_16A718
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_16A794
BCC             loc_16A79C
VLDR            S3, [R2,#8]
VLDR            S4, [R1,#0xC]
VCMPE.F32       S3, S4
VMRS            APSR_nzcv, FPSCR
BLE             loc_16A750
VLDR            S3, [R2,#0xC]
VLDR            S4, [R1,#8]
VCMPE.F32       S3, S4
VMRS            APSR_nzcv, FPSCR
BCS             loc_16A750
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_16A770
BCC             loc_16A778
VABS.F32        S3, S1
VABS.F32        S4, S2
VCMPE.F32       S3, S4
VMRS            APSR_nzcv, FPSCR
BLE             loc_16A780
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_16A778
MOV             R0, #2
BX              LR
MOV             R0, #8
BX              LR
NOP
BCS             loc_16A7A4
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_16A79C
MOV             R0, #0x10
BX              LR
MOV             R0, #0x20 ; ' '
BX              LR
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VCMPEGT.F32     S2, S0
VMRSGT          APSR_nzcv, FPSCR
MOVGT           R0, #0x12
BGT             locret_16A774
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_16A7D8
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
MOVCC           R0, #0x22 ; '"'
BCC             locret_16A774
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_16A7F4
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
MOVGT           R0, #0x18
BGT             locret_16A774
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VCMPECC.F32     S2, S0
VMRSCC          APSR_nzcv, FPSCR
MOVCS           R0, #0
MOVCC           R0, #0x28 ; '('
BX              LR
