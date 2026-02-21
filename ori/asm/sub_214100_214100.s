PUSH            {R4,R5,LR}
MOV             R5, R0
MOV             R4, R1
VPUSH           {D8-D10}
SUB             SP, SP, #0xDC
ADD             R0, SP, #0x100+var_88
BL              sub_47EF50
MOV             R1, R4
ADD             R0, SP, #0x100+var_FC
BL              sub_4800C0
LDR             R0, [SP,#0x100+var_FC]
ADD             R2, R4, #0xC
ADD             R1, SP, #0x100+var_88
STR             R0, [SP,#0x100+var_7C]
LDR             R0, [SP,#0x100+var_F8]
STR             R0, [SP,#0x100+var_6C]
LDR             R0, [SP,#0x100+var_F4]
STR             R0, [SP,#0x100+var_5C]
ADD             R0, SP, #0x100+var_C8
BL              sub_1169FC
VLDR            S7, [SP,#0x100+var_84]
VLDR            S17, [SP,#0x100+var_7C]
VLDR            S18, [SP,#0x100+var_6C]
VLDR            S19, [SP,#0x100+var_5C]
VLDR            S6, [SP,#0x100+var_74]
VLDR            S8, [SP,#0x100+var_64]
VSTR            S7, [SP,#0x100+var_94]
VSTR            S6, [SP,#0x100+var_90]
VSTR            S8, [SP,#0x100+var_8C]
VLDR            S2, [SP,#0x100+var_C8]
VLDR            S1, [SP,#0x100+var_C4]
VLDR            S0, [SP,#0x100+var_C0]
VSUB.F32        S2, S17, S2
VSUB.F32        S1, S18, S1
VSUB.F32        S0, S19, S0
VLDR            S20, =1.0
VLDR            S16, =0.0
VSTR            S2, [SP,#0x100+var_BC]
VMUL.F32        S3, S2, S2
VSTR            S1, [SP,#0x100+var_B8]
VSTR            S0, [SP,#0x100+var_B4]
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S0, S0
VSQRT.F32       S4, S3
VDIV.F32        S5, S20, S4
VMUL.F32        S4, S2, S5
VMUL.F32        S3, S1, S5
VMUL.F32        S5, S0, S5
VSTR            S4, [SP,#0x100+var_BC]
VMUL.F32        S0, S8, S4
VMUL.F32        S1, S7, S3
VMUL.F32        S2, S6, S5
VSTR            S3, [SP,#0x100+var_B8]
VSTR            S5, [SP,#0x100+var_B4]
VMLS.F32        S0, S7, S5
VMLS.F32        S1, S6, S4
VMLS.F32        S2, S8, S3
VMUL.F32        S6, S2, S2
VMLA.F32        S6, S0, S0
VMLA.F32        S6, S1, S1
VCMP.F32        S6, S16
VMRS            APSR_nzcv, FPSCR
LDREQ           R0, =flt_6E23A8
VLDMEQ          R0, {S6-S8}
BEQ             loc_214218
VSQRT.F32       S7, S6
VDIV.F32        S8, S20, S7
VMUL.F32        S6, S2, S8
VMUL.F32        S7, S0, S8
VMUL.F32        S8, S1, S8
ADD             R0, SP, #0x100+var_90
VMUL.F32        S0, S5, S6
VMUL.F32        S1, S4, S7
VMUL.F32        S2, S3, S8
VMLS.F32        S0, S4, S8
VMLS.F32        S1, S3, S6
VMLS.F32        S2, S5, S7
VSTR            S2, [SP,#0x100+var_94]
VMUL.F32        S3, S2, S2
VSTM            R0, {S0-S1}
VMLA.F32        S3, S0, S0
VMLA.F32        S3, S1, S1
VSQRT.F32       S4, S3
VDIV.F32        S3, S20, S4
VMUL.F32        S2, S2, S3
VMUL.F32        S1, S1, S3
VMUL.F32        S0, S0, S3
VSTR            S2, [SP,#0x100+var_94]
VSTM            R0, {S0-S1}
VLDR            S0, [R4,#0x18]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_214298
ADD             R1, SP, #0x100+var_BC
VLDR            S1, =0.71111
ADD             R0, SP, #0x100+var_58
VMUL.F32        S0, S0, S1
BL              sub_4631F0
ADD             R2, SP, #0x100+var_94
ADD             R1, SP, #0x100+var_58
MOV             R0, R2
BL              sub_1169FC
VLDR            S2, [SP,#0x100+var_C8]
VLDR            S1, [SP,#0x100+var_C4]
VLDR            S0, [SP,#0x100+var_C0]
VSUB.F32        S4, S17, S2
VSUB.F32        S3, S18, S1
VSUB.F32        S0, S19, S0
ADD             R0, SP, #0x100+var_90
VLDR            S5, [SP,#0x100+var_94]
VLDM            R0, {S7-S8}
ADD             R0, R5, #0x14
VMUL.F32        S1, S4, S4
VMLA.F32        S1, S3, S3
VMLA.F32        S1, S0, S0
VSQRT.F32       S2, S1
VDIV.F32        S1, S20, S2
VMUL.F32        S2, S0, S1
VMUL.F32        S0, S4, S1
VMUL.F32        S1, S3, S1
VMUL.F32        S4, S7, S2
VMUL.F32        S6, S8, S0
VMUL.F32        S3, S5, S1
VMUL.F32        S10, S17, S0
VMLS.F32        S4, S8, S1
VMLS.F32        S6, S5, S2
VMLS.F32        S3, S7, S0
VMLA.F32        S10, S18, S1
VMUL.F32        S5, S4, S4
VMLA.F32        S10, S19, S2
VMLA.F32        S5, S6, S6
VMLA.F32        S5, S3, S3
VSQRT.F32       S8, S5
VDIV.F32        S7, S20, S8
VMUL.F32        S5, S3, S7
VMUL.F32        S3, S6, S7
VMUL.F32        S4, S4, S7
VMUL.F32        S8, S1, S5
VMUL.F32        S7, S0, S3
VMUL.F32        S6, S2, S4
VMUL.F32        S9, S17, S4
VSTR            S4, [R5]
VSTR            S3, [R5,#4]
VSTR            S5, [R5,#8]
VMLS.F32        S8, S2, S3
VMLS.F32        S7, S1, S4
VMLS.F32        S6, S0, S5
VMLA.F32        S9, S18, S3
VNEG.F32        S3, S10
VSTR            S8, [R5,#0x10]
VMUL.F32        S4, S17, S8
VSTM            R0, {S6-S7}
ADD             R0, R5, #0x20 ; ' '
VMLA.F32        S9, S19, S5
VSTM            R0, {S0-S2}
MOV             R0, #0x400
VMLA.F32        S4, S18, S6
VNEG.F32        S0, S9
VSTR            S0, [R5,#0xC]
VMLA.F32        S4, S19, S7
VNEG.F32        S0, S4
VSTR            S0, [R5,#0x1C]
VSTR            S3, [R5,#0x2C]
BL              sub_485BDC
VLDR            S1, [R4,#0x1C]
VLDR            S2, =0.017453
VMOV.F32        S18, S0
VLDR            S0, =0.5
VMUL.F32        S1, S1, S2
VLDR            S17, [R4,#0x20]
VLDR            S19, [R4,#0x24]
ADD             R4, R5, #0x30 ; '0'
ADD             R1, SP, #0x100+var_EC
ADD             R0, SP, #0x100+var_F0
VMUL.F32        S0, S1, S0
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_462B20
VLDR            S0, [SP,#0x100+var_EC]
VLDR            S2, [SP,#0x100+var_F0]
VMUL.F32        S3, S19, S17
VSTR            S16, [R4,#4]
VDIV.F32        S1, S0, S2
VSUB.F32        S2, S19, S17
VSTR            S16, [R4,#8]
VSTR            S16, [R4,#0xC]
VSTR            S16, [R4,#0x10]
VSTR            S16, [R4,#0x18]
VSTR            S16, [R4,#0x1C]
VSTR            S16, [R4,#0x20]
VSTR            S16, [R4,#0x24]
VLDR            S4, =-1.0
VSTR            S16, [R4,#0x30]
VSTR            S16, [R4,#0x34]
VSTR            S4, [R4,#0x38]
VSTR            S16, [R4,#0x3C]
VDIV.F32        S0, S20, S2
VMUL.F32        S3, S3, S0
VMUL.F32        S0, S19, S0
VDIV.F32        S2, S1, S18
VSTR            S2, [R4]
VSTR            S1, [R4,#0x14]
VSTR            S0, [R4,#0x28]
VSTR            S3, [R4,#0x2C]
ADD             SP, SP, #0xDC
VPOP            {D8-D10}
POP             {R4,R5,PC}
