PUSH            {R4,R5,LR}
MOV             R4, R0
MOV             R0, #3
VPUSH           {D8-D10}
SUB             SP, SP, #0x24
MOV             R1, #0
ADD             R5, R4, #0x400
STRB            R0, [R4,#0x410]
STRB            R1, [R4,#0x411]
LDRB            R0, [R4,#0x412]
VLDR            S16, =0.0
ADD             R5, R5, #0x44 ; 'D'
STRB            R0, [R4,#0x112]
LDR             R0, [R4,#0x444]
LDR             R1, [R0,#0xE0]
VSTR            S16, [R4,#0x3B8]
ADD             R0, R0, #0x34 ; '4'
STR             R1, [R4,#0x3BC]
LDR             R1, =dword_6D1F40
VLDM            R0, {S17-S18}
MOV             R0, R1
BL              sub_546DB0
VMOV            S0, R0
VLDR            S20, =0.000015259
VSUB.F32        S1, S18, S17
LDR             R0, [R5]
LDR             R1, =dword_6D1F40
VCVT.F32.U32    S0, S0
VLDR            S19, [R0,#0x50]
VMUL.F32        S0, S0, S20
VMUL.F32        S0, S0, S1
VADD.F32        S18, S17, S0
VLDR            S17, [R0,#0x4C]
MOV             R0, R1
BL              sub_546DB0
VMOV            S0, R0
VSUB.F32        S1, S19, S17
VSTR            S16, [SP,#0x48+var_48]
ADD             R0, SP, #0x48+var_44
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VMUL.F32        S0, S0, S1
VLDR            S1, =0.017453
VADD.F32        S0, S17, S0
VLDR            S17, =1000.0
VSTM            R0, {S16-S17}
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S20, S0, S1
VMOV.F32        S0, S20
BL              sub_464318
VMOV.F32        S19, S0
VMOV.F32        S0, S20
BL              sub_464380
VMUL.F32        S1, S16, S19
VMUL.F32        S2, S19, S17
ADD             R2, SP, #0x48+var_3C
MOV             R1, #1
VMLA.F32        S1, S0, S17
VMLS.F32        S2, S16, S0
VLDR            S17, =1.0
VSTR            S1, [SP,#0x48+var_48]
VSTR            S2, [SP,#0x48+var_40]
LDR             R0, [R5]
VMOV.F32        S2, S18
VLDR            S0, [R0,#0xE0]
VLDR            S1, [R0,#0x30]
ADD             R0, R4, #0x1F8
VSTM            R2, {S16-S17}
VADD.F32        S1, S0, S1
VSTR            S16, [SP,#0x48+var_34]
VLDR            S0, [R4,#0x44]
VNEG.F32        S0, S0
BL              sub_5A2840
VMOV.F32        S0, S18
MOV             R2, SP
MOV             R1, #0
ADD             R0, R4, #0x1F8
BL              sub_5A25D0
LDR             R0, [R5]
ADD             R0, R0, #0xE4
VLDM            R0, {S0-S1}
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
VMOV.F32        S18, S0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
TST             R0, #1
VLDREQ          S17, =-1.0
VLDR            S0, =36000.0
VSTR            S16, [SP,#0x48+var_30]
VSTR            S16, [SP,#0x48+var_2C]
VMUL.F32        S1, S17, S0
VMOV.F32        S0, S18
ADD             R1, SP, #0x48+var_30
ADD             R0, R4, #0x11C
VSTR            S1, [SP,#0x48+var_28]
BL              sub_5A29E4
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8-D10}
POP             {R4,R5,PC}
