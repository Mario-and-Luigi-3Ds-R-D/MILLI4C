LDRB            R2, [R1]
TST             R2, #7
BEQ             locret_22DFE0
TST             R2, #8
BNE             locret_22DFE0
TST             R2, #0x20
BEQ             locret_22DFE0
TST             R2, #0x10
BEQ             loc_22DF50
LDR             R2, [R1,#0x38]
LDRH            R3, [R1,#2]
CMP             R2, R3
BNE             loc_22DF18
LDR             R2, [R1,#0x20]
STR             R2, [R0,#0xF0]
LDRB            R2, [R1]
BIC             R2, R2, #1
STRB            R2, [R1]
LDR             R2, [R1,#0x38]
LDRH            R3, [R1,#4]
CMP             R2, R3
BNE             loc_22DF3C
LDR             R2, [R1,#0x24]
STR             R2, [R0,#0xF4]
LDRB            R2, [R1]
BIC             R2, R2, #2
STRB            R2, [R1]
LDR             R2, [R1,#0x38]
LDRH            R3, [R1,#6]
CMP             R2, R3
BNE             locret_22DFE0
B               loc_22DFCC
VLDR            S0, =0.0
TST             R2, #1
BEQ             loc_22DF80
VLDR            S1, [R1,#0x2C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_22DF80
LDR             R2, [R1,#0x20]
STR             R2, [R0,#0xF0]
LDRB            R2, [R1]
BIC             R2, R2, #1
STRB            R2, [R1]
LDRB            R2, [R1]
TST             R2, #2
BEQ             loc_22DFB0
VLDR            S1, [R1,#0x30]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_22DFB0
LDR             R2, [R1,#0x24]
STR             R2, [R0,#0xF4]
LDRB            R2, [R1]
BIC             R2, R2, #2
STRB            R2, [R1]
LDRB            R2, [R1]
TST             R2, #4
BEQ             locret_22DFE0
VLDR            S1, [R1,#0x34]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             locret_22DFE0
LDR             R2, [R1,#0x28]
STR             R2, [R0,#0xF8]
LDRB            R0, [R1]
BIC             R0, R0, #4
STRB            R0, [R1]
BX              LR
