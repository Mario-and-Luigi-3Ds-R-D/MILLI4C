PUSH            {R4-R10,LR}
MOV             R4, R0
ADD             R5, R4, #0x400
ADD             R5, R5, #8
LDR             R0, =off_6CDF98
MOV             R9, R5
VPUSH           {D8-D9}
SUB             SP, SP, #0x30
LDR             R0, [R0]
LDR             R7, [R4,#4]
LDR             R6, [R0,#0x124]
MOV             R0, R5
BL              sub_5A26D0
ADD             R7, R7, #0x400
ADD             R7, R7, #0x198
ADD             R3, R5, #0x1C
LDM             R7, {R0-R2}
ADD             R5, R5, #4
VLDR            S16, =0.0
STM             R3, {R0-R2}
STM             R5, {R0-R2}
ADD             R5, R6, #0x400
LDR             R0, [R6,#0x448]
ADD             R1, SP, #0x60+var_5C
STR             R0, [R4,#0xC]
VLDR            S18, [R6,#0xD8]
ADD             R6, R6, #0xDC
LDR             R0, [R4,#4]
VLDR            S0, [R5,#0x2E8]
VLDM            R6, {S1-S2}
ADD             R6, R4, #0x400
LDR             R0, [R0,#0x584]
ADD             R6, R6, #0xC
VADD.F32        S0, S0, S1
LDM             R6, {R6-R8}
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x60+var_5C]
STR             R2, [SP,#0x60+var_60]
LDR             R2, [R0,#4]
VADD.F32        S17, S0, S2
STR             R2, [SP,#0x60+var_58]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x60+var_60]
ADD             R1, SP, #0x60+var_54
BL              sub_5CCFE8
LDR             R1, [SP,#0x60+var_58]
ADD             R0, SP, #0x60+var_5C
CMP             R1, R0
BNE             loc_26ED4C
LDR             R0, [SP,#0x60+var_60]
CMP             R0, #0
BEQ             loc_26ED4C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x60+var_5C]
VMOV            S0, R6
MOV             R10, #0
ADD             R2, SP, #0x60+var_3C
STR             R1, [R0,#4]
STR             R0, [R1]
VLDR            S1, [SP,#0x60+var_54]
ADD             R0, SP, #0x60+var_38
MOV             R1, R10
VADD.F32        S0, S0, S1
VMOV            S1, R7
VSUB.F32        S2, S17, S0
VMOV.F32        S0, S16
VSUB.F32        S0, S0, S1
VMOV            S1, R8
VSTR            S2, [SP,#0x60+var_3C]
VSUB.F32        S1, S18, S1
VSTM            R0, {S0-S1}
MOV             R0, R9
VLDR            S0, [R5,#0x48]
BL              sub_5A2B20
VLDR            S17, =1.0
ADD             R2, SP, #0x60+var_48
VMOV.F32        S0, S16
VSTM            R2, {S16-S17}
MOV             R1, #1
VSTR            S16, [SP,#0x60+var_40]
VLDR            S2, [R5,#0x44]
VLDR            S1, [R5,#0x48]
MOV             R0, R9
BL              sub_5A28C4
STRB            R10, [R4,#0x10]
MOV             R1, #0
ADD             R0, R4, #0x14
STRB            R10, [R4,#0x11]
BL              sub_14C3E8
VLDR            S1, [R5,#0x3C]
VLDR            S0, [R4,#0xC]
VSTR            S16, [R4,#0x3B0]
VSUB.F32        S1, S17, S1
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#0x3B4]
LDR             R0, [R4,#4]
BL              sub_5CC430
LDR             R3, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, =0x300D3
MOV             R2, #0
LDR             R3, [R3]
SUB             R0, R3, R0
BL              sub_503414
LDR             R0, [R4,#4]
VLDR            S0, [R4,#0xC]
ADD             R0, R0, #0x5B0
BL              sub_270EB0
LDR             R0, [R4,#4]
LDR             R5, [R0,#0x580]
B               loc_26EE44
LDR             R0, [R5]
VLDR            S0, [R4,#0xC]
BL              sub_27D2E8
ADD             R5, R5, #0xC
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x584]
CMP             R0, R5
BNE             loc_26EE34
ADD             SP, SP, #0x30 ; '0'
VPOP            {D8-D9}
POP             {R4-R10,PC}
