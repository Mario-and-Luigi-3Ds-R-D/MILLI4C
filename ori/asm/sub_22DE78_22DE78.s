LDR             R3, [R0,#0x464]
MOV             R12, #0x700
AND             R1, R12, R1,LSL#8
BIC             R3, R3, #0x700
ORR             R1, R1, R3
MOV             R3, #3
MOV             R12, R1,LSL#21
STR             R1, [R0,#0x464]
CMP             R3, R12,LSR#29
BHI             locret_22DEC4
AND             R1, R1, #0xF
VMOV            S0, R1
VLDR            S2, =6.2832
VLDR            S1, =0.0625
ADD             R0, R0, #0x400
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x74]
BX              LR
