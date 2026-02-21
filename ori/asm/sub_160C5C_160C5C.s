ADD             R0, R0, #0x14400
ADD             R0, R0, #0xBC
LDR             R0, [R0]
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVCC           R0, #1
MOVCS           R0, #0
BX              LR
