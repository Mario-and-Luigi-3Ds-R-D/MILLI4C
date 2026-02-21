PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R1, #0xA000
LDR             R7, =off_6CE970
VPUSH           {D8-D9}
SUB             SP, SP, #0x50
LDR             R0, [R7]
BL              sub_52FACC
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
LDREQ           R5, [R7]
BNE             loc_1543BC
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_1540CC
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]
CMP             R0, #0
BNE             loc_1540CC
LDR             R1, =0xA001
LDR             R0, [R7]
BL              sub_52FACC
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             loc_1543BC
LDR             R0, [R7]
BL              sub_5EE764
CMP             R0, #0
NOP
BNE             loc_1543BC
LDR             R0, [R4,#8]
VLDR            S18, [R4,#0x20]
VLDR            S17, [R4,#0x28]
MOV             R2, #0
LDR             R5, [R0,#0x18]
ADD             R1, SP, #0x78+var_70
LDR             R0, [R5]
LDR             R3, [R0,#0x28]
MOV             R0, R5
BLX             R3
ADD             R1, SP, #0x78+var_70
VLDR            S16, =0.0
VLDR            S8, =1.0
ADD             R2, SP, #0x78+var_64
VLDM            R1, {S3-S5}
MOV             R1, #0
VSUB.F32        S2, S18, S3
VSUB.F32        S1, S16, S4
VSUB.F32        S0, S17, S5
VSTR            S2, [SP,#0x78+var_64]
VMUL.F32        S6, S2, S2
VSTR            S1, [SP,#0x78+var_60]
VSTR            S0, [SP,#0x78+var_5C]
VMLA.F32        S6, S1, S1
VMLA.F32        S6, S0, S0
VSQRT.F32       S9, S6
VDIV.F32        S7, S8, S9
VMUL.F32        S1, S1, S7
VMUL.F32        S6, S0, S7
VMUL.F32        S2, S2, S7
VSTR            S1, [SP,#0x78+var_60]
VSTR            S6, [SP,#0x78+var_5C]
LDR             R0, [R4,#0x14]
LDR             R0, [R0,#0x20]
VMOV            S0, R0
STR             R0, [SP,#0x78+var_78]
VMUL.F32        S2, S2, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S6, S0
VADD.F32        S2, S2, S3
VADD.F32        S1, S1, S4
VADD.F32        S0, S0, S5
VSTR            S2, [SP,#0x78+var_64]
VSTR            S1, [SP,#0x78+var_60]
VSTR            S0, [SP,#0x78+var_5C]
LDR             R0, [R4,#0x14]
LDR             R0, [R0,#0x24]
VMOV            S0, R0
STR             R0, [SP,#0x78+var_78]
ADD             R0, R5, #0x1DC
BL              sub_5A2A74
LDR             R0, [R4,#0x14]
LDR             R1, [R0,#0x20]
STR             R1, [SP,#0x78+var_78]
LDR             R0, [R0,#0x24]
VMOV            S0, R1
VMOV            S1, R0
STR             R0, [SP,#0x78+var_78]
LDR             R6, [R7]
VDIV.F32        S17, S0, S1
BL              sub_47FFCC
CMP             R0, #0
LDR             R0, =unk_6E1FD0
BNE             loc_1541F0
LDR             R1, =byte_19CF30
LDRB            R1, [R1,R6]; byte_19CF30
CMP             R1, #0
BEQ             loc_154248
ADD             R1, R0, #0x360
LDR             R3, [R0,#(dword_6E2338 - 0x6E1FD0)]
MOV             R2, #0
VLDM            R1, {S0-S1}
ADD             R1, SP, #0x78+var_58
MOV             R0, R4
BL              sub_156AB8
VMOV.F32        S18, S0
VCVT.S32.F32    S0, S17
LDR             R0, [R7]
MOV             R3, #0
ADD             R1, SP, #0x78+var_58
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
VMOV            R2, S0
BL              sub_4C638C
VCMP.F32        S18, S16
VMRS            APSR_nzcv, FPSCR
MOVNE           R0, #1
MOVEQ           R0, #0
STRB            R0, [R4,#0x3D]
B               loc_154284
ADD             R1, R0, #0x370
ADD             R0, R0, #0x378
VLDM            R1, {S0-S1}
ADD             R1, SP, #0x78+var_58
LDM             R0, {R2,R3}
MOV             R0, R4
BL              sub_156AB8
VCVT.S32.F32    S0, S17
LDR             R0, [R7]
MOV             R3, #0
ADD             R1, SP, #0x78+var_58
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
VMOV            R2, S0
BL              sub_4C638C
MOV             R2, #0
MOV             R1, #2
MOV             R0, R5
BL              sub_14D960
MOV             R1, #1
MOV             R0, R5
BL              sub_14DCB0
LDR             R0, =0xFFE683CC
LDR             R12, [R7]
LDRH            R1, [R5,#0x10]
LDR             R2, =0x30085
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503808
LDR             R6, [R7]
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_1543B0
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R6]; byte_19CF30
CMP             R0, #0
BNE             loc_1543B0
LDR             R0, [R7]
MOV             R1, R5
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xE000
LDR             R7, [R0,#(loc_10E090 - 0x10E000)]
MOV             R0, R7
LDR             R8, [R7,#0x19C]
BL              sub_149BDC
ADD             R6, R4, #0x4B0
STR             R5, [R4,#0x8A4]
LDRB            R1, [R5,#0xF0]
MOV             R0, R6
BL              sub_14C450
ADD             R0, R7, #0x1A0
ADD             R3, R6, #0x3F8
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
MOV             R1, #0
MOV             R0, R6
BL              sub_14C3E8
NOP
NOP
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R8
ADD             R1, R4, #0x4B0
MOV             R0, R7
BL              sub_14C8F8
LDR             R0, =flt_6E2350
LDM             R0, {R1,R2}
LDR             R0, [R0,#(dword_6E2358 - 0x6E2350)]
STR             R0, [SP,#0x78+var_4C]
ADD             R0, SP, #0x78+var_54
STM             R0, {R1,R2}
ADD             R2, SP, #0x78+var_54
LDR             R0, [R4,#0x14]
LDR             R1, [R0,#0x20]
STR             R1, [SP,#0x78+var_78]
LDR             R1, [R0,#0x24]
VLDR            S1, [SP,#0x78+var_78]
VMOV            S2, R1
STR             R1, [SP,#0x78+var_78]
LDR             R0, [R0,#0x28]
MOV             R1, #0
STR             R0, [SP,#0x78+var_78]
VDIV.F32        S0, S1, S2
VMOV            S1, R0
ADD             R0, R4, #0x400
ADD             R0, R0, #0x208
VADD.F32        S0, S0, S1
BL              sub_5A2074
LDR             R1, =off_63FDB0
LDRD            R0, R1, [R1,#(off_63FE18 - 0x63FDB0)]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #0x50 ; 'P'
VPOP            {D8-D9}
POP             {R4-R8,PC}
