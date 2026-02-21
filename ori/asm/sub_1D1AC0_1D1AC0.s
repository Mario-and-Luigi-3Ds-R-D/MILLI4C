LDR             R1, =loc_19CF5C
LDR             R0, [R0,R1]
CMP             R0, #0
BEQ             locret_1D1AF8
LDR             R1, =off_6CE970
VLDR            S1, =0.0039062
LDR             R1, [R1]
ADD             R1, R1, #0x190000
ADD             R1, R1, #0xDE00
LDRSH           R1, [R1,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
B               sub_4F37A4
BX              LR
