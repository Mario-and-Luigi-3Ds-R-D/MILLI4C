PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x10
LDR             R0, [R0,#0x10C]
CMP             R0, #0
MOVNE           R1, #0
STRNE           R1, [R0,#0x180]
LDR             R6, =off_6D1648
ADD             R3, R4, #0x18
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R2, [R0,#8]
ADD             R2, R2, #0x108
LDM             R2, {R0-R2}
STMEA           SP, {R0-R2}
VLDR            S5, [R4,#0xE4]
VLDR            S4, [R4,#0xE8]
VLDR            S0, [R4,#0x20]
VLDR            S3, [R4,#0xEC]
VLDM            R3, {S1-S2}
VADD.F32        S0, S0, S3
VMOV            S3, R2
ADD             R3, R4, #0xF0
VADD.F32        S1, S1, S5
VADD.F32        S2, S2, S4
VMOV            S5, R0
VMOV            S4, R1
STM             R3, {R0-R2}
MOV             R0, R4
VSUB.F32        S18, S0, S3
VLDR            S0, [SP,#0x30+var_2C]
VSUB.F32        S16, S1, S5
VSUB.F32        S17, S2, S4
BL              sub_1F3BF4
VMOV.F32        S19, S0
VLDR            S0, [SP,#0x30+var_30]
MOV             R0, R4
BL              sub_1F3BC8
VMOV.F32        S1, S19
MOV             R2, #0
LDR             R0, =0x20032
MOV             R1, R2
BL              sub_1459F8
ADD             R5, R4, #0x100
LDRH            R0, [R5,#0x1C]
CMP             R0, #0x13
BNE             loc_1FFDB4
VLDR            S0, [SP,#0x30+var_2C]
MOV             R0, R4
BL              sub_1F3BF4
VMOV.F32        S19, S0
VLDR            S0, [SP,#0x30+var_30]
MOV             R0, R4
BL              sub_1F3BC8
VMOV.F32        S1, S19
MOV             R2, #0
LDR             R0, =0x20033
MOV             R1, R2
BL              sub_1459F8
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
LDRH            R1, [R5,#0x1C]
MOV             R3, #1
MOV             R2, SP
BL              sub_168114
STR             R0, [R4,#0x10C]
MOV             R1, #0
ADD             R0, R4, #0x110
BL              sub_485780
LDR             R1, =0x7FFF
ADD             R0, R4, #0x110
BL              sub_123C70
MOV             R1, #0x200
ADD             R0, R4, #0x110
BL              sub_123CE8
LDR             R0, [R4,#0x10C]
ADD             R1, R4, #0x10C
ADD             R0, R0, #0x134
VSTM            R0, {S16-S18}
LDR             R0, [R4,#0x10C]
STR             R1, [R0,#0x180]
LDR             R1, =dword_68BC10
LDRD            R0, R1, [R1,#(dword_68BC38 - 0x68BC10)]
STRD            R0, R1, [R4,#0xFC]
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R6,PC}
