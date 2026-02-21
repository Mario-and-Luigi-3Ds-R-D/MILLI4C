VLDR            S1, =0.0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S1, S0
VSTR            S1, [R0,#0x1C]
LDR             R0, [R0,#0x68]
B               loc_13F178
