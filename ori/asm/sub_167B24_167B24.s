PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
VPUSH           {D8-D10}
SUB             SP, SP, #0xE0
LDR             R0, [R0]
LDRB            R1, [R0,#0x3E]
CMP             R1, #0
ADDEQ           R8, R4, #0x15000
ADDEQ           R8, R8, #0x24 ; '$'
BEQ             loc_167B68
LDRSB           R0, [R0,#0x3C]
RSB             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#2
ADD             R0, R4, R0,LSL#2
ADD             R8, R0, #0x15000
ADD             R8, R8, #0x24 ; '$'
ADD             R6, R4, #0x16000
ADD             R6, R6, #0xCF0
VLDR            S19, =10.0
LDR             R0, [R6]
VLDR            S16, =0.0
VLDR            S17, =1.0
CMP             R0, #0
BNE             loc_167C20
ADD             R0, R4, #0xCC
BL              sub_59CA44
ADD             R5, R0, #0x1A8
STR             R0, [R6]
LDR             R0, =0x401
BL              sub_485BDC
VMOV.F32        S18, S0
MOV             R7, #1
VLDR            S0, =8.8889
ADD             R1, SP, #0x110+var_F0
ADD             R0, SP, #0x110+var_F4
BL              sub_462B20
VLDR            S0, [SP,#0x110+var_F0]
VLDR            S2, [SP,#0x110+var_F4]
VSTR            S16, [R5,#4]
VSTR            S16, [R5,#8]
VDIV.F32        S1, S0, S2
VSTR            S16, [R5,#0xC]
VSTR            S16, [R5,#0x10]
VSTR            S16, [R5,#0x18]
VSTR            S16, [R5,#0x1C]
VSTR            S16, [R5,#0x20]
VSTR            S16, [R5,#0x24]
VLDR            S0, =-1.0
VSTR            S16, [R5,#0x30]
VSTR            S16, [R5,#0x34]
VSTR            S0, [R5,#0x38]
VSTR            S16, [R5,#0x3C]
VLDR            S2, =1.001
VLDR            S3, =10.01
ADD             R0, R5, #0x28 ; '('
VDIV.F32        S4, S1, S18
MOV             R1, R7
VSTR            S4, [R5]
VSTR            S1, [R5,#0x14]
VSTM            R0, {S2-S3}
MOV             R0, R5
BL              sub_4636D8
ADD             R5, R4, #0x10000
ADD             R5, R5, #0x3D00
LDRH            R0, [R5,#4]
CMP             R0, #0xBC
BEQ             loc_167D18
LDR             R2, [R4,#0xC0]
ADD             R3, SP, #0x110+var_CC
VMOV.F32        S18, S17
LDR             R0, [R2,#0x98]
LDR             R1, [R2,#0xA8]
LDR             R2, [R2,#0xB8]
STM             R3, {R0-R2}
LDR             R0, [R4,#0xC0]
BL              sub_5E81A8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x110+var_E0]
ADD             R0, SP, #0x110+var_E8
STM             R0, {R1,R2}
LDR             R0, [R4,#0xC0]
BL              sub_5E8178
LDM             R0, {R1,R2}
ADD             R3, SP, #0x110+var_BC
LDR             R0, [R0,#8]
VMOV            S0, R1
VMOV            S1, R2
STR             R0, [SP,#0x110+var_B4]
STM             R3, {R1,R2}
VMOV            S2, R0
VLDR            S7, [SP,#0x110+var_E8]
VLDR            S8, [SP,#0x110+var_CC]
VLDR            S9, [SP,#0x110+var_E4]
VLDR            S10, [SP,#0x110+var_C8]
VSUB.F32        S3, S7, S8
VLDR            S5, [SP,#0x110+var_E0]
VLDR            S6, [SP,#0x110+var_C4]
VSUB.F32        S11, S9, S10
LDRH            R0, [R5,#4]
VSUB.F32        S4, S5, S6
CMP             R0, #0xA1
VMUL.F32        S13, S2, S3
VMUL.F32        S12, S0, S11
VMUL.F32        S14, S1, S4
VMLS.F32        S13, S0, S4
VMLS.F32        S12, S1, S3
VMLS.F32        S14, S2, S11
VMUL.F32        S2, S13, S4
VMUL.F32        S0, S12, S3
VMUL.F32        S1, S14, S11
VMLS.F32        S2, S12, S11
VMLS.F32        S0, S14, S4
VMLS.F32        S1, S13, S3
VMUL.F32        S3, S2, S2
VMLA.F32        S3, S0, S0
VMLA.F32        S3, S1, S1
VSQRT.F32       S11, S3
VDIV.F32        S4, S17, S11
VMUL.F32        S2, S2, S4
VMUL.F32        S3, S0, S4
VMUL.F32        S1, S1, S4
BEQ             loc_167E90
B               loc_167EA4
LDR             R2, [R4,#0xC0]
LDR             R0, [R2,#0x98]
LDR             R1, [R2,#0xA8]
LDR             R2, [R2,#0xB8]
STMEA           SP, {R0-R2}
LDR             R0, [R4,#0xC0]
BL              sub_5E81A8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x110+var_C4]
ADD             R0, SP, #0x110+var_CC
STM             R0, {R1,R2}
LDR             R0, [R4,#0xC0]
BL              sub_5E8178
LDM             R0, {R1,R2}
ADD             R3, SP, #0x110+var_50
LDR             R0, [R0,#8]
VMOV            S7, R1
VMOV            S8, R2
STR             R0, [SP,#0x110+var_48]
STM             R3, {R1,R2}
ADD             R3, SP, #0x110+var_C8
VLDR            S4, [SP,#0x110+var_10C]
VLDR            S3, [SP,#0x110+var_108]
VLDR            S2, [SP,#0x110+var_CC]
VLDR            S5, [SP,#0x110+var_110]
VMOV            S6, R0
VLDM            R3, {S0-S1}
VSUB.F32        S2, S2, S5
ADD             R2, SP, #0x110+var_44
MOV             R0, #0
VSUB.F32        S0, S0, S4
VSUB.F32        S1, S1, S3
MOV             R1, #0x3F800000
VMUL.F32        S4, S6, S2
VMUL.F32        S5, S7, S0
VMUL.F32        S3, S8, S1
VMLS.F32        S4, S7, S1
VMLS.F32        S5, S8, S2
VMLS.F32        S3, S6, S0
VSTM            R2, {S3-S5}
STR             R0, [SP,#0x110+var_B4]
STR             R1, [SP,#0x110+var_B8]
STR             R0, [SP,#0x110+var_B0]
VSTR            S2, [SP,#0x110+var_AC]
STRD            R0, R1, [SP,#0x110+var_A8]
STR             R0, [SP,#0x110+var_A0]
VSTR            S0, [SP,#0x110+var_9C]
STR             R0, [SP,#0x110+var_98]
STRD            R0, R1, [SP,#0x110+var_94]
VSTR            S1, [SP,#0x110+var_8C]
VLDR            S0, =23.467
ADD             R1, SP, #0x110+var_44
ADD             R0, SP, #0x110+var_100
BL              sub_4631F0
ADD             R2, SP, #0x110+var_B8
ADD             R1, SP, #0x110+var_100
ADD             R0, SP, #0x110+var_80
BL              sub_141F30
VLDR            S0, [SP,#0x110+var_74]
VLDR            S5, [SP,#0x110+var_110]
VLDR            S2, [SP,#0x110+var_64]
VLDR            S4, [SP,#0x110+var_10C]
VLDR            S1, [SP,#0x110+var_54]
VLDR            S3, [SP,#0x110+var_108]
VADD.F32        S0, S0, S5
VADD.F32        S2, S2, S4
VADD.F32        S1, S1, S3
ADD             R3, SP, #0x110+var_CC
ADD             R2, SP, #0x110+var_50
MOV             R1, SP
VSTR            S0, [SP,#0x110+var_CC]
VSTR            S2, [SP,#0x110+var_C8]
VSTR            S1, [SP,#0x110+var_C4]
LDR             R0, [R6]
ADD             R0, R0, #0x148
BL              sub_463794
LDR             R1, [R6]
MOV             R2, #0
CMP             R1, #0
BNE             loc_167F14
LDR             R0, [R4,#0x210]
LDR             R1, [R0,#0xA4]
B               loc_167F14
DCD off_6D1648
DCFS 10.0
DCFS 0.0
DCFS 1.0
DCD 0x401
DCFS 8.8889
DCFS -1.0
DCFS 1.001
DCFS 10.01
DCFS 23.467
VSUB.F32        S11, S6, S5
VLDR            S0, =0.0017544
VLDR            S4, =1.625
VMUL.F32        S0, S11, S0
VMUL.F32        S18, S0, S4
VLDR            S0, =320.0
ADD             R0, SP, #0x110+var_E8
ADD             R3, SP, #0x110+var_E8
VMUL.F32        S4, S2, S0
VMUL.F32        S2, S1, S0
VMUL.F32        S3, S3, S0
ADD             R2, SP, #0x110+var_BC
ADD             R1, SP, #0x110+var_CC
VMUL.F32        S0, S4, S18
VMUL.F32        S2, S2, S18
VMUL.F32        S1, S3, S18
VADD.F32        S3, S8, S0
VADD.F32        S6, S6, S2
VADD.F32        S2, S5, S2
VADD.F32        S4, S10, S1
VADD.F32        S0, S7, S0
VADD.F32        S1, S9, S1
VSTR            S6, [SP,#0x110+var_C4]
VSTM            R0, {S0-S2}
ADD             R0, SP, #0x110+var_CC
VSTM            R0, {S3-S4}
LDR             R0, [R6]
ADD             R0, R0, #0x148
BL              sub_463794
LDR             R1, [R6]
MOV             R2, #0
CMP             R1, #0
BEQ             loc_167E5C
LDR             R0, [R4,#0x210]
BL              sub_4AC814
LDR             R7, =0x3FFF
MOV             R3, #0
MOV             R1, R3
MOV             R2, R7
MOV             R0, R8
BL              sub_5CE5D8
LDR             R0, =0x15003
LDRB            R0, [R0,R4]
CMP             R0, #0
BEQ             loc_1680A8
ADD             R5, R4, #0x16C00
ADD             R5, R5, #0xF4
LDR             R0, [R5]
CMP             R0, #0
BNE             loc_16806C
ADD             R0, R4, #0xCC
BL              sub_59CA44
ADD             R6, R0, #0x1A8
STR             R0, [R5]
MOV             R0, #0x400
BL              sub_11C418
RSB             R0, R0, #0
ADD             R0, R0, R0,LSR#31
MOV             R0, R0,ASR#1
VMOV            S0, R0
MOV             R0, #0x400
VCVT.F32.S32    S18, S0
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
MOV             R0, #0x400
VCVT.F32.U32    S20, S0
BL              sub_485B0C
RSB             R0, R0, #0
VSUB.F32        S5, S20, S18
ADD             R0, R0, R0,LSR#31
VADD.F32        S6, S20, S18
MOV             R0, R0,ASR#1
VMOV            S0, R0
VLDR            S3, =2.0
VSTR            S16, [R6,#4]
VSTR            S16, [R6,#8]
VSTR            S16, [R6,#0x10]
VSTR            S16, [R6,#0x18]
VCVT.F32.S32    S2, S0
VDIV.F32        S7, S17, S5
VSTR            S16, [R6,#0x20]
VSTR            S16, [R6,#0x24]
VSTR            S16, [R6,#0x30]
VSTR            S16, [R6,#0x34]
VLDR            S0, =0.011111
VNMUL.F32       S6, S6, S7
VLDR            S1, =0.11111
ADD             R0, R6, #0x28 ; '('
VNEG.F32        S4, S2
MOV             R1, #1
VDIV.F32        S5, S17, S4
VMUL.F32        S4, S7, S3
VMUL.F32        S3, S5, S3
VNMUL.F32       S2, S2, S5
VSTR            S4, [R6]
VSTR            S6, [R6,#0xC]
VSTR            S3, [R6,#0x14]
VSTR            S2, [R6,#0x1C]
VSTM            R0, {S0-S1}
ADD             R0, R6, #0x38 ; '8'
VSTM            R0, {S16-S17}
MOV             R0, R6
BL              sub_4636D8
VSTR            S16, [SP,#0x110+var_100]
VSTR            S16, [SP,#0x110+var_FC]
VSTR            S19, [SP,#0x110+var_F8]
ADD             R1, SP, #0x110+var_F4
ADD             R3, SP, #0x110+var_E8
VSTM            R1, {S16-S17}
ADD             R2, SP, #0x110+var_F4
VSTR            S16, [SP,#0x110+var_EC]
VSTR            S16, [SP,#0x110+var_E8]
VSTR            S16, [SP,#0x110+var_E4]
VSTR            S16, [SP,#0x110+var_E0]
LDR             R0, [R5]
ADD             R1, SP, #0x110+var_100
ADD             R0, R0, #0x148
BL              sub_463794
LDR             R1, [R5]
MOV             R2, #0
CMP             R1, #0
LDREQ           R0, [R4,#0x210]
LDREQ           R1, [R0,#0xA4]
LDR             R0, [R4,#0x210]
BL              sub_4AC814
ADD             SP, SP, #0xE0
MOV             R2, R7
VPOP            {D8-D10}
MOV             R0, R8
MOV             R3, #0
MOV             R1, #1
POP             {R4-R8,LR}
B               sub_5CE5D8
ADD             SP, SP, #0xE0
VPOP            {D8-D10}
POP             {R4-R8,PC}
