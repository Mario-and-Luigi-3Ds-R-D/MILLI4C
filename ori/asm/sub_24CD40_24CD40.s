PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #1
VPUSH           {D8-D11}
SUB             SP, SP, #0x20
MOV             R5, R2
ADD             R6, R4, #0x90
STRB            R0, [R4,#0xA0]
ADD             R0, R4, #0x70 ; 'p'
VLDM            R1, {S0-S7}
VSTM            R0, {S0-S7}
ADD             R0, R1, #0x20 ; ' '
LDM             R0, {R0,R2,R3,R12}
STM             R6, {R0,R2,R3,R12}
ADD             R0, R4, #0x40 ; '@'
ADD             R6, R4, #0x60 ; '`'
VLDM            R1, {S0-S7}
VSTM            R0, {S0-S7}
ADD             R0, R1, #0x20 ; ' '
LDM             R0, {R0,R2,R3,R12}
STM             R6, {R0,R2,R3,R12}
ADD             R0, R5, #0x290
VLDR            S17, [R1,#0xC]
VLDR            S19, [R1,#0x1C]
VLDR            S16, [R1,#0x2C]
LDM             R0, {R0,R1}
LDR             R2, =dword_6D1F40
BL              sub_47EADC
VMOV            S0, R0
ADD             R0, R5, #0x298
LDR             R2, =dword_6D1F40
LDM             R0, {R0,R1}
VCVT.F32.S32    S20, S0
BL              sub_47EADC
VMOV            S0, R0
ADD             R0, R5, #0x2A8
LDR             R2, =dword_6D1F40
LDM             R0, {R0,R1}
VCVT.F32.S32    S21, S0
BL              sub_47EADC
VMOV            S0, R0
ADD             R6, R4, #0xA4
MOV             R0, R6
VCVT.F32.S32    S18, S0
BL              sub_5A26D0
VSTR            S17, [R6,#0x1C]
VSTR            S19, [R6,#0x20]
VSTR            S16, [R6,#0x24]
VSTR            S17, [R6,#4]
VSTR            S19, [R6,#8]
VSTR            S16, [R6,#0xC]
VLDR            S22, =0.0
VLDR            S23, =1.0
ADD             R2, SP, #0x50+var_44
VNEG.F32        S0, S19
VMOV.F32        S2, S21
VMOV.F32        S1, S20
VSTM            R2, {S22-S23}
MOV             R1, #1
VSTR            S22, [SP,#0x50+var_3C]
ADD             R0, R4, #0xA4
BL              sub_5A28C4
VMUL.F32        S0, S17, S17
VSTR            S17, [SP,#0x50+var_50]
VSTR            S22, [SP,#0x50+var_4C]
VSTR            S16, [SP,#0x50+var_48]
ADD             R0, SP, #0x50+var_4C
MOV             R2, SP
MOV             R1, #0
VMLA.F32        S0, S22, S22
VMLA.F32        S0, S16, S16
VSQRT.F32       S2, S0
VDIV.F32        S1, S23, S2
VMUL.F32        S2, S17, S1
VMUL.F32        S0, S22, S1
VMUL.F32        S1, S16, S1
VSTR            S2, [SP,#0x50+var_50]
VMUL.F32        S2, S2, S18
VSTM            R0, {S0-S1}
VMUL.F32        S1, S1, S18
VMUL.F32        S0, S0, S18
VSTR            S2, [SP,#0x50+var_50]
VSTM            R0, {S0-S1}
VMOV.F32        S0, S20
ADD             R0, R4, #0xA4
BL              sub_5A2B20
VLDR            S0, [R5,#0x2A4]
VLDR            S2, [R5,#0x2A0]
LDR             R0, =dword_6D1F40
VCVT.F32.S32    S1, S0
VCVT.F32.S32    S0, S2
BL              sub_47EAA4
VSTR            S0, [R4,#0x188]
LDR             R0, [R4,#0xCC]
ADD             R1, SP, #0x50+var_38
VLDR            S0, [R0,#0x38]
MOV             R0, #0xFFFFFF00
REV             R0, R0
STR             R0, [SP,#0x50+var_38]
ADD             R0, R4, #0x14C
BL              sub_4E665C
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8-D11}
POP             {R4-R6,PC}
