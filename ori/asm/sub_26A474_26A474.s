MOV             R1, #0
STRB            R1, [R0,#0xE]
LDR             R2, [R0]
VLDR            S1, =1.0
VLDR            S0, =0.0
ADD             R3, R2, #0x6F0
LDM             R3, {R0,R3}
CMP             R0, R3
BEQ             loc_26A4D4
LDR             R1, [R0]
LDRB            R12, [R1,#0xE]
CMP             R12, #0
BEQ             loc_26A4C8
VLDR            S2, [R1,#0x10]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VLDR            S3, [R1,#0x14]
VMOVGT.F32      S1, S2
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S3
ADD             R0, R0, #0xC
CMP             R0, R3
BNE             loc_26A498
ADD             R0, R2, #0x400
VSTR            S1, [R0,#0x70]
VSTR            S0, [R0,#0x74]
LDR             R0, [R2,#0x71C]
CMP             R0, #0
BEQ             locret_26A4F8
LDR             R1, [R0]
LDR             R1, [R1,#0x4C]
BX              R1
BX              LR
