LDR             R1, =dword_6CDFC0
VLDR            S0, [R0,#0x48]
VLDR            S1, [R1,#(flt_6CDFC4 - 0x6CDFC0)]
VMUL.F32        S0, S0, S1
VSTR            S0, [R1,#(flt_6CDFC4 - 0x6CDFC0)]
BX              LR
