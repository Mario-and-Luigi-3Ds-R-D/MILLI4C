VADD.F32        S2, S0, S2
VSUB.F32        S4, S1, S4
ADD             R0, R0, #0x400
ADD             R0, R0, #0x358
ADD             R2, R0, R1,LSL#2
ADD             R0, R0, R1,LSL#4
VSTR            S0, [R0,#0x240]
VSTR            S2, [R0,#0x244]
VSTR            S4, [R0,#0x248]
VSTR            S1, [R0,#0x24C]
VSTR            S3, [R2,#0x270]
BX              LR
