LDR             R3, [R0,#0x6FC]
CMP             R3, #0
BEQ             locret_27C594
ADD             R3, R0, #0x5D0
VLDR            S0, [R1]
VLDR            S1, [R3]
VADD.F32        S0, S0, S1
VSTR            S0, [R1]
VLDR            S0, [R1,#4]
VLDR            S1, [R3,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#4]
VLDR            S0, [R1,#8]
VLDR            S1, [R3,#8]
ADD             R3, R0, #0x400
ADD             R3, R3, #0x1DC
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#8]
VLDR            S0, [R1]
VLDR            S1, [R3]
VADD.F32        S0, S0, S1
VSTR            S0, [R1]
VLDR            S0, [R1,#4]
VLDR            S1, [R3,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#4]
VLDR            S0, [R1,#8]
VLDR            S1, [R3,#8]
ADD             R3, R0, #0x400
ADD             R3, R3, #0x1E8
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#8]
VLDR            S0, [R1]
VLDR            S1, [R3]
VADD.F32        S0, S0, S1
VSTR            S0, [R1]
VLDR            S0, [R1,#4]
VLDR            S1, [R3,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#4]
VLDR            S0, [R1,#8]
VLDR            S1, [R3,#8]
ADD             R3, R0, #0x400
ADD             R3, R3, #0x1F4
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#8]
VLDR            S0, [R1]
VLDR            S1, [R3]
VADD.F32        S0, S0, S1
VSTR            S0, [R1]
VLDR            S0, [R1,#4]
VLDR            S1, [R3,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#4]
VLDR            S1, [R3,#8]
VLDR            S0, [R1,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#8]
LDR             R3, [R2]
ADD             R3, R3, #4
STR             R3, [R2]
LDR             R0, [R0,#0x6FC]
B               sub_27C498
BX              LR
