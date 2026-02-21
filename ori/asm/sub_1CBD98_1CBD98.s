PUSH            {R4}
VLDR            S1, =0.5
VLDR            S0, [R1,#0xC]
LDR             R0, =off_6D1648
VLDR            S2, [R1,#8]
VADD.F32        S4, S0, S1
VLDR            S3, [R1]
LDR             R0, [R0]
VLDR            S5, [R1,#4]
VLDR            S10, =-100000.0
MOV             R4, #0
LDR             R0, [R0,#0xC4]
MOV             R12, #1
VMOV.F32        S0, S4
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
VSUB.F32        S6, S2, S0
LDR             R0, [R0,#0x610]
VMOV.F32        S0, S3
VLDR            S1, [R0,#0x7C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1CBF4C
LDR             R1, [R0]
VLDR            S8, [R0,#0x78]
VLDR            S7, [R0,#0x7C]
MOV             R1, R1,LSL#7
MOV             R2, R1,LSR#29
ADD             R1, R0, #0x10
CMP             R2, #1
VLDM            R1, {S0-S1}
MOVLE           R1, #0
BLE             loc_1CBE48
BIC             R1, R12, R2
CMP             R1, #1
BNE             loc_1CBE48
VLDR            S11, [R0,#0x24]
VCMPE.F32       S1, S11
VMRS            APSR_nzcv, FPSCR
VLDR            S9, [R0,#0x20]
VMOVGT.F32      S1, S11
VCMPE.F32       S0, S9
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S9
ADD             R1, R1, #1
CMP             R1, R2
BGE             loc_1CBEA4
ADD             R3, R0, R1,LSL#4
ADD             R1, R1, #2
VLDR            S9, [R3,#0x14]
VCMPE.F32       S1, S9
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S1, S9
VLDR            S9, [R3,#0x10]
VCMPE.F32       S0, S9
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S9
VLDR            S9, [R3,#0x24]
VCMPE.F32       S1, S9
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S1, S9
VLDR            S9, [R3,#0x20]
VCMPE.F32       S0, S9
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S9
CMP             R1, R2
BLT             loc_1CBE54
LDR             R1, [R0]
TST             R1, #2
VMOVEQ.F32      S0, S10
LDR             R1, [R0,#8]
TST             R1, #0x400
BNE             loc_1CBEF8
VMOV.F32        S9, S3
VCMPE.F32       S9, S7
VMRS            APSR_nzcv, FPSCR
BGT             loc_1CBEF8
VMOV.F32        S9, S5
VCMPE.F32       S9, S8
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S9, S2
VCMPECS.F32     S9, S0
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_1CBEF8
VMOV.F32        S9, S4
VCMPE.F32       S9, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_1CBF64
VMOV.F32        S13, S2
VMOV.F32        S12, S4
VMOV.F32        S9, S3
VMOV.F32        S11, S5
VSUB.F32        S13, S13, S6
VSUB.F32        S12, S12, S6
VCMPE.F32       S9, S7
VMRS            APSR_nzcv, FPSCR
BGT             loc_1CBF3C
VCMPE.F32       S11, S8
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S13, S0
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_1CBF3C
VCMPE.F32       S12, S1
VMRS            APSR_nzcv, FPSCR
MOVLE           R4, #1
VMOV.F32        S0, S5
VCMPE.F32       S8, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_1CBF58
LDR             R1, [R0,#0x88]!
TST             R1, #1
BEQ             loc_1CBDE0
CMP             R4, #0
MOVNE           R0, #0
BNE             loc_1CBF68
MOV             R0, #1
POP             {R4}
BX              LR
