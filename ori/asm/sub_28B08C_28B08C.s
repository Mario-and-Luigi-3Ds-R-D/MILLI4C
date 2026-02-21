ADD             R2, R0, #0xC
VLDM            R1, {S0-S1}
ADD             R12, R0, #0x60 ; '`'
VLDR            S2, [R1,#8]
VLDR            S3, [R0,#0x14]
VLDM            R2, {S4-S5}
VADD.F32        S2, S2, S3
ADD             R2, R0, #0x78 ; 'x'
VADD.F32        S0, S0, S4
VADD.F32        S1, S1, S5
VLDM            R2, {S3-S5}
ADD             R2, R0, #0x84
VSUB.F32        S5, S2, S5
VSUB.F32        S3, S0, S3
VSUB.F32        S4, S1, S4
VSTM            R2, {S3-S5}
ADD             R2, R0, #0x48 ; 'H'
LDM             R2, {R1-R3}
STM             R12, {R1-R3}
ADD             R2, R0, #0x3C ; '<'
ADD             R12, R0, #0x54 ; 'T'
LDM             R2, {R1-R3}
STM             R12, {R1-R3}
ADD             R2, R0, #0x78 ; 'x'
ADD             R12, R0, #0x6C ; 'l'
LDM             R2, {R1-R3}
STM             R12, {R1-R3}
ADD             R2, R0, #0x30 ; '0'
VLDM            R2, {S3-S5}
ADD             R2, R0, #0x48 ; 'H'
VADD.F32        S3, S3, S0
VADD.F32        S5, S5, S2
VADD.F32        S4, S4, S1
VSTM            R2, {S3-S5}
ADD             R2, R0, #0x24 ; '$'
VLDM            R2, {S3-S5}
ADD             R2, R0, #0x78 ; 'x'
ADD             R0, R0, #0x3C ; '<'
VSTM            R2, {S0-S2}
VADD.F32        S3, S3, S0
VADD.F32        S5, S5, S2
VADD.F32        S4, S4, S1
VSTM            R0, {S3-S5}
BX              LR
