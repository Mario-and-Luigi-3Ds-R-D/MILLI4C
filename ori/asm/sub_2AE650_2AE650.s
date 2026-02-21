PUSH            {R4-R6}
ADD             R12, R0, #0x14000
LDR             R5, =0x13D04
LDR             R6, =unk_6763A8
LDR             R4, [SP,#0xC+arg_0]
LDRH            R5, [R5,R0]
RSB             R5, R5, R5,LSL#3
ADD             R5, R6, R5,LSL#2
ADD             R6, R0, #0x14000
ADD             R6, R6, #0x29C
LDR             R5, [R5]
VLDM            R6, {S0-S1}
TST             R5, #1
CMPEQ           R3, #1
BNE             loc_2AE6A8
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
LDR             R0, [R0,#0x4EC]
TST             R0, #1
ADDNE           R0, R12, #0x2A4
VLDMNE          R0, {S0-S1}
VLDR            S2, [R2]
VLDR            S3, [R12,#0x294]
VADD.F32        S2, S2, S3
VSTR            S2, [R1]
VLDR            S2, [R2]
VLDR            S3, [R12,#0x298]
VADD.F32        S2, S2, S3
VSTR            S2, [R1,#4]
VLDR            S2, [R2,#4]
VADD.F32        S0, S2, S0
VSTR            S0, [R1,#8]
VLDR            S0, [R2,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#0xC]
VLDR            S0, [R2,#8]
VLDR            S1, [R12,#0x2AC]
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#0x10]
VLDR            S0, [R2,#8]
VLDR            S1, [R12,#0x2B0]
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#0x14]
POP             {R4-R6}
BX              LR
