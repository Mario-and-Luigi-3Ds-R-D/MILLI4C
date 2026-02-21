MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
VADD.F32        S2, S0, S2
VSUB.F32        S4, S1, S4
ADD             R0, R1, R2,LSL#4
ADD             R3, R1, R2,LSL#2
VSTR            S0, [R0,#0x240]
VSTR            S2, [R0,#0x244]
VSTR            S4, [R0,#0x248]
VSTR            S1, [R0,#0x24C]
VSTR            S3, [R3,#0x270]
BX              LR
