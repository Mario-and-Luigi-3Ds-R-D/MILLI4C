PUSH            {R4-R8,LR}
MOV             R5, R0
ADD             R4, R5, #0x400
LDR             R7, =off_6CDF98
ADD             R4, R4, #0x1C
VPUSH           {D8-D9}
SUB             SP, SP, #0x18
LDR             R0, [R7]
LDR             R6, [R5,#4]
LDR             R8, [R0,#0x124]
MOV             R0, R4
BL              sub_5A26D0
ADD             R6, R6, #0x400
ADD             R6, R6, #0x198
ADD             R3, R4, #0x1C
LDM             R6, {R0-R2}
VLDR            S16, =0.0
VLDR            S17, =1.0
STM             R3, {R0-R2}
ADD             R3, R4, #4
STM             R3, {R0-R2}
LDR             R0, [R5,#4]
LDR             R2, [R0,#0x580]!
LDR             R1, [R0,#4]
LDR             R0, =0x2AAAAAAB
SUB             R1, R1, R2
ADD             R2, SP, #0x40+var_34
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, #1
MOV             R1, #1
UXTH            R0, R0
SUB             R0, R0, #1
VMOV            S0, R0
ADD             R0, R8, #0x188
VLDM            R0, {S1-S2}
MOV             R0, R4
VSTM            R2, {S16-S17}
VCVT.F32.S32    S0, S0
VSTR            S16, [SP,#0x40+var_2C]
VMLA.F32        S1, S2, S0
VMOV.F32        S0, S16
VLDR            S2, [R8,#0x190]
BL              sub_5A290C
LDR             R0, [R5,#0x444]
VLDR            S0, [R0,#0x38]
VSTR            S0, [R5,#0x1C]
VSTR            S16, [R5,#0x18]
LDR             R0, [R7]
ADD             R0, R0, #0x12800
LDR             R0, [R0,#0x188]
STR             R0, [R5,#0x20]
LDR             R0, [R5,#4]
ADD             R0, R0, #0x5B0
BL              sub_270958
LDR             R0, [R5,#4]
ADD             R0, R0, #0x580
LDM             R0, {R4,R6}
CMP             R4, R6
VLDRNE          S18, =0.5
ADDNE           R7, R8, #0x400
BEQ             loc_27254C
LDR             R0, [R4]
ADD             R0, R0, #0x400
BL              sub_5A18EC
VLDR            S0, [R5,#0x1C]
LDR             R0, [R4]
VMUL.F32        S1, S0, S18
VLDR            S0, [R7,#(flt_6CDFD0 - 0x6CDF98)]
ADD             R0, R0, #0x400
BL              sub_5A14A4
ADD             R4, R4, #0xC
CMP             R4, R6
BNE             loc_27251C
LDR             R0, [R5,#4]
ADD             R1, SP, #0x40+var_3C
LDR             R0, [R0,#0x584]
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x40+var_3C]
STR             R2, [SP,#0x40+var_40]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x40+var_38]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x40+var_40]
BL              sub_27D354
LDR             R1, [SP,#0x40+var_38]
ADD             R0, SP, #0x40+var_3C
CMP             R1, R0
BNE             loc_2725A8
LDR             R0, [SP,#0x40+var_40]
CMP             R0, #0
BEQ             loc_2725A8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x40+var_3C]
MOV             R4, #0
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R5,#4]
BL              sub_5CC430
LDR             R3, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, =0x300D3
MOV             R2, #0
LDR             R3, [R3]
SUB             R0, R3, R0
BL              sub_503414
STRB            R4, [R5,#0x24]
MOV             R1, #0
ADD             R0, R5, #0x28 ; '('
STRB            R4, [R5,#0x25]
BL              sub_14C3E8
ADD             R0, R8, #0x400
VLDR            S0, [R5,#0x1C]
VLDR            S1, [R0,#0x3C]
VSTR            S16, [R5,#0x3C4]
VSUB.F32        S1, S17, S1
VMUL.F32        S0, S0, S1
VSTR            S0, [R5,#0x3C8]
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R8,PC}
