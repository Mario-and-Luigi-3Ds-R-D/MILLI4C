LDRB            R0, [R1]
TST             R0, #0xF
BEQ             locret_233210
TST             R0, #0x10
BNE             locret_233210
TST             R0, #0x40
BEQ             locret_233210
TST             R0, #0x20
BEQ             loc_233140
LDR             R0, [R1,#0x48]
LDRH            R2, [R1,#2]
CMP             R0, R2
BNE             loc_2330DC
LDR             R2, [R1,#0x34]
LDRB            R0, [R1,#0x20]
STRB            R0, [R2]
LDRB            R0, [R1]
BIC             R0, R0, #1
STRB            R0, [R1]
LDR             R0, [R1,#0x48]
LDRH            R2, [R1,#4]
CMP             R0, R2
BNE             loc_233104
LDR             R2, [R1,#0x34]
LDRB            R0, [R1,#0x21]
STRB            R0, [R2,#1]
LDRB            R0, [R1]
BIC             R0, R0, #2
STRB            R0, [R1]
LDR             R0, [R1,#0x48]
LDRH            R2, [R1,#6]
CMP             R0, R2
BNE             loc_23312C
LDR             R2, [R1,#0x34]
LDRB            R0, [R1,#0x22]
STRB            R0, [R2,#2]
LDRB            R0, [R1]
BIC             R0, R0, #4
STRB            R0, [R1]
LDR             R0, [R1,#0x48]
LDRH            R2, [R1,#8]
CMP             R0, R2
BNE             locret_233210
B               loc_2331F8
VLDR            S0, =0.0
TST             R0, #1
BEQ             loc_233174
VLDR            S1, [R1,#0x24]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_233174
LDR             R2, [R1,#0x34]
LDRB            R0, [R1,#0x20]
STRB            R0, [R2]
LDRB            R0, [R1]
BIC             R0, R0, #1
STRB            R0, [R1]
LDRB            R0, [R1]
TST             R0, #2
BEQ             loc_2331A8
VLDR            S1, [R1,#0x28]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_2331A8
LDR             R2, [R1,#0x34]
LDRB            R0, [R1,#0x21]
STRB            R0, [R2,#1]
LDRB            R0, [R1]
BIC             R0, R0, #2
STRB            R0, [R1]
LDRB            R0, [R1]
TST             R0, #4
BEQ             loc_2331DC
VLDR            S1, [R1,#0x2C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_2331DC
LDR             R2, [R1,#0x34]
LDRB            R0, [R1,#0x22]
STRB            R0, [R2,#2]
LDRB            R0, [R1]
BIC             R0, R0, #4
STRB            R0, [R1]
LDRB            R0, [R1]
TST             R0, #8
BEQ             locret_233210
VLDR            S1, [R1,#0x30]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             locret_233210
LDR             R2, [R1,#0x34]
LDRB            R0, [R1,#0x23]
STRB            R0, [R2,#3]
LDRB            R0, [R1]
BIC             R0, R0, #8
STRB            R0, [R1]
BX              LR
