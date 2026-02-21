LDR             R1, [R0,#0x4EC]
TST             R1, #1
BEQ             locret_168ED8
TST             R1, #4
BNE             locret_168ED8
LDR             R1, =0x2686
ADD             R2, R0, #0x2400
ADD             R2, R2, #0x298
LDRB            R3, [R1,R0]
CMP             R3, #1
BNE             loc_168E60
LDRB            R1, [R2]
CMP             R1, #0
BEQ             loc_168E60
CMP             R1, #2
ADDNE           R1, R0, #0x108
BEQ             loc_168E60
CMP             R3, #1
VLDR            S0, =1.0
BNE             loc_168E7C
B               loc_168E68
ADD             R1, R0, #0x10C
B               loc_168E50
LDRB            R2, [R2]
CMP             R2, #0
BEQ             loc_168E7C
CMP             R2, #1
VLDRNE          S0, =-1.0
ADD             R0, R0, #0x400
VLDR            S2, [R1]
VLDR            S3, [R0,#0xC4]
VLDR            S1, =0.0
VMLA.F32        S2, S3, S0
VSTR            S2, [R1]
VLDR            S2, [R0,#0xC4]
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_168EB0
LDRH            R1, [R0,#0xD0]
ADD             R1, R1, #1
STRH            R1, [R0,#0xD0]
VLDR            S3, [R0,#0xC8]
VLDR            S0, [R0,#0xCC]
VSUB.F32        S2, S2, S3
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VSTR            S2, [R0,#0xC4]
BGE             locret_168ED8
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VSTRCC          S0, [R0,#0xC4]
BX              LR
