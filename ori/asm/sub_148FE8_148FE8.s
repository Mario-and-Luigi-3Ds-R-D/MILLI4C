PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8}
VMOV.F32        S17, S0
VLDR            S0, [R0,#8]
VLDR            S16, =0.0
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_149020
VLDR            S1, [R4,#4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_149104
VLDR            S0, [R4,#0x10]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_149040
VLDR            S1, [R4,#0xC]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_149050
VMOV.F32        S1, S17
VLDR            S2, [R4,#0xC]
VADD.F32        S1, S2, S1
VSTR            S1, [R4,#0xC]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VCMPENE.F32     S1, S0
VMRSNE          APSR_nzcv, FPSCR
VSTRGT          S0, [R4,#0xC]
VLDR            S1, [R4,#0xC]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1490C0
LDR             R0, =off_6CE970
LDR             R1, =0x1063C8
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R1, R0; loc_1063C8
MOV             R0, #0x154
BL              sub_5F5948
CMP             R0, #0
NOP
BEQ             loc_1490AC
MOV             R2, R5
MOV             R1, R4
BL              sub_14D240
LDRH            R0, [R4]
VSTR            S16, [R4,#0xC]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VSTR            S0, [R4,#0x10]
VLDR            S0, [R4,#8]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_1490E0
VLDR            S1, [R4,#4]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_1490EC
VLDR            S1, [R4,#4]
VADD.F32        S1, S1, S17
VSTR            S1, [R4,#4]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VCMPENE.F32     S1, S0
VMRSNE          APSR_nzcv, FPSCR
VSTRGT          S0, [R4,#4]
BLE             loc_149104
VPOP            {D8}
POP             {R4-R6,PC}
