CMP             R1, #3
BEQ             loc_2027A4
CMP             R1, #7
VLDRNE          S0, =0.0
BNE             locret_2027A0
LDRB            R0, [R0,#0x1D3]
CMP             R0, #4
MOVEQ           R0, #1
MOVNE           R0, #0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
BX              LR
ADD             R0, R0, #0x100
LDRSH           R0, [R0,#0xE4]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
BX              LR
