LDRH            R2, [R1,#2]
VLDR            S0, =0.0
STRH            R2, [R0]
LDRH            R2, [R1,#4]
STRH            R2, [R0,#2]
LDRH            R2, [R1]
VMOV            S1, R2
ADD             R2, R0, #4
VCVT.F32.U32    S1, S1
VSTM            R2, {S0-S1}
LDRH            R2, [R1,#2]
VSTR            S0, [R0,#0xC]
VMOV            S0, R2
VCVT.F32.U32    S0, S0
VSTR            S0, [R0,#0x10]
LDRH            R2, [R1,#2]
VMOV            S0, R2
VCVT.F32.U32    S0, S0
VSTR            S0, [R0,#0xC]
LDR             R2, [R1,#6]
STR             R2, [R0,#0x14]
LDR             R2, [R1,#0xA]
STR             R2, [R0,#0x18]
LDR             R2, [R1,#0x10]
STR             R2, [R0,#0x1C]
LDRB            R1, [R1,#0x14]
STRB            R1, [R0,#0x20]
BX              LR
