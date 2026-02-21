MOV             R2, #0
STR             R1, [R0,#4]
STR             R2, [R0]
LDR             R2, [R1,#8]
VLDR            S0, =32000.0
TST             R2, #0x800
VMOVNE.F32      S1, S0
LDR             R2, [R1,#0xC]
VLDREQ          S1, [R1,#0x14]
STR             R2, [R0,#8]
VSTR            S1, [R0,#0xC]
LDR             R3, [R1,#8]
LDR             R2, [R1,#0x2C]
TST             R3, #0x800
VLDREQ          S0, [R1,#0x34]
STR             R2, [R0,#0x10]
MOV             R3, #4
VSTR            S0, [R0,#0x14]
STR             R3, [R0]
VLDR            S0, [R1,#0x14]
VLDR            S1, [R1,#0x34]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVCC           R2, #0x24 ; '$'
STRCC           R2, [R0]
VLDR            S0, [R1,#0x14]
VLDR            S1, [R1,#0x34]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_1E2D64
LDR             R1, [R0]
ORR             R1, R1, #8
STR             R1, [R0]
NOP
B               loc_1E2B80
