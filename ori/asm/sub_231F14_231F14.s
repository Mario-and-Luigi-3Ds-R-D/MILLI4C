PUSH            {R4,R5,LR}
MOV             R4, R0
MOV             R0, R1
VPUSH           {D8-D11}
SUB             SP, SP, #0x7C
MOV             R5, R2
BL              sub_485BDC
VMOV.F32        S18, S0
VLDR            S0, [R5,#0x98]
VLDR            S1, =0.5
ADD             R1, SP, #0xA8+var_94
ADD             R0, SP, #0xA8+var_9C
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_462B20
VLDR            S1, [SP,#0xA8+var_9C]
VLDR            S2, [SP,#0xA8+var_94]
ADD             R1, R5, #0x90
LDR             R0, [R5]
VDIV.F32        S0, S1, S2
VLDM            R1, {S1-S2}
MOV             R1, SP
LDR             R2, [R0,#0x30]
MOV             R0, R5
VMUL.F32        S16, S1, S0
VMUL.F32        S17, S2, S0
VMUL.F32        S19, S16, S18
VMUL.F32        S21, S17, S18
BLX             R2
LDR             R0, [R5]
ADD             R1, SP, #0xA8+var_44
LDR             R2, [R0,#0x38]
MOV             R0, R5
BLX             R2
VLDR            S2, [SP,#0xA8+var_44]
VLDR            S5, [SP,#0xA8+var_A8]
VLDR            S0, [SP,#0xA8+var_3C]
VLDR            S3, [SP,#0xA8+var_A0]
VSUB.F32        S2, S2, S5
VLDR            S4, [SP,#0xA8+var_40]
VLDR            S1, [SP,#0xA8+var_A4]
VSUB.F32        S0, S0, S3
VLDR            S6, =1.0
VSUB.F32        S1, S4, S1
VLDR            S8, [R5,#0x60]
VLDR            S9, [R5,#0x5C]
VLDR            S7, [R5,#0x58]
VMUL.F32        S3, S2, S2
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S0, S0
VSQRT.F32       S4, S3
VDIV.F32        S3, S6, S4
VMUL.F32        S4, S1, S3
VMUL.F32        S1, S0, S3
VMUL.F32        S5, S2, S3
VMUL.F32        S3, S4, S8
VMUL.F32        S2, S1, S7
VMUL.F32        S0, S5, S9
VMLS.F32        S3, S1, S9
VMLS.F32        S2, S5, S8
VMLS.F32        S0, S4, S7
VMUL.F32        S7, S3, S3
VMLA.F32        S7, S2, S2
VMLA.F32        S7, S0, S0
VSQRT.F32       S8, S7
VDIV.F32        S7, S6, S8
VLDR            S6, [R5,#0x94]
VMUL.F32        S9, S1, S6
VMUL.F32        S8, S4, S6
VMUL.F32        S13, S2, S7
VMUL.F32        S12, S3, S7
VMUL.F32        S14, S0, S7
VLDR            S3, [R5,#0x90]
VMUL.F32        S7, S5, S6
VMUL.F32        S0, S5, S3
VMUL.F32        S2, S4, S3
VMUL.F32        S3, S1, S3
VMUL.F32        S15, S13, S1
VMUL.F32        S20, S12, S4
VMUL.F32        S18, S14, S5
VMUL.F32        S6, S14, S19
VMLS.F32        S15, S14, S4
VMLS.F32        S20, S13, S5
VMLS.F32        S18, S12, S1
VMUL.F32        S4, S12, S19
VMUL.F32        S5, S13, S19
VMUL.F32        S1, S15, S16
VMUL.F32        S11, S20, S16
VMUL.F32        S10, S18, S16
VADD.F32        S16, S0, S1
VADD.F32        S22, S3, S11
VADD.F32        S19, S2, S10
VSTR            S16, [R4]
VSUB.F32        S16, S16, S4
VSTR            S19, [R4,#4]
VSTR            S22, [R4,#8]
VSTR            S16, [R4]
VSUB.F32        S16, S19, S5
VSUB.F32        S19, S2, S10
VSTR            S16, [R4,#4]
VSUB.F32        S16, S22, S6
VSUB.F32        S22, S3, S11
VSTR            S16, [R4,#8]
VSUB.F32        S16, S0, S1
VSTR            S16, [R4,#0xC]
VSTR            S19, [R4,#0x10]
VSTR            S22, [R4,#0x14]
VLDR            S16, [R4,#0xC]
VSUB.F32        S16, S16, S4
VSUB.F32        S19, S2, S10
VSUB.F32        S22, S3, S11
ADD             R0, R4, #0x24 ; '$'
VSTR            S16, [R4,#0xC]
VLDR            S16, [R4,#0x10]
VSUB.F32        S16, S16, S5
VSTR            S16, [R4,#0x10]
VLDR            S16, [R4,#0x14]
VSUB.F32        S16, S16, S6
VSTR            S16, [R4,#0x14]
VSUB.F32        S16, S0, S1
VADD.F32        S0, S0, S1
VADD.F32        S1, S2, S10
VADD.F32        S2, S3, S11
VMUL.F32        S3, S14, S21
VSTR            S16, [R4,#0x18]
VSTR            S19, [R4,#0x1C]
VSTR            S22, [R4,#0x20]
VLDR            S16, [R4,#0x18]
VADD.F32        S16, S16, S4
VSTR            S16, [R4,#0x18]
VLDR            S16, [R4,#0x1C]
VADD.F32        S16, S16, S5
VSTR            S16, [R4,#0x1C]
VLDR            S16, [R4,#0x20]
VADD.F32        S16, S16, S6
VSTR            S16, [R4,#0x20]
VSTM            R0, {S0-S2}
VMUL.F32        S2, S12, S21
VLDR            S0, [R4,#0x24]
ADD             R0, R4, #0x34 ; '4'
VMUL.F32        S1, S13, S21
VADD.F32        S0, S0, S4
VMUL.F32        S4, S18, S17
VSTR            S0, [R4,#0x24]
VLDR            S0, [R4,#0x28]
VADD.F32        S10, S8, S4
VADD.F32        S0, S0, S5
VMUL.F32        S5, S20, S17
VSTR            S0, [R4,#0x28]
VLDR            S0, [R4,#0x2C]
VADD.F32        S11, S9, S5
VADD.F32        S0, S0, S6
VSTR            S0, [R4,#0x2C]
VMUL.F32        S0, S15, S17
VADD.F32        S6, S7, S0
VSTR            S6, [R4,#0x30]
VSTM            R0, {S10-S11}
VSUB.F32        S11, S9, S5
VLDR            S6, [R4,#0x30]
VSUB.F32        S10, S8, S4
ADD             R0, R4, #0x40 ; '@'
VSUB.F32        S6, S6, S2
VSTR            S6, [R4,#0x30]
VLDR            S6, [R4,#0x34]
VSUB.F32        S6, S6, S1
VSTR            S6, [R4,#0x34]
VLDR            S6, [R4,#0x38]
VSUB.F32        S6, S6, S3
VSTR            S6, [R4,#0x38]
VSUB.F32        S6, S7, S0
VSTR            S6, [R4,#0x3C]
VSTM            R0, {S10-S11}
VSUB.F32        S10, S8, S4
VLDR            S6, [R4,#0x3C]
VSUB.F32        S11, S9, S5
VSUB.F32        S6, S6, S2
VSTR            S6, [R4,#0x3C]
VLDR            S6, [R4,#0x40]
VSUB.F32        S6, S6, S1
VSTR            S6, [R4,#0x40]
VLDR            S6, [R4,#0x44]
VSUB.F32        S6, S6, S3
VSTR            S6, [R4,#0x44]
VSUB.F32        S6, S7, S0
ADD             R0, R4, #0x4C ; 'L'
VADD.F32        S0, S7, S0
VADD.F32        S5, S9, S5
VADD.F32        S4, S8, S4
VSTR            S6, [R4,#0x48]
VSTM            R0, {S10-S11}
ADD             R0, R4, #0x58 ; 'X'
VLDR            S6, [R4,#0x48]
VADD.F32        S6, S6, S2
VSTR            S6, [R4,#0x48]
VLDR            S6, [R4,#0x4C]
VADD.F32        S6, S6, S1
VSTR            S6, [R4,#0x4C]
VLDR            S6, [R4,#0x50]
VADD.F32        S6, S6, S3
VSTR            S6, [R4,#0x50]
VSTR            S0, [R4,#0x54]
VSTM            R0, {S4-S5}
VLDR            S0, [R4,#0x54]
VADD.F32        S0, S0, S2
VSTR            S0, [R4,#0x54]
VLDR            S0, [R4,#0x58]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x58]
VLDR            S0, [R4,#0x5C]
VADD.F32        S0, S0, S3
VSTR            S0, [R4,#0x5C]
VLDR            S0, [R4]
VLDR            S1, [SP,#0xA8+var_A8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4]
VLDR            S0, [R4,#4]
VLDR            S1, [SP,#0xA8+var_A4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#4]
VLDR            S0, [R4,#8]
VLDR            S1, [SP,#0xA8+var_A0]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#8]
VLDR            S0, [R4,#0xC]
VLDR            S1, [SP,#0xA8+var_A8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0xC]
VLDR            S0, [R4,#0x10]
VLDR            S1, [SP,#0xA8+var_A4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x10]
VLDR            S0, [R4,#0x14]
VLDR            S1, [SP,#0xA8+var_A0]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x14]
VLDR            S0, [R4,#0x18]
VLDR            S1, [SP,#0xA8+var_A8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x18]
VLDR            S0, [R4,#0x1C]
VLDR            S1, [SP,#0xA8+var_A4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x1C]
VLDR            S0, [R4,#0x20]
VLDR            S1, [SP,#0xA8+var_A0]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x20]
VLDR            S0, [R4,#0x24]
VLDR            S1, [SP,#0xA8+var_A8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x24]
VLDR            S0, [R4,#0x28]
VLDR            S1, [SP,#0xA8+var_A4]
VADD.F32        S0, S0, S1
B               loc_232320
DCFS 0.5
DCFS 0.71111
DCFS 1.0
VSTR            S0, [R4,#0x28]
VLDR            S0, [R4,#0x2C]
VLDR            S1, [SP,#0xA8+var_A0]
ADD             R3, R4, #0x30 ; '0'
MOV             R2, R4
VADD.F32        S0, S0, S1
ADD             R1, R4, #0x24 ; '$'
ADD             R0, R4, #0x60 ; '`'
VSTR            S0, [R4,#0x2C]
VLDR            S0, [R4,#0x30]
VLDR            S1, [SP,#0xA8+var_A8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x30]
VLDR            S0, [R4,#0x34]
VLDR            S1, [SP,#0xA8+var_A4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x34]
VLDR            S0, [R4,#0x38]
VLDR            S1, [SP,#0xA8+var_A0]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x38]
VLDR            S0, [R4,#0x3C]
VLDR            S1, [SP,#0xA8+var_A8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x3C]
VLDR            S0, [R4,#0x40]
VLDR            S1, [SP,#0xA8+var_A4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x40]
VLDR            S0, [R4,#0x44]
VLDR            S1, [SP,#0xA8+var_A0]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x44]
VLDR            S0, [R4,#0x48]
VLDR            S1, [SP,#0xA8+var_A8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x48]
VLDR            S0, [R4,#0x4C]
VLDR            S1, [SP,#0xA8+var_A4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x4C]
VLDR            S0, [R4,#0x50]
VLDR            S1, [SP,#0xA8+var_A0]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x50]
VLDR            S0, [R4,#0x54]
VLDR            S1, [SP,#0xA8+var_A8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x54]
VLDR            S0, [R4,#0x58]
VLDR            S1, [SP,#0xA8+var_A4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x58]
VLDR            S0, [R4,#0x5C]
VLDR            S1, [SP,#0xA8+var_A0]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x5C]
BL              sub_195618
ADD             R3, R4, #0x48 ; 'H'
ADD             R2, R4, #0x18
ADD             R1, R4, #0xC
ADD             R0, R4, #0x7C ; '|'
BL              sub_195618
ADD             R3, R4, #0x3C ; '<'
ADD             R2, R4, #0xC
MOV             R1, R4
ADD             R0, R4, #0x98
BL              sub_195618
ADD             R3, R4, #0x48 ; 'H'
ADD             R2, R4, #0x24 ; '$'
ADD             R1, R4, #0x18
ADD             R0, R4, #0xB4
BL              sub_195618
ADD             R3, R4, #0x18
ADD             R2, R4, #0x24 ; '$'
MOV             R1, R4
ADD             R0, R4, #0xD0
BL              sub_195618
ADD             R3, R4, #0x3C ; '<'
ADD             R2, R4, #0x30 ; '0'
ADD             R1, R4, #0x54 ; 'T'
ADD             R0, R4, #0xEC
BL              sub_195618
ADD             SP, SP, #0x7C ; '|'
VPOP            {D8-D11}
POP             {R4,R5,PC}
