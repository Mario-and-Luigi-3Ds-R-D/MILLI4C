VLDR            S1, =256.0
ADD             R0, R0, R1,LSL#4
ADD             R0, R0, #0x130
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
B               sub_485780
