VLDM            R1!, {S0}
ADD             R2, R0, #0x10
VLDM            R1, {S1-S2}
ADD             R12, R0, #0x34 ; '4'
VLDR            S5, [R0,#0xC]
VLDM            R2, {S3-S4}
VADD.F32        S0, S0, S5
ADD             R2, R0, #0x24 ; '$'
VADD.F32        S1, S1, S3
VADD.F32        S2, S2, S4
VLDM            R2, {S3-S5}
ADD             R2, R0, #0x40 ; '@'
VSUB.F32        S3, S0, S3
VSUB.F32        S4, S1, S4
VSUB.F32        S5, S2, S5
VSTM            R2, {S3-S5}
ADD             R2, R0, #0x24 ; '$'
ADD             R0, R0, #0x24 ; '$'
LDM             R2, {R1-R3}
STM             R12, {R1-R3}
VSTM            R0, {S0-S2}
BX              LR
