PUSH            {R4-R9,LR}
MOV             R6, R0
LDR             R0, =off_6CE970
VPUSH           {D8-D10}
SUB             SP, SP, #0x64
LDR             R0, [R0]
ADD             R4, R0, #0x10C000
ADD             R8, R0, #0x10C000
ADD             R5, R0, #0x10C000
ADD             R7, R0, #0x10C000
ADD             R4, R4, #0x5E0
ADD             R8, R8, #0x5B0
ADD             R5, R5, #0x620
ADD             R7, R7, #0x580
BL              sub_528E64
MOV             R1, R0
MOV             R0, SP
BL              sub_1DB9F8
MOV             R1, SP
MOV             R0, R1
BL              sub_4800C0
ADD             R0, R7, #0x10
LDR             R9, =flt_6E34B0
LDM             R0, {R1,R2}
ADD             R3, R6, #0x3C ; '<'
LDR             R0, [R7,#(dword_10C598 - 0x10C580)]
VMOV            S1, R1
VMOV            S2, R2
STR             R0, [R6,#0x44]
STM             R3, {R1,R2}
VMOV            S3, R0
VLDR            S0, [R9]
MOV             R0, R7
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VLDR            S3, [SP,#0x98+var_98]
VADD.F32        S1, S3, S1
VSTR            S1, [SP,#0x98+var_98]
VLDR            S1, [SP,#0x98+var_94]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x98+var_94]
VLDR            S1, [SP,#0x98+var_90]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x98+var_90]
VLDR            S0, [R9,#(flt_6E34B4 - 0x6E34B0)]
BL              sub_5E0C80
VLDR            S3, [SP,#0x98+var_98]
ADD             R0, R7, #0x20 ; ' '
VADD.F32        S0, S3, S0
VSTR            S0, [SP,#0x98+var_98]
VLDR            S0, [SP,#0x98+var_94]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x98+var_94]
VLDR            S0, [SP,#0x98+var_90]
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0x98+var_90]
VLDR            S0, [R9,#(flt_6E34B8 - 0x6E34B0)]
BL              sub_5E0C80
VLDR            S3, [SP,#0x98+var_98]
VADD.F32        S0, S3, S0
VSTR            S0, [SP,#0x98+var_98]
VLDR            S0, [SP,#0x98+var_94]
VADD.F32        S0, S0, S1
VLDR            S1, =2.0
VSTR            S0, [SP,#0x98+var_94]
VLDR            S0, [SP,#0x98+var_90]
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0x98+var_90]
LDRD            R0, R1, [SP,#0x98+var_98]
VMOV            R2, S0
STRD            R0, R1, [SP,#0x98+var_60]
VSTR            S0, [SP,#0x98+var_58]
VMOV            S0, R2
VLDR            S2, [R9,#(flt_6E34C0 - 0x6E34B0)]
ADD             R2, SP, #0x98+var_60
MOV             R1, R7
ADD             R0, SP, #0x98+var_54
VMLS.F32        S0, S2, S1
VSTR            S0, [SP,#0x98+var_58]
BL              sub_1169FC
ADD             R1, SP, #0x98+var_54
VLDR            S7, [R4,#(dword_10C614 - 0x10C5E0)]
VLDR            S8, [R4,#(dword_10C5E4 - 0x10C5E0)]
VLDR            S9, [R4,#(dword_10C5F4 - 0x10C5E0)]
VLDR            S19, [R4,#(dword_10C604 - 0x10C5E0)]
VLDR            S0, [SP,#0x98+var_4C]
VLDR            S13, [R4,#(dword_10C618 - 0x10C5E0)]
VLDR            S5, [R4,#(dword_10C61C - 0x10C5E0)]
VLDR            S20, [R4,#(dword_10C610 - 0x10C5E0)]
VLDR            S10, [R4,#(dword_10C5E8 - 0x10C5E0)]
VLDR            S6, [R4,#(dword_10C5EC - 0x10C5E0)]
VLDR            S18, [R4]
VLDR            S11, [R4,#(dword_10C5F8 - 0x10C5E0)]
VLDR            S4, [R4,#(dword_10C5FC - 0x10C5E0)]
VLDR            S15, [R4,#(dword_10C5F0 - 0x10C5E0)]
VLDR            S12, [R4,#(dword_10C608 - 0x10C5E0)]
VLDR            S3, [R4,#(dword_10C60C - 0x10C5E0)]
VLDR            S14, [R4,#(dword_10C600 - 0x10C5E0)]
VLDR            S16, =1.0
VNEG.F32        S17, S0
VLDM            R1, {S1-S2}
MOV             R2, SP
MOV             R1, R7
ADD             R0, SP, #0x98+var_78
VMLA.F32        S5, S20, S1
VMUL.F32        S7, S7, S2
VMUL.F32        S8, S8, S2
VMUL.F32        S9, S9, S2
VMUL.F32        S2, S19, S2
VMLA.F32        S6, S18, S1
VMLA.F32        S4, S15, S1
VMLA.F32        S3, S14, S1
VMLA.F32        S7, S13, S0
VMLA.F32        S8, S10, S0
VMLA.F32        S9, S11, S0
VMLA.F32        S2, S12, S0
VADD.F32        S5, S7, S5
VADD.F32        S1, S8, S6
VADD.F32        S4, S9, S4
VADD.F32        S2, S2, S3
VDIV.F32        S0, S16, S5
VMUL.F32        S1, S1, S0
VMUL.F32        S3, S4, S0
VMUL.F32        S0, S2, S0
VSTR            S1, [SP,#0x98+var_54]
VSTR            S3, [SP,#0x98+var_50]
VSTR            S0, [SP,#0x98+var_4C]
BL              sub_1169FC
VLDR            S7, [R4,#(dword_10C614 - 0x10C5E0)]
VLDR            S0, [SP,#0x98+var_74]
ADD             R1, R4, #4
VLDR            S19, [R4,#(dword_10C5F4 - 0x10C5E0)]
VMUL.F32        S7, S7, S0
VLDM            R1, {S8-S9}
VMUL.F32        S19, S19, S0
VLDR            S18, [R4,#(dword_10C604 - 0x10C5E0)]
VLDR            S12, [R4,#(dword_10C618 - 0x10C5E0)]
VMUL.F32        S8, S8, S0
VLDR            S5, [R4,#(dword_10C61C - 0x10C5E0)]
VLDR            S20, [R4,#(dword_10C610 - 0x10C5E0)]
VLDR            S1, [SP,#0x98+var_70]
VLDR            S2, [SP,#0x98+var_78]
VMUL.F32        S18, S18, S0
VMLA.F32        S7, S12, S1
VMLA.F32        S5, S20, S2
VLDR            S6, [R4,#(dword_10C5EC - 0x10C5E0)]
VLDR            S15, [R4]
VLDR            S10, [R4,#(dword_10C5F8 - 0x10C5E0)]
VLDR            S4, [R4,#(dword_10C5FC - 0x10C5E0)]
VLDR            S13, [R4,#(dword_10C5F0 - 0x10C5E0)]
VLDR            S11, [R4,#(dword_10C608 - 0x10C5E0)]
VLDR            S3, [R4,#(dword_10C60C - 0x10C5E0)]
VLDR            S14, [R4,#(dword_10C600 - 0x10C5E0)]
VMLA.F32        S6, S15, S2
VMLA.F32        S8, S9, S1
VMLA.F32        S4, S13, S2
VMLA.F32        S19, S10, S1
VMLA.F32        S3, S14, S2
VMLA.F32        S18, S11, S1
VADD.F32        S2, S7, S5
ADD             R1, SP, #0x98+var_80
VADD.F32        S0, S8, S6
VADD.F32        S4, S19, S4
VADD.F32        S3, S18, S3
VDIV.F32        S1, S16, S2
VMUL.F32        S0, S0, S1
VMUL.F32        S2, S4, S1
VMUL.F32        S1, S3, S1
VSTR            S0, [SP,#0x98+var_78]
VSTR            S2, [SP,#0x98+var_74]
VSTR            S1, [SP,#0x98+var_70]
VLDR            S3, [SP,#0x98+var_50]
VLDR            S2, [SP,#0x98+var_4C]
VSTR            S0, [SP,#0x98+var_88]
VMUL.F32        S1, S0, S17
VSTR            S3, [SP,#0x98+var_84]
VMUL.F32        S0, S3, S17
VSTR            S2, [SP,#0x98+var_80]
VMUL.F32        S3, S16, S17
VMUL.F32        S2, S2, S17
VSTR            S16, [SP,#0x98+var_7C]
VSTR            S1, [SP,#0x98+var_88]
VSTR            S0, [SP,#0x98+var_84]
VSTM            R1, {S2-S3}
VLDR            S6, [R5]
VLDR            S4, [R5,#(dword_10C630 - 0x10C620)]
VLDR            S5, [R5,#(dword_10C640 - 0x10C620)]
VMUL.F32        S6, S6, S1
VMUL.F32        S4, S4, S1
VMUL.F32        S5, S5, S1
VLDR            S20, [R5,#(dword_10C650 - 0x10C620)]
VLDR            S19, [R5,#(dword_10C624 - 0x10C620)]
VLDR            S18, [R5,#(dword_10C634 - 0x10C620)]
VLDR            S17, [R5,#(dword_10C644 - 0x10C620)]
VLDR            S15, [R5,#(dword_10C654 - 0x10C620)]
VLDR            S14, [R5,#(dword_10C628 - 0x10C620)]
VLDR            S13, [R5,#(dword_10C638 - 0x10C620)]
VLDR            S12, [R5,#(dword_10C648 - 0x10C620)]
VLDR            S11, [R5,#(dword_10C658 - 0x10C620)]
VLDR            S10, [R5,#(dword_10C62C - 0x10C620)]
VLDR            S9, [R5,#(dword_10C63C - 0x10C620)]
VLDR            S8, [R5,#(dword_10C64C - 0x10C620)]
VLDR            S7, [R5,#(dword_10C65C - 0x10C620)]
VMUL.F32        S1, S20, S1
VMLA.F32        S6, S19, S0
VMLA.F32        S5, S17, S0
VMLA.F32        S4, S18, S0
ADD             R1, SP, #0x98+var_84
ADD             R2, SP, #0x98+var_88
ADD             R0, SP, #0x98+var_60
VMLA.F32        S1, S15, S0
VMLA.F32        S6, S14, S2
VMLA.F32        S5, S12, S2
VMLA.F32        S4, S13, S2
VMLA.F32        S1, S11, S2
VMLA.F32        S6, S10, S3
VMLA.F32        S5, S8, S3
VMLA.F32        S4, S9, S3
VMLA.F32        S1, S7, S3
VSTR            S6, [SP,#0x98+var_88]
VSTR            S1, [SP,#0x98+var_7C]
VSTM            R1, {S4-S5}
MOV             R1, R8
BL              sub_1169FC
VLDR            S1, [SP,#0x98+var_60]
VLDR            S3, [SP,#0x98+var_98]
VLDR            S0, [SP,#0x98+var_58]
VLDR            S2, [SP,#0x98+var_90]
VSUB.F32        S1, S1, S3
LDMFD           SP, {R0-R2}
VSUB.F32        S2, S0, S2
VLDR            S0, =0.5
ADD             R3, R6, #0x18
VMOV            S6, R0
STM             R3, {R0-R2}
ADD             R0, R6, #0x34 ; '4'
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VLDR            S0, =0.0
VMUL.F32        S3, S1, S1
VMLA.F32        S3, S0, S0
VMLA.F32        S3, S2, S2
VSQRT.F32       S4, S3
VDIV.F32        S3, S16, S4
VMUL.F32        S1, S1, S3
VMUL.F32        S4, S0, S3
VMUL.F32        S3, S2, S3
VLDR            S2, [R9,#(flt_6E34C0 - 0x6E34B0)]
VMUL.F32        S5, S4, S2
VMUL.F32        S4, S3, S2
VMUL.F32        S2, S1, S2
VADD.F32        S2, S6, S2
VSTR            S2, [R6,#0x18]
VLDR            S2, [R6,#0x1C]
VADD.F32        S2, S2, S5
VSTR            S2, [R6,#0x1C]
VLDR            S2, [R6,#0x20]
VADD.F32        S2, S2, S4
VSTR            S2, [R6,#0x20]
VNEG.F32        S2, S1
VSTR            S16, [R6,#0x24]
VNEG.F32        S1, S3
VSTR            S0, [R6,#0x28]
VSTR            S0, [R6,#0x2C]
VSTR            S2, [R6,#0x30]
VSTM            R0, {S0-S1}
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D10}
POP             {R4-R9,PC}
