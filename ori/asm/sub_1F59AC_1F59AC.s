MOV             R12, #0
MOV             R1, R12
PUSH            {R4}
ADD             R4, R0, R1,LSL#2
LDR             R2, [R4,#0x4C]
CMP             R2, #0
BEQ             loc_1F5A0C
ADD             R2, R1, R1,LSL#1
MOV             R12, #1
ADD             R3, R0, R2,LSL#2
ADD             R2, R3, #0x7C ; '|'
ADD             R3, R3, #0x58 ; 'X'
VLDR            S1, [R2]
VLDR            S0, [R2,#4]
VLDR            S2, [R2,#8]
LDR             R2, [R4,#0x4C]
VLDM            R3!, {S5}
VLDM            R3, {S3-S4}
VSUB.F32        S1, S1, S5
VSUB.F32        S0, S0, S3
VSUB.F32        S2, S2, S4
VSTR            S1, [R2,#0x134]
VSTR            S0, [R2,#0x138]
VSTR            S2, [R2,#0x13C]
ADD             R1, R1, #1
CMP             R1, #3
BLT             loc_1F59B8
CMP             R12, #0
BNE             loc_1F5A30
LDR             R2, =dword_68BBA8
ADD             R0, R0, #0xA4
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
POP             {R4}
BX              LR
