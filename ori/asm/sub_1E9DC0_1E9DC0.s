PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R4, #0
MOV             R8, #1
VPUSH           {D8}
VLDR            S16, =0.0039062
ADD             R5, R6, R4,LSL#4
LDR             R0, [R5,#0xAC]!
CMP             R0, #0
BEQ             loc_1E9E28
ADD             R0, R5, #4
BL              sub_4857C8
VLDR            S0, [R5,#4]
LDR             R7, [R5]
VCVT.F32.S32    S0, S0
ADD             R1, R7, #0x44 ; 'D'
LDR             R0, [R7,#0x50]
ADD             R5, R7, #0x30 ; '0'
VMUL.F32        S2, S0, S16
VLDM            R1, {S0-S1}
LDR             R1, [R7,#0x4C]
BLX             R1
LDR             R0, [R5,#8]
STR             R0, [R5,#0xC]
VSTR            S0, [R5,#8]
STRB            R8, [R7,#0x58]
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_1E9DD8
MOV             R4, #0
ADD             R5, R6, R4,LSL#4
LDR             R0, [R5,#0xEC]!
CMP             R0, #0
BEQ             loc_1E9E88
ADD             R0, R5, #4
BL              sub_4857C8
VLDR            S0, [R5,#4]
LDR             R7, [R5]
VCVT.F32.S32    S0, S0
ADD             R1, R7, #0x44 ; 'D'
LDR             R0, [R7,#0x50]
ADD             R5, R7, #0x30 ; '0'
VMUL.F32        S2, S0, S16
VLDM            R1, {S0-S1}
LDR             R1, [R7,#0x4C]
BLX             R1
LDR             R0, [R5,#8]
STR             R0, [R5,#0xC]
VSTR            S0, [R5,#8]
STRB            R8, [R7,#0x58]
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_1E9E38
MOV             R4, #0
ADD             R5, R6, R4,LSL#4
LDR             R0, [R5,#0x12C]!
CMP             R0, #0
BEQ             loc_1E9EE8
ADD             R0, R5, #4
BL              sub_4857C8
VLDR            S0, [R5,#4]
LDR             R7, [R5]
VCVT.F32.S32    S0, S0
ADD             R1, R7, #0x44 ; 'D'
LDR             R0, [R7,#0x50]
ADD             R5, R7, #0x30 ; '0'
VMUL.F32        S2, S0, S16
VLDM            R1, {S0-S1}
LDR             R1, [R7,#0x4C]
BLX             R1
LDR             R0, [R5,#8]
STR             R0, [R5,#0xC]
VSTR            S0, [R5,#8]
STRB            R8, [R7,#0x58]
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_1E9E98
VPOP            {D8}
POP             {R4-R8,PC}
