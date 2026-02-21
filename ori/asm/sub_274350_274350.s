PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8-D9}
VLDR            S4, [R1]
VLDR            S5, [R0,#0xC]
VLDR            S2, [R1,#4]
VLDR            S0, [R1,#8]
VLDR            S3, [R0,#0x10]
VLDR            S1, [R0,#0x14]
VADD.F32        S16, S4, S5
VADD.F32        S17, S2, S3
VADD.F32        S18, S0, S1
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x60 ; '`'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x8C]
ADD             R0, R4, #0x84
STM             R0, {R1,R2}
ADD             R0, R4, #0x6C ; 'l'
VSTM            R0, {S16-S18}
ADD             R0, R4, #0x78 ; 'x'
VSTM            R0, {S16-S18}
ADD             R0, R4, #0x30 ; '0'
VLDM            R0, {S0-S2}
ADD             R0, R4, #0x48 ; 'H'
VADD.F32        S0, S0, S16
VADD.F32        S2, S2, S18
VADD.F32        S1, S1, S17
VSTM            R0, {S0-S2}
ADD             R0, R4, #0x24 ; '$'
VLDM            R0, {S0-S2}
ADD             R0, R4, #0x3C ; '<'
VADD.F32        S0, S0, S16
VADD.F32        S2, S2, S18
VADD.F32        S1, S1, S17
VSTM            R0, {S0-S2}
ADD             R0, R4, #0x48 ; 'H'
ADD             R4, R4, #0x54 ; 'T'
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
VSTM            R4, {S0-S2}
VPOP            {D8-D9}
POP             {R4,PC}
