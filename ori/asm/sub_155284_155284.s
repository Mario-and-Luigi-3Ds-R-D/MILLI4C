PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6CE970
VPUSH           {D8-D10}
SUB             SP, SP, #0x38
LDR             R0, [R6]
BL              sub_52FC34
LDR             R1, [R4,#8]
MOV             R3, #1
ADD             R2, R4, #0x20 ; ' '
LDR             R5, [R1,#0x18]
ADD             R1, SP, #0x60+var_40
BL              sub_5EC1D4
ADD             R3, SP, #0x60+var_40
LDM             R3, {R0-R2}
ADD             R3, R4, #0x2C ; ','
STM             R3, {R0-R2}
LDR             R0, [R4,#0x14]
LDR             R1, [R0,#0x4C]
STR             R1, [SP,#0x60+var_60]
VLDR            S1, [R5,#0x28]
VLDR            S0, [SP,#0x60+var_3C]
LDR             R0, [R0,#0x50]
VMOV            S18, R1
VSUB.F32        S19, S0, S1
VMOV            S20, R0
STR             R0, [SP,#0x60+var_58]
VMOV.F32        S1, S18
VMOV.F32        S2, S20
VMOV.F32        S0, S19
BL              sub_589714
VMOV.F32        S17, S0
VLDR            S16, =0.0
VLDR            S0, =1.0
VMOV.F32        S2, S20
VMOV.F32        S1, S18
VSTR            S17, [R4,#0x18]
VSTR            S16, [SP,#0x60+var_4C]
VSTR            S0, [SP,#0x60+var_48]
VMOV.F32        S0, S19
ADD             R2, SP, #0x60+var_4C
VSTR            S16, [SP,#0x60+var_44]
MOV             R1, #0
ADD             R0, R5, #0x1DC
BL              sub_5A2954
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #7
MOV             R0, R5
BL              sub_14C548
BL              sub_4635D8
LDR             R2, [R5]
MOV             R1, R0
MOV             R0, R5
LDR             R2, [R2,#0x38]
BLX             R2
VLDR            S0, =360.0
VSTR            S16, [SP,#0x60+var_34]
VSTR            S16, [SP,#0x60+var_30]
VSTR            S0, [SP,#0x60+var_2C]
VMOV.F32        S0, S17
ADD             R2, SP, #0x60+var_34
MOV             R1, #0
ADD             R0, R5, #0x100
BL              sub_5A2298
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xD
MOV             R0, R5
BL              sub_14C548
VMOV.F32        S0, S17
VLDR            S1, =0.5
LDR             R0, [R6]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VLDRCC          S1, =-0.5
VADD.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VCVT.F32.S32    S17, S0
BL              sub_5EE4D4
CMP             R0, #0
LDR             R0, [R4,#0x14]
ADDNE           R0, R0, #0x10
LDRH            R0, [R0,#0xE]
VSTR            S16, [R5,#0x39C]
VMOV            S0, R0
MOV             R0, #0
VCVT.F32.U32    S0, S0
VADD.F32        S0, S0, S17
VSTR            S0, [R5,#0x3A0]
STRB            R0, [R4,#0x38]
STRB            R0, [R4,#0x39]
BL              sub_47FFCC
LDR             R1, =off_63FDB0
LDRD            R0, R1, [R1,#(off_63FE70 - 0x63FDB0)]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #0x38 ; '8'
VPOP            {D8-D10}
POP             {R4-R6,PC}
