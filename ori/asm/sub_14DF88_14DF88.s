LDR             R1, [R0,#0x3E4]
NOP
PUSH            {R4,R5,LR}
MOV             R5, R0
ADD             R4, R0, #0x3B8
VPUSH           {D8}
SUB             SP, SP, #0x34
LDRB            R0, [R0,#0x3B8]
CMP             R0, #0
LDRNE           R0, [R5,#0x3AC]
CMPNE           R0, #0
MOVEQ           R0, #0xFFFFFFFF
BEQ             loc_14E074
MOV             R0, R1
LDRB            R1, [R5,#0xF0]
ADD             R12, SP, #0x48+var_30
MOV             R2, #0
CMP             R1, #0
BEQ             loc_14DFE8
CMP             R1, #1
BEQ             loc_14DFFC
CMP             R1, #2
BEQ             loc_14E010
B               loc_14E020
LDR             R1, [R0]
LDR             R3, [R1,#0x24]
MOV             R1, R12
BLX             R3
B               loc_14E020
LDR             R1, [R0]
LDR             R3, [R1,#0x28]
MOV             R1, R12
BLX             R3
B               loc_14E020
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
MOV             R1, R12
BLX             R3
MOV             R2, #0
ADD             R1, SP, #0x48+var_44
MOV             R0, R5
BL              sub_5C4198
ADD             R1, SP, #0x48+var_30
VLDR            S5, [SP,#0x48+var_44]
ADD             R0, SP, #0x48+var_24
VLDM            R1, {S0-S2}
ADD             R1, SP, #0x48+var_40
VLDM            R1, {S3-S4}
VSUB.F32        S0, S0, S5
ADD             R1, SP, #0x48+var_24
VSUB.F32        S1, S1, S3
VSUB.F32        S2, S2, S4
VSTM            R1, {S0-S2}
LDRB            R5, [R4]
VLDR            S16, [R4,#0x24]
BL              sub_47ECF4
VMOV.F32        S1, S16
MOV             R0, R5
BL              sub_4801C4
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8}
POP             {R4,R5,PC}
