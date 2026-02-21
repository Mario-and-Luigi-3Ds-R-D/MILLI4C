PUSH            {R4,R5}
LDR             R12, [R0,#0x464]
AND             R1, R1, #0xF
BIC             R12, R12, #0xF
ORR             R1, R1, R12
MOV             R12, #3
MOV             R4, R1,LSL#21
STR             R1, [R0,#0x464]
CMP             R12, R4,LSR#29
BHI             loc_230AA0
AND             R1, R1, #0xF
VMOV            S0, R1
VLDR            S2, =6.2832
VLDR            S1, =0.0625
ADD             R3, R0, #0x400
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VSTR            S0, [R3,#0x74]
CMP             R2, #0
BEQ             loc_230AB8
LDR             R1, [R0]
LDR             R1, [R1,#0x88]
POP             {R4,R5}
BX              R1
POP             {R4,R5}
BX              LR
