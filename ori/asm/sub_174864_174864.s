ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
VLDR            S1, =0.0
ADD             R0, R0, #0x400
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S1, =256.0
VLDREQ          S0, [R0,#0x70]
VSTRNE          S0, [R0,#0x70]
VMUL.F32        S0, S0, S1
LDR             R0, [R1,#0xA4]
ADD             R0, R0, #0x10
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
B               sub_123CE8
