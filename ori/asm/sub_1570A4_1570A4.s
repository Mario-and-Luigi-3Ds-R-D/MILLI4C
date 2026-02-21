PUSH            {R4,LR}
VPUSH           {D8-D12}
VMOV.F64        D11, D0
VMOV.F32        S24, S2
SUB             SP, SP, #0x18
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0xBA8]
LDR             R4, [R0,#0x18]
CMP             R1, #0
ADDNE           R0, R0, #0x800
ADDNE           R0, R0, #0x3AC
ADDEQ           R0, R0, #0x1C
ADD             R1, R4, #0x28 ; '('
VLDM            R0, {S3-S5}
VLDR            S2, [R4,#0x24]
VLDM            R1, {S0-S1}
VSUB.F32        S18, S3, S2
VMOV.F32        S2, S23
VNEG.F32        S21, S0
VSUB.F32        S19, S4, S0
VSUB.F32        S20, S5, S1
VMOV.F32        S1, S22
VMOV.F32        S0, S21
BL              sub_589714
VSTR            S18, [SP,#0x48+var_48]
VLDR            S16, =0.0
VSTR            S19, [SP,#0x48+var_44]
VSTR            S20, [SP,#0x48+var_40]
VSTR            S16, [SP,#0x48+var_44]
VLDR            S2, [SP,#0x48+var_48]
VMOV.F32        S17, S0
VMOV.F32        S0, S20
VMUL.F32        S1, S2, S2
VLDR            S18, =1.0
MOV             R0, SP
VMLA.F32        S1, S16, S16
VMLA.F32        S1, S0, S0
VSQRT.F32       S3, S1
VDIV.F32        S1, S18, S3
VMUL.F32        S0, S20, S1
VMUL.F32        S3, S16, S1
VMUL.F32        S2, S2, S1
VSTR            S0, [SP,#0x48+var_40]
VMOV.F32        S0, S24
VSTMEA          SP, {S2-S3}
BL              sub_5E0C80
VMOV.F32        S3, S0
VMOV.F32        S0, S17
MOV             R2, SP
MOV             R1, #0
ADD             R0, R4, #0x1DC
VMUL.F32        S3, S3, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S2, S0
VSTR            S3, [SP,#0x48+var_48]
VSTR            S1, [SP,#0x48+var_44]
VSTR            S0, [SP,#0x48+var_40]
VMOV.F32        S0, S17
BL              sub_5A2B20
VSTR            S16, [SP,#0x48+var_3C]
VMOV.F32        S2, S23
VMOV.F32        S1, S22
VMOV.F32        S0, S21
VSTR            S18, [SP,#0x48+var_38]
ADD             R2, SP, #0x48+var_3C
VSTR            S16, [SP,#0x48+var_34]
MOV             R1, #1
ADD             R0, R4, #0x1DC
BL              sub_5A2954
ADD             SP, SP, #0x18
VPOP            {D8-D12}
POP             {R4,PC}
