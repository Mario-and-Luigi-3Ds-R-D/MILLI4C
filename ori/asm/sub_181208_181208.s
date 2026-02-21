PUSH            {R0-R11,LR}
MOV             R7, R0
VPUSH           {D8-D10}
SUB             SP, SP, #0x2CC
LDR             R0, [SP,#0x318+var_28]
ADD             R1, R0, #8
ADD             R6, R0, #0x68 ; 'h'
LDR             R0, [R0,#8]
ADD             R4, R6, #0xC
STR             R0, [SP,#0x318+var_F8]
LDR             R2, [R1,#8]
LDR             R3, [R1,#4]
VLDR            S17, [R6,#0x24]
VLDM            R4, {S18-S19}
AND             R3, R3, #0xFF
SXTB            R2, R2
STR             R2, [SP,#0x318+var_E4]
STR             R3, [SP,#0x318+var_310]
LDR             R2, [R1,#0x20]
STR             R2, [SP,#0x318+var_E8]
LDR             R1, [R1,#0x28]
LDR             R2, [R7,#4]
AND             R11, R1, #7
MOV             R3, R1,LSL#25
LDR             R1, =off_6D1648
MOV             R10, R3,LSR#28
ADD             R8, R2, #8
LDR             R1, [R1]
LDR             R3, [R1,#0xBC]
CMP             R2, R3
LDRNE           R3, =0x401
MOVEQ           R3, #0x400
CMP             R0, #0
STR             R3, [SP,#0x318+var_54]
BLT             loc_1812B0
LDR             R2, =0x1D07
LDR             R1, [R1,#0xA4]
MUL             R0, R0, R2
LDR             R2, =0x275D8
ADD             R0, R2, R0,LSL#2
ADD             R9, R1, R0
B               loc_1812C0
LDR             R0, [R1,#0xA4]
ADD             R1, SP, #0x318+var_F8
BL              sub_37CEB0
MOV             R9, R0
MOV             R0, #0
ADD             R1, SP, #0x318+var_218
STRH            R0, [SP,#0x318+var_308]
STR             R0, [SP,#0x318+var_108]
STRH            R0, [SP,#0x318+var_288]
STR             R0, [SP,#0x318+var_104]
STRH            R0, [R1,#0x10]
STR             R0, [SP,#0x318+var_100]
STRH            R0, [R1,#0x90]
STR             R0, [SP,#0x318+var_FC]
LDR             R0, =unk_6E8CD0
ADD             R1, SP, #0x318+var_308
STR             R1, [SP,#0x318+var_314]
MOV             R1, #0
STR             R0, [SP,#0x318+var_30C]
STR             R1, [SP,#0x318+var_F0]
VLDR            S0, [R0,#(flt_6E8EC0 - 0x6E8CD0)]
MOV             R5, #0xA
VSTR            S0, [SP,#0x318+var_EC]
MOV             R4, #1
LDR             R0, [SP,#0x318+var_EC]
MOV             R1, R5
BL              sub_127F6C
CMP             R0, #0
NOP
BEQ             loc_18133C
ADD             R1, R5, R5,LSL#2
ADD             R4, R4, #1
CMP             R4, #0x40 ; '@'
MOV             R5, R1,LSL#1
BCC             loc_181310
VLDR            S0, [SP,#0x318+var_EC]
LDR             R3, =aD_2; "%d"
VSTR            S0, [SP,#0x318+var_318]
LDR             R0, [SP,#0x318+var_F0]
LDR             R1, [SP,#0x318+var_314]
MOV             R2, #0x3F ; '?'
ADD             R0, R1, R0,LSL#7
MOV             R1, #0x40 ; '@'
BL              sub_465A98
LDR             R1, [SP,#0x318+var_F0]
LDR             R0, [SP,#0x318+var_314]
MOV             R5, #0xA
ADD             R0, R0, R1,LSL#2
STR             R4, [R0,#0x200]
ADD             R0, SP, #0x318+var_308
STR             R0, [SP,#0x318+var_314]
MOV             R0, #1
STR             R0, [SP,#0x318+var_F0]
LDR             R0, [SP,#0x318+var_30C]
MOV             R4, #1
VLDR            S0, [R0,#(flt_6E8EC4 - 0x6E8CD0)]
VSTR            S0, [SP,#0x318+var_EC]
LDR             R0, [SP,#0x318+var_EC]
MOV             R1, R5
BL              sub_127F6C
CMP             R0, #0
NOP
BEQ             loc_1813C0
ADD             R1, R5, R5,LSL#2
ADD             R4, R4, #1
CMP             R4, #0x40 ; '@'
MOV             R5, R1,LSL#1
BCC             loc_181394
VLDR            S0, [SP,#0x318+var_EC]
LDR             R3, =aD_2; "%d"
VSTR            S0, [SP,#0x318+var_318]
LDR             R0, [SP,#0x318+var_F0]
LDR             R1, [SP,#0x318+var_314]
MOV             R2, #0x3F ; '?'
ADD             R0, R1, R0,LSL#7
MOV             R1, #0x40 ; '@'
BL              sub_465A98
LDR             R1, [SP,#0x318+var_F0]
LDR             R0, [SP,#0x318+var_314]
MOV             R5, #0xA
ADD             R0, R0, R1,LSL#2
STR             R4, [R0,#0x200]
ADD             R0, SP, #0x318+var_308
STR             R0, [SP,#0x318+var_314]
MOV             R0, #2
STR             R0, [SP,#0x318+var_F0]
LDR             R0, [SP,#0x318+var_30C]
MOV             R4, #1
VLDR            S0, [R0,#(flt_6E8EC8 - 0x6E8CD0)]
VSTR            S0, [SP,#0x318+var_EC]
LDR             R0, [SP,#0x318+var_EC]
MOV             R1, R5
BL              sub_127F6C
CMP             R0, #0
NOP
BEQ             loc_181444
ADD             R1, R5, R5,LSL#2
ADD             R4, R4, #1
CMP             R4, #0x40 ; '@'
MOV             R5, R1,LSL#1
BCC             loc_181418
VLDR            S0, [SP,#0x318+var_EC]
LDR             R3, =aD_2; "%d"
VSTR            S0, [SP,#0x318+var_318]
LDR             R1, [SP,#0x318+var_F0]
LDR             R0, [SP,#0x318+var_314]
MOV             R2, #0x3F ; '?'
ADD             R0, R0, R1,LSL#7
MOV             R1, #0x40 ; '@'
BL              sub_465A98
LDR             R1, [SP,#0x318+var_F0]
LDR             R0, [SP,#0x318+var_314]
MOV             R5, #0xA
ADD             R0, R0, R1,LSL#2
STR             R4, [R0,#0x200]
ADD             R0, SP, #0x318+var_308
STR             R0, [SP,#0x318+var_314]
MOV             R0, #3
STR             R0, [SP,#0x318+var_F0]
LDR             R0, [SP,#0x318+var_30C]
MOV             R4, #1
VLDR            S0, [R0,#(flt_6E8ECC - 0x6E8CD0)]
VSTR            S0, [SP,#0x318+var_30C]
LDR             R0, [SP,#0x318+var_30C]
MOV             R1, R5
BL              sub_127F6C
CMP             R0, #0
NOP
BEQ             loc_1814C8
ADD             R0, R5, R5,LSL#2
ADD             R4, R4, #1
CMP             R4, #0x40 ; '@'
MOV             R5, R0,LSL#1
BCC             loc_18149C
VLDR            S0, [SP,#0x318+var_30C]
LDR             R3, =aD_2; "%d"
VSTR            S0, [SP,#0x318+var_318]
LDR             R1, [SP,#0x318+var_F0]
LDR             R0, [SP,#0x318+var_314]
MOV             R2, #0x3F ; '?'
ADD             R0, R0, R1,LSL#7
MOV             R1, #0x40 ; '@'
BL              sub_465A98
LDR             R1, [SP,#0x318+var_F0]
LDR             R0, [SP,#0x318+var_314]
ADD             R0, R0, R1,LSL#2
STR             R4, [R0,#0x200]
LDR             R0, =dword_6E8ED0
ADD             R4, R9, #0x7000
CMP             R0, #0
MOVNE           R1, #0xFFFFFFFF
STR             R0, [R4,#0x2F0]
STRNE           R1, [R0]
LDR             R0, [R7,#4]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0xF8
LDR             R1, [R0]
MOV             R0, R9
BL              sub_5463E4
LDR             R0, [SP,#0x318+var_E8]
LDR             R1, [R4,#0x3B8]
ADD             R3, SP, #0x318+var_308
AND             R0, R0, #1
EOR             R0, R0, #1
BIC             R1, R1, #1
ORR             R0, R0, R1
STR             R0, [R4,#0x3B8]
LDR             R4, =off_6D1648
ADD             R0, R9, #0x7400
ADD             R0, R0, #0x18
VLDR            S0, [SP,#0x318+var_54]
VSTR            S0, [R0]
LDR             R0, [R4]
LDR             R1, [SP,#0x318+var_F8]
LDR             R2, [SP,#0x318+var_310]
LDR             R0, [R0,#0xA4]
BL              sub_37CE68
LDR             R0, [R4]
LDR             R1, [SP,#0x318+var_F8]
LDR             R0, [R0,#0xA4]
BL              sub_37D710
LDR             R0, [SP,#0x318+var_E4]
CMP             R0, #0
BLT             loc_1818FC
LDR             R0, [R7]
LDR             R2, [R7,#4]
LDR             R1, [SP,#0x318+var_2C]
LDR             R3, [SP,#0x318+var_E4]
LDR             R12, [R0,#0x9C]
MOV             R0, R7
BLX             R12
VLDR            S0, [R8,#0x98]
VLDR            S1, =0.5
MOV             R4, R0
ADD             R1, SP, #0x318+var_78
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
ADD             R0, SP, #0x318+var_7C
VMUL.F32        S0, S0, S1
BL              sub_462B20
ADD             R0, SP, #0x318+var_7C
VLDR            S20, =2.0
ADD             R1, SP, #0x318+var_F0
VLDM            R0, {S1-S2}
LDR             R0, [R8]
VDIV.F32        S0, S1, S2
VLDR            S1, [R8,#0x8C]
LDR             R2, [R0,#0x30]
MOV             R0, R8
VMUL.F32        S0, S0, S20
VMUL.F32        S16, S0, S1
BLX             R2
VLDR            S5, [R4,#0x108]
VLDR            S2, [SP,#0x318+var_F0]
VLDR            S4, [R4,#0x10C]
VLDR            S0, [SP,#0x318+var_EC]
VSUB.F32        S2, S2, S5
VLDR            S3, [R4,#0x110]
VSUB.F32        S0, S0, S4
VLDR            S1, [SP,#0x318+var_E8]
VMUL.F32        S20, S16, S20
VLDR            S21, =0.0
VSUB.F32        S1, S1, S3
VSTR            S21, [SP,#0x318+var_C8]
VSTR            S21, [SP,#0x318+var_C4]
VSTR            S21, [SP,#0x318+var_B4]
VMUL.F32        S2, S2, S2
VSTR            S21, [SP,#0x318+var_B0]
VSTR            S21, [SP,#0x318+var_AC]
ADD             R3, SP, #0x318+var_C0
VLDR            S4, =-200.0
VLDR            S5, =120.0
VLDR            S6, =200.0
VLDR            S7, =-120.0
MOV             R1, #5
MOV             R2, #8
VMLA.F32        S2, S0, S0
VLDR            S3, =4096.0
MOV             R0, #0
VMLA.F32        S2, S1, S1
VLDR            S1, =32.0
VSQRT.F32       S0, S2
VLDR            S2, =8.0
VDIV.F32        S16, S20, S0
VLDR            S0, =-8.0
VSTM            R3, {S0-S2}
ADD             R3, SP, #0x318+var_A8
VSTR            S21, [SP,#0x318+var_9C]
VSTM            R3, {S0-S2}
ADD             R3, SP, #0x318+var_D8
VSTM            R3, {S4-S7}
STRB            R1, [SP,#0x318+var_98]
LDR             R1, =dword_6581F0
STRB            R2, [SP,#0x318+var_97]
VSTR            S3, [SP,#0x318+var_94]
LDR             R1, [R1]
STR             R1, [SP,#0x318+var_90]
VSTR            S21, [SP,#0x318+var_8C]
VSTR            S21, [SP,#0x318+var_88]
STRB            R0, [SP,#0x318+var_84]
LDR             R0, [SP,#0x318+var_54]
STR             R9, [SP,#0x318+var_DC]
STR             R0, [SP,#0x318+var_50]
BL              sub_11C418
MOV             R5, R0
LDR             R0, [SP,#0x318+var_50]
BL              sub_485B0C
RSB             R3, R5, #0
MOV             R2, R0
MOV             R1, R5,LSR#1
ADD             R3, R3, R3,LSR#31
MOV             R0, R0,LSR#1
RSB             R2, R2, #0
VMOV            S0, R1
VMOV            S1, R0
MOV             R1, R3,ASR#1
ADD             R0, R2, R2,LSR#31
VMOV            S3, R1
MOV             R0, R0,ASR#1
VMOV            S2, R0
VCVT.F32.U32    S1, S1
VCVT.F32.U32    S0, S0
ADD             R0, R4, #0x150
VCVT.F32.S32    S3, S3
MOV             R1, #1
VCVT.F32.S32    S2, S2
VSTR            S3, [SP,#0x318+var_D8]
VSTR            S1, [SP,#0x318+var_D4]
VSTR            S0, [SP,#0x318+var_D0]
VSTR            S2, [SP,#0x318+var_CC]
VLDR            S2, [R4,#0x130]
VLDR            S6, [R4,#0x140]
VLDR            S4, [R4,#0x134]
VLDR            S5, [R4,#0x144]
VLDR            S3, [R4,#0x160]
VADD.F32        S2, S2, S6
VLDM            R0, {S0-S1}
VADD.F32        S4, S4, S5
VMUL.F32        S3, S3, S16
ADD             R0, SP, #0x318+var_8C
VMUL.F32        S0, S0, S16
VMUL.F32        S1, S1, S16
VSTR            S2, [SP,#0x318+var_C8]
VSTR            S4, [SP,#0x318+var_C4]
VSTR            S0, [SP,#0x318+var_C0]
VSTR            S3, [SP,#0x318+var_BC]
VSTR            S1, [SP,#0x318+var_B8]
VSTR            S21, [SP,#0x318+var_B4]
STRB            R11, [SP,#0x318+var_98]
STRB            R10, [SP,#0x318+var_97]
VSTR            S17, [SP,#0x318+var_94]
VSTM            R0, {S18-S19}
LDR             R0, [SP,#0x318+var_2C]
LDR             R0, [R0,#0x70]
MOV             R0, R0,LSL#22
CMP             R1, R0,LSR#29
BNE             loc_181874
LDR             R0, [SP,#0x318+var_2C]
LDRB            R0, [R0,#0x76]
CMP             R0, #0
BNE             loc_181874
LDR             R0, [SP,#0x318+var_2C]
LDRB            R2, [R4,#0xDC]
LDRSB           R0, [R0,#0x74]
CMP             R2, R0
BEQ             loc_181874
CMP             R0, #0
BLT             loc_181874
LDR             R2, [R7,#4]
LDR             R3, =0x1428D
LDRB            R3, [R3,R2]
CMP             R3, R0
BLE             loc_181874
ADD             R0, R2, R0,LSL#2
ADD             R0, R0, #0x14000
VLDR            S0, [SP,#0x318+var_F0]
LDR             R0, [R0,#0x184]
VLDR            S1, [SP,#0x318+var_EC]
ADD             R3, SP, #0x318+var_A8
VLDR            S3, [R0,#0x108]
VLDR            S2, [R0,#0x10C]
VLDR            S4, [R0,#0x110]
VSUB.F32        S0, S0, S3
VSUB.F32        S2, S1, S2
VLDR            S3, [SP,#0x318+var_E8]
VLDR            S7, [R0,#0x140]
VLDR            S6, [R0,#0x144]
VLDR            S5, [R0,#0x154]
VMUL.F32        S1, S0, S0
VSUB.F32        S0, S3, S4
VLDR            S4, [R0,#0x134]
VLDR            S3, [R0,#0x160]
VADD.F32        S4, S4, S6
VMLA.F32        S1, S2, S2
VMLA.F32        S1, S0, S0
VSQRT.F32       S2, S1
VLDR            S1, [R0,#0x130]
VADD.F32        S1, S1, S7
VDIV.F32        S0, S20, S2
VLDR            S2, [R0,#0x150]
VSTR            S1, [SP,#0x318+var_B0]
VSTR            S4, [SP,#0x318+var_AC]
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S3, S0
VMUL.F32        S0, S5, S0
VSTR            S0, [SP,#0x318+var_A0]
VSTR            S21, [SP,#0x318+var_9C]
VSTM            R3, {S2-S3}
STRB            R1, [SP,#0x318+var_84]
MOV             R1, SP
ADD             R0, SP, #0x318+var_DC
BL              sub_3A3488
LDR             R0, [SP,#0x318+var_318]
STR             R0, [SP,#0x318+var_6C]
LDR             R0, [SP,#0x318+var_314]
STR             R0, [SP,#0x318+var_68]
LDR             R0, [R6,#0x14]
LDRSB           R11, [SP,#0x318+var_310]
LDRSB           R10, [SP,#0x318+var_310+1]
STR             R0, [SP,#0x318+var_64]
VLDR            S17, [SP,#0x318+var_30C]
B               loc_181940
DCD off_6D1648
DCD 0x401
DCD 0x1D07
DCD 0x275D8
DCD unk_6E8CD0
DCD aD_2
DCD dword_6E8ED0
DCFS 0.5
DCFS 0.71111
DCFS 2.0
DCFS 0.0
DCFS -8.0
DCFS 32.0
DCFS 8.0
DCFS -200.0
DCFS 120.0
DCFS 200.0
DCFS -120.0
DCFS 4096.0
DCD dword_6581F0
DCD 0x1428D
LDR             R0, [SP,#0x318+var_54]
BL              sub_11C418
MOV             R4, R0
LDR             R0, [SP,#0x318+var_54]
BL              sub_485B0C
MOV             R1, R4,LSR#1
MOV             R0, R0,LSR#1
VMOV            S1, R1
VMOV            S0, R0
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VADD.F32        S1, S1, S18
VSUB.F32        S0, S0, S19
VSTR            S1, [SP,#0x318+var_6C]
VSTR            S0, [SP,#0x318+var_68]
LDR             R0, [R6,#0x14]
STR             R0, [SP,#0x318+var_64]
LDR             R1, =off_6D1648
LDR             R3, [SP,#0x318+var_F8]
LDR             R12, =0x1D07
MOV             R0, #0
LDR             R2, [R1]
MUL             R3, R3, R12
LDR             R12, =0x2CE0E
LDR             R2, [R2,#0xA4]
ADD             R2, R2, R3,LSL#2
ORR             R4, R12, R12,ASR#14
STRB            R11, [R2,R12]
ADD             R3, R2, R4
ADD             R12, R2, #0x2CC00
ADD             R2, R2, #0x2CC00
ADD             R2, R2, #0x214
STRB            R10, [R3]
VSTR            S17, [R12,#0x210]
STRB            R0, [R2]
LDR             R0, [R1]
LDR             R3, [R8,#0xB8]
ADD             R2, SP, #0x318+var_6C
MOV             R1, R9
LDR             R0, [R0,#0xA4]
BL              sub_37D774
VLDR            S0, [SP,#0x318+var_F8]
LDR             R0, [SP,#0x318+var_28]
ADD             R3, SP, #0x318+var_30
VCVT.F32.S32    S0, S0
LDM             R3, {R1,R2}
LDRH            R0, [R0,#2]
BL              sub_145730
ADD             SP, SP, #0x2CC
MOV             R0, #0
VPOP            {D8-D10}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
