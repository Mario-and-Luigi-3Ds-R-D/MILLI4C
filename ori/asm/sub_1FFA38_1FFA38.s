PUSH            {R4,R5,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0,#0x104]
CMP             R0, #0
BNE             loc_1FFAF8
ADD             R0, R4, #0x1C
VLDR            S2, [R4,#0x18]
VLDR            S5, [R4,#0xE4]
VLDR            S3, [R4,#0xEC]
VLDR            S4, [R4,#0xE8]
VADD.F32        S2, S2, S5
VLDM            R0, {S0-S1}
ADD             R1, SP, #0x20+var_1C
MOV             R0, R4
VADD.F32        S0, S0, S4
VADD.F32        S1, S1, S3
VSTR            S2, [SP,#0x20+var_20]
VSTM            R1, {S0-S1}
BL              sub_1F3BF4
VMOV.F32        S16, S0
VLDR            S0, [SP,#0x20+var_20]
MOV             R0, R4
BL              sub_1F3BC8
LDR             R5, =off_6D1648
VMOV.F32        S17, S0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S16
VMOV.F32        S0, S17
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #0
BL              sub_19B53C
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
MOV             R1, #0x108
MOV             R3, #0
LDRH            R1, [R1,R4]
MOV             R2, SP
BL              sub_168114
ADD             R1, R4, #0x104
STR             R0, [R4,#0x104]
STR             R1, [R0,#0x180]
LDR             R1, =dword_68BC10
LDRD            R0, R1, [R1,#(dword_68BC28 - 0x68BC10)]
STRD            R0, R1, [R4,#0xFC]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
