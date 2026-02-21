VPUSH           {D8-D12}
VLDM            R2!, {S16-S23}
VLDR            S24, [R1]
VLDR            S25, [R1,#0x10]
VMUL.F32        S0, S24, S16
VMUL.F32        S1, S24, S17
VMUL.F32        S2, S24, S18
VMUL.F32        S3, S24, S19
VLDR            S24, [R1,#0x20]
VMUL.F32        S4, S25, S16
VMUL.F32        S5, S25, S17
VMUL.F32        S6, S25, S18
VMUL.F32        S7, S25, S19
VLDR            S25, [R1,#0x30]
VMUL.F32        S8, S24, S16
VMUL.F32        S9, S24, S17
VMUL.F32        S10, S24, S18
VMUL.F32        S11, S24, S19
VLDR            S24, [R1,#4]
VMUL.F32        S12, S25, S16
VMUL.F32        S13, S25, S17
VMUL.F32        S14, S25, S18
VMUL.F32        S15, S25, S19
VLDR            S25, [R1,#0x14]
VLDM            R2!, {S16-S19}
VMLA.F32        S0, S24, S20
VMLA.F32        S1, S24, S21
VMLA.F32        S2, S24, S22
VMLA.F32        S3, S24, S23
VLDR            S24, [R1,#0x24]
VMLA.F32        S4, S25, S20
VMLA.F32        S5, S25, S21
VMLA.F32        S6, S25, S22
VMLA.F32        S7, S25, S23
VLDR            S25, [R1,#0x34]
VMLA.F32        S8, S24, S20
VMLA.F32        S9, S24, S21
VMLA.F32        S10, S24, S22
VMLA.F32        S11, S24, S23
VLDR            S24, [R1,#8]
VMLA.F32        S12, S25, S20
VMLA.F32        S13, S25, S21
VMLA.F32        S14, S25, S22
VMLA.F32        S15, S25, S23
VLDR            S25, [R1,#0x18]
VLDM            R2, {S20-S23}
VMLA.F32        S0, S24, S16
VMLA.F32        S1, S24, S17
VMLA.F32        S2, S24, S18
VMLA.F32        S3, S24, S19
VLDR            S24, [R1,#0x28]
VMLA.F32        S4, S25, S16
VMLA.F32        S5, S25, S17
VMLA.F32        S6, S25, S18
VMLA.F32        S7, S25, S19
VLDR            S25, [R1,#0x38]
VMLA.F32        S8, S24, S16
VMLA.F32        S9, S24, S17
VMLA.F32        S10, S24, S18
VMLA.F32        S11, S24, S19
VLDR            S24, [R1,#0xC]
VMLA.F32        S12, S25, S16
VMLA.F32        S13, S25, S17
VMLA.F32        S14, S25, S18
VMLA.F32        S15, S25, S19
VLDR            S25, [R1,#0x1C]
VMLA.F32        S0, S24, S20
VMLA.F32        S1, S24, S21
VMLA.F32        S2, S24, S22
VMLA.F32        S3, S24, S23
VLDR            S24, [R1,#0x2C]
VMLA.F32        S4, S25, S20
VMLA.F32        S5, S25, S21
VMLA.F32        S6, S25, S22
VMLA.F32        S7, S25, S23
VLDR            S25, [R1,#0x3C]
VMLA.F32        S8, S24, S20
VMLA.F32        S9, S24, S21
VMLA.F32        S10, S24, S22
VMLA.F32        S11, S24, S23
VMLA.F32        S12, S25, S20
VMLA.F32        S13, S25, S21
VMLA.F32        S14, S25, S22
VMLA.F32        S15, S25, S23
VPOP            {D8-D12}
VSTM            R0, {S0-S15}
BX              LR
