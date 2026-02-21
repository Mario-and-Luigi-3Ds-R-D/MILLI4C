LDRB            R1, [R0,#0x418]
CMP             R1, #0
BNE             locret_22B0F4
LDR             R1, =off_6CDA80
LDR             R2, =0x126FC
LDR             R1, [R1]
LDR             R2, [R2,R1]
LDRB            R3, [R2,#0x45C]
CMP             R3, #0
BNE             locret_22B0F4
VLDR            S0, [R0,#0x4C]
VLDR            S2, [R2,#0x2C]
ADD             R1, R1, #0x12400
ADD             R1, R1, #0x2F4
VSUB.F32        S0, S0, S2
LDR             R1, [R1]
VLDR            S1, [R1,#0x3D4]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVCC           R1, #1
STRBCC          R1, [R0,#0x418]
BX              LR
