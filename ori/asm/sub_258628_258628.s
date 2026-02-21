LDR             R1, [R0,#0xB5C]
LDR             R2, [R0,#0xA74]
LDR             R1, [R1,#8]
ADD             R2, R2, #0x1800
STR             R1, [R2,#0xE4]
LDR             R1, [R0,#0xB5C]
VLDR            S0, [R1,#8]
LDR             R1, =off_6CE098
LDR             R1, [R1]
LDR             R1, [R1,#0x8C]
VLDR            S2, [R1,#0x39C]
VLDR            S1, [R1,#0x3A0]
VMUL.F32        S0, S0, S2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VMUL.F32        S0, S0, S0
VSTR            S0, [R0,#0x7C]
BX              LR
