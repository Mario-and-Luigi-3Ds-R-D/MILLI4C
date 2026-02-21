VLDM            R1, {S0-S2}
ADD             R1, R0, #0x300
LDR             R12, [SP,#arg_0]
VSTR            S0, [R0,#0x320]
VSTR            S1, [R0,#0x324]
VSTR            S2, [R0,#0x328]
ADD             R0, R0, #0x32C
VLDM            R2, {S0-S2}
VSTM            R0, {S0-S2}
STRH            R3, [R1,#0x38]
STRH            R12, [R1,#0x3A]
BX              LR
