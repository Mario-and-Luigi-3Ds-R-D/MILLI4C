PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6D1648
MOV             R5, R1
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
LDR             R0, [R0]
CMP             R0, #0
BEQ             locret_16A29C
LDR             R0, [R4,#0x4EC]
ANDS            R0, R0, #1
BEQ             locret_16A29C
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
LDR             R0, [R0]
LDR             R1, [R0]
TST             R1, #1
ADDEQ           R12, R4, #0x2400
ADDEQ           R12, R12, #0x298
ADDEQ           R3, R4, #0x400
BNE             loc_16A298
LDR             R1, [R0]
TST             R1, #2
BNE             loc_16A28C
LDR             R2, [R0,#4]
LDR             R2, [R2,#8]
TST             R2, #1
BEQ             loc_16A28C
TST             R1, #0x14
BNE             loc_16A28C
LDRB            R2, [R12]
TST             R2, #1
BEQ             loc_16A1E4
TST             R1, #8
BNE             loc_16A28C
TST             R2, #2
TSTNE           R1, #0x20
BNE             loc_16A28C
VLDR            S1, [R0,#0x24]
VLDR            S0, [R4,#0x10C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_16A28C
VLDR            S1, [R3,#0x1CC]
VLDR            S2, [R0,#0x20]
VADD.F32        S0, S0, S1
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BGT             loc_16A28C
TST             R2, #1
BEQ             loc_16A254
VLDR            S2, [R4,#0x118]
VLDR            S0, [R3,#0x1C0]
VLDR            S1, [R0,#0x28]
VADD.F32        S2, S2, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLE             loc_16A254
VLDR            S2, [R5]
VADD.F32        S0, S2, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLS             locret_16A29C
TST             R2, #2
BEQ             loc_16A28C
VLDR            S2, [R4,#0x118]
VLDR            S0, [R3,#0x1BC]
VLDR            S1, [R0,#0x2C]
VADD.F32        S2, S2, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_16A28C
VLDR            S2, [R5]
VADD.F32        S0, S2, S0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLS             locret_16A29C
LDR             R1, [R0,#0x34]!
TST             R1, #1
BEQ             loc_16A1AC
MOV             R0, #0
POP             {R4-R6,PC}
