PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R2, #0x58 ; 'X'
ADD             R0, R0, #0x1BC
VPUSH           {D8-D9}
SUB             SP, SP, #4
BL              sub_127EB8
ADD             R0, R4, #0x1EC
ADD             R2, R4, #0x144
VLDM            R0, {S0-S3}
ADD             R0, R4, #0x124
VSTM            R0, {S0-S3}
ADD             R0, R4, #0x1FC
LDM             R0, {R0,R1}
STM             R2, {R0,R1}
MOV             R1, SP
LDR             R0, [SP,#0x28+var_28]
AND             R0, R0, #0xF
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R4]
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
LDR             R6, =off_6D1648
CMP             R0, #0
MOV             R7, #1
BEQ             loc_1988E8
LDR             R0, [SP,#0x28+var_28]
LDR             R2, [R4,#0x3D0]
LDR             R1, [R4,#0x120]
BIC             R3, R2, #1
MOV             R2, R0,LSL#30
BIC             R1, R1, #1
MOV             R12, R0,LSL#29
ORR             R2, R1, R2,LSR#31
ORR             R3, R3, R12,LSR#31
STR             R2, [R4,#0x120]
BICS            R1, R7, R0,LSR#3
STR             R3, [R4,#0x3D0]
STRB            R1, [R4,#0xB7]
BEQ             loc_1986D0
TST             R0, #1
TSTEQ           R2, #1
BEQ             loc_1986D0
LDR             R0, [R6]
BL              sub_1E4614
ADD             R0, R0, #0x108
VLDR            S3, [R4,#0x144]
VLDR            S2, [R4,#0x148]
ADD             R5, R4, #0x14
VLDM            R0, {S0-S1}
MOV             R0, R5
VLDR            S16, [R4,#0x1C8]
VADD.F32        S17, S0, S3
VADD.F32        S18, S1, S2
BL              sub_5A26D0
VSTR            S16, [R5,#0x24]
ADD             R0, R5, #0x1C
ADD             R2, R4, #0x124
VSTM            R0, {S17-S18}
ADD             R1, R4, #0x18
VSTR            S16, [R5,#0xC]
ADD             R5, R5, #4
MOV             R0, R4
VSTM            R5, {S17-S18}
BL              sub_21D630
B               loc_1986F4
ADD             R1, R4, #0x1C0
ADD             R5, R4, #0x14
VLDM            R1, {S16-S18}
MOV             R0, R5
BL              sub_5A26D0
ADD             R0, R5, #0x1C
ADD             R5, R5, #4
VSTM            R0, {S16-S18}
VSTM            R5, {S16-S18}
ADD             R0, R4, #0x18
VLDR            S4, [R4,#0x1DC]
VLDR            S0, [R4,#0x1E0]
VLDR            S5, [R4,#0x1E4]
VLDR            S3, [R4,#0x1E8]
VLDR            S11, =35.0
VLDR            S8, =0.25
VLDR            S9, =0.5
VLDR            S10, =5.0
MOV             R1, #3
VLDM            R0, {S1-S2}
ADD             R0, R4, #0x1CC
MOV             R2, #0
VADD.F32        S4, S4, S1
VADD.F32        S0, S0, S1
VADD.F32        S5, S5, S2
VADD.F32        S3, S3, S2
VSTR            S4, [R4,#0x94]
VSTR            S0, [R4,#0x98]
VSTR            S5, [R4,#0x9C]
VSTR            S3, [R4,#0xA0]
VLDR            S0, [R4,#0x1D4]
VLDR            S3, [R4,#0x1D8]
VLDM            R0, {S4-S5}
VADD.F32        S0, S0, S2
VADD.F32        S3, S3, S2
ADD             R0, R4, #0xA4
VADD.F32        S4, S4, S1
VADD.F32        S5, S5, S1
VSTR            S0, [R4,#0xAC]
VSTR            S3, [R4,#0xB0]
VLDR            S3, =128.0
VSTM            R0, {S4-S5}
ADD             R0, R4, #0x15C
VLDR            S4, [R4,#0x20C]
VADD.F32        S0, S4, S2
VSTR            S0, [R4,#0x17C]
VLDR            S5, [R4,#0x210]
VADD.F32        S0, S5, S2
VSTR            S0, [R4,#0x180]
VLDR            S6, [R4,#0x204]
VADD.F32        S0, S6, S1
VSTR            S0, [R4,#0x184]
VLDR            S7, [R4,#0x208]
VLDR            S0, =0.0
VADD.F32        S12, S7, S1
VSTR            S12, [R4,#0x188]
VSTR            S0, [R4,#0x164]
VSTR            S11, [R4,#0x178]
VSTR            S8, [R4,#0x170]
VSTR            S8, [R4,#0x174]
VSTM            R0, {S1-S2}
ADD             R0, R4, #0x194
VSTM            R0, {S4-S5}
ADD             R0, R4, #0x18C
VSTM            R0, {S6-S7}
ADD             R0, R4, #0x168
VSTM            R0, {S9-S10}
MOV             R0, #2
VLDR            S1, [R4,#0x124]
VADD.F32        S1, S1, S3
VSTR            S1, [R4,#0x134]
VLDR            S1, [R4,#0x128]
VSUB.F32        S1, S1, S3
VSTR            S1, [R4,#0x138]
VLDR            S1, [R4,#0x12C]
VSUB.F32        S1, S1, S3
VSTR            S1, [R4,#0x13C]
VLDR            S1, [R4,#0x130]
VADD.F32        S1, S1, S3
VSTR            S1, [R4,#0x140]
STRB            R0, [R4,#0x3BC]
STRB            R1, [R4,#0x3BD]
STRB            R2, [R4,#0x3BE]
STRB            R7, [R4,#0x3BF]
MOV             R3, #8
STRB            R3, [R4,#0x3C4]
MOV             R3, #5
STRB            R3, [R4,#0x3C5]
MOV             R3, #6
STRB            R3, [R4,#0x3C6]
MOV             R3, #7
STRB            R3, [R4,#0x3C7]
MOV             R3, #9
STRB            R3, [R4,#0x3C8]
MOV             R3, #4
STRB            R1, [R4,#0x3C0]
STRB            R3, [R4,#0x3C1]
STRB            R7, [R4,#0x3C2]
STRB            R0, [R4,#0x3C3]
STRB            R0, [R4,#0x3C9]
STRB            R1, [R4,#0x3CA]
STRB            R7, [R4,#0x3CB]
STRB            R2, [R4,#0x3CC]
STRB            R2, [R4,#0x3CD]
VSTR            S0, [R4,#0xE4]
VSTR            S0, [R4,#0xE8]
VSTR            S0, [R4,#0xEC]
VLDR            S0, =11.25
VLDR            S1, =1.6
VLDR            S2, =-100.0
ADD             R0, R4, #0xCC
MOV             R1, #0x1BC
VSTM            R0, {S0-S2}
LDR             R0, [R4]
LDRH            R1, [R1,R4]
LDR             R2, [R0,#0x38]
MOV             R0, R4
BLX             R2
ADD             R0, R0, #0x38 ; '8'
STR             R0, [R4,#0x214]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #3
BL              sub_19A5D8
LDR             R0, =off_68BBB8
MOV             R3, #1
LDM             R0, {R1,R2}
MOV             R0, R4
BL              sub_1F3CE0
ADD             SP, SP, #4
VPOP            {D8-D9}
POP             {R4-R7,PC}
LDR             R0, [R4,#0x120]
BIC             R0, R0, #1
STR             R0, [R4,#0x120]
B               loc_1986D0
