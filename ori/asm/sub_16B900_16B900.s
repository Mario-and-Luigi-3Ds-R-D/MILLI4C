LDR             R12, =0x2686
PUSH            {R4}
ADD             R4, R12, #0x12
LDRB            R12, [R12,R0]
VLDR            S0, [SP,#4+arg_0]
CMP             R12, #1
LDRB            R12, [R4,R0]
BNE             loc_16B944
CMP             R12, #0
BEQ             loc_16B944
CMP             R12, #1
BEQ             loc_16B998
CMP             R12, #2
BEQ             loc_16B980
CMP             R12, #3
BNE             loc_16B968
B               loc_16B9B0
VLDR            S1, [R0,#0x10C]
VLDR            S2, [R0,#0x11C]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_16B960
MOV             R0, #1
B               loc_16B964
MOV             R0, #0
STRB            R0, [R2]
LDRB            R0, [R2]
CMP             R0, #0
STRNE           R3, [R1]
VSTREQ          S0, [R1]
POP             {R4}
BX              LR
VLDR            S1, [R0,#0x10C]
VLDR            S2, [R0,#0x11C]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_16B960
B               loc_16B958
VLDR            S1, [R0,#0x108]
VLDR            S2, [R0,#0x118]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_16B960
B               loc_16B958
VLDR            S1, [R0,#0x108]
VLDR            S2, [R0,#0x118]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_16B960
B               loc_16B958
