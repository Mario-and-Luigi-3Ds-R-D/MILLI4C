VPUSH           {D8-D10}
VLDR            S3, [R1,#0xC]
VLDR            S7, [R1,#0x1C]
VLDR            S11, [R1,#0x2C]
VLDM            R2!, {S12-S15}
VLDR            S20, [R1]
VLDR            S21, [R1,#0x10]
VMUL.F32        S0, S12, S20
VMUL.F32        S1, S13, S20
VMUL.F32        S2, S14, S20
VMLA.F32        S3, S15, S20
VLDR            S20, [R1,#0x20]
VMUL.F32        S4, S12, S21
VMUL.F32        S5, S13, S21
VMUL.F32        S6, S14, S21
VMLA.F32        S7, S15, S21
VLDM            R2!, {S16-S19}
VLDR            S21, [R1,#4]
VMUL.F32        S8, S12, S20
VMUL.F32        S9, S13, S20
VMUL.F32        S10, S14, S20
VMLA.F32        S11, S15, S20
VLDM            R2, {S12-S15}
VLDR            S20, [R1,#0x14]
VMLA.F32        S0, S16, S21
VMLA.F32        S1, S17, S21
VMLA.F32        S2, S18, S21
VMLA.F32        S3, S19, S21
VLDR            S21, [R1,#0x24]
VMLA.F32        S4, S16, S20
VMLA.F32        S5, S17, S20
VMLA.F32        S6, S18, S20
VMLA.F32        S7, S19, S20
VLDR            S20, [R1,#8]
VMLA.F32        S8, S16, S21
VMLA.F32        S9, S17, S21
VMLA.F32        S10, S18, S21
VMLA.F32        S11, S19, S21
VLDR            S21, [R1,#0x18]
VMLA.F32        S0, S12, S20
VMLA.F32        S1, S13, S20
VMLA.F32        S2, S14, S20
VMLA.F32        S3, S15, S20
VLDR            S20, [R1,#0x28]
VMLA.F32        S4, S12, S21
VMLA.F32        S5, S13, S21
VMLA.F32        S6, S14, S21
VMLA.F32        S7, S15, S21
VMLA.F32        S8, S12, S20
VMLA.F32        S9, S13, S20
VMLA.F32        S10, S14, S20
VMLA.F32        S11, S15, S20
VPOP            {D8-D10}
MOV             R1, R0
VSTM            R1!, {S0-S3}
VSTM            R1, {S4-S11}
BX              LR
