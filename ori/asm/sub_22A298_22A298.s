LDRB            R1, [R0]
CMP             R1, #0
BEQ             locret_22A2EC
CMP             R1, #1
BNE             locret_22A2EC
ADD             R1, R0, #0x9800
VLDR            S1, =0.0
VLDR            S0, [R1,#0x330]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             locret_22A2EC
ADD             R1, R0, #0x9800
ADD             R1, R1, #0x18C
LDRD            R2, R3, [R1,#0x84]
CMP             R2, R3
BNE             locret_22A2EC
LDR             R2, [R1,#0x110]
LDR             R1, [R1,#0x114]
CMP             R2, R1
MOVEQ           R1, #2
STRBEQ          R1, [R0]
BX              LR
