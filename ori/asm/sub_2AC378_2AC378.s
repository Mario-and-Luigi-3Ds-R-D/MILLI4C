PUSH            {R4,R5,LR}
MOV             R3, #0
MOV             R5, R1,LSL#1
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0,#0xC]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x108
LDR             R0, [R0]
LDR             R0, [R0,#0xA4]
LDR             R0, [R0,#8]
ADD             R12, R0, #0xC0
LDR             R4, [R0,#0xC0]
CMP             R4, #0
ADDNE           R12, R12, R4
MOVEQ           R12, R3
CMP             R12, #0
BEQ             loc_2AC3D4
ADD             R12, R12, R5,LSL#4
LDR             R5, [R12,#0x28]!
CMP             R5, #0
MOVEQ           R12, R3
ADDNE           R12, R12, R5
CMP             R4, #0
ADD             R0, R0, #0xC0
ADDNE           R0, R0, R4
MOVEQ           R0, R3
CMP             R0, #0
ADD             R12, R12, #0x24 ; '$'
MOV             R5, #1
ADD             R1, R5, R1,LSL#1
MOVEQ           R3, #0
STR             R12, [SP,#0x20+var_20]
BEQ             loc_2AC410
ADD             R0, R0, R1,LSL#4
LDR             R1, [R0,#0x28]!
CMP             R1, #0
ADDNE           R3, R1, R0
ADD             R0, R3, #0x24 ; '$'
CMP             R2, #0
ADD             R1, R12, #0x50 ; 'P'
ADD             R4, R3, #0x74 ; 't'
STR             R0, [SP,#0x20+var_1C]
BEQ             loc_2AC458
VLDM            R1, {S0-S2}
MOV             R0, SP
VLDR            S16, =1.0
VMOV.F32        S3, S16
BL              sub_4BEAEC
VMOV.F32        S3, S16
VLDM            R4, {S0-S2}
ADD             R0, SP, #0x20+var_1C
BL              sub_4BEAEC
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
VLDR            S16, =0.0
MOV             R0, SP
VLDM            R1, {S0-S2}
VMOV.F32        S3, S16
BL              sub_4BEAEC
VMOV.F32        S3, S16
VLDM            R4, {S0-S2}
ADD             R0, SP, #0x20+var_1C
BL              sub_4BEAEC
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
