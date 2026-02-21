LDR             R1, [R0,#0x10C]
CMP             R1, #0
BEQ             loc_1FFC84
ADD             R2, R0, #0x18
VLDR            S5, [R0,#0xE4]
VLDM            R2, {S0-S2}
ADD             R2, R0, #0xE8
ADD             R0, R0, #0xF0
VLDM            R2, {S3-S4}
VADD.F32        S0, S0, S5
VADD.F32        S1, S1, S3
VADD.F32        S2, S2, S4
VLDM            R0, {S3-S5}
ADD             R0, R1, #0x134
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S4
VSUB.F32        S2, S2, S5
VSTM            R0, {S0-S2}
BX              LR
LDR             R2, =dword_68BC30
ADD             R0, R0, #0xFC
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
BX              LR
