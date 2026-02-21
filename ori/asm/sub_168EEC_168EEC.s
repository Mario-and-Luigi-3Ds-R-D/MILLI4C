LDR             R1, [R0,#0x4EC]
TST             R1, #1
BEQ             locret_168F54
TST             R1, #4
BNE             locret_168F54
LDR             R2, =0x2698
ADD             R1, R0, #0x400
VLDR            S0, [R0,#0x108]
VLDR            S1, [R1,#0xC4]
LDRB            R2, [R2,R0]
VLDR            S2, =0.0
TST             R2, #1
VSUBNE.F32      S0, S0, S1
VADDEQ.F32      S0, S0, S1
VSTR            S0, [R0,#0x108]
VLDR            S1, [R1,#0xC4]
VLDR            S3, [R1,#0xC8]
VLDR            S0, [R1,#0xCC]
VSUB.F32        S1, S1, S3
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VSTR            S1, [R1,#0xC4]
BGE             locret_168F54
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VSTRCC          S0, [R1,#0xC4]
BX              LR
