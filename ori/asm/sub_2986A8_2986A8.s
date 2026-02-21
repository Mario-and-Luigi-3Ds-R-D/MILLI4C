PUSH            {R0-R2,R4-R11,LR}
MOV             R4, #0
VLDR            S12, =0.5
VPUSH           {D8-D15}
SUB             SP, SP, #0xC0
LDR             R1, [SP,#0x130+var_28]
LDR             R0, [SP,#0x130+var_2C]
VLDR            S26, =2.0
ADD             R1, R1, #0x24 ; '$'
STR             R1, [SP,#0x130+var_108]
LDR             R1, [SP,#0x130+var_30]
CMP             R0, #0
VLDR            S28, =1.0
VLDR            S27, =0.0
STRB            R4, [R1,#0x25]
LDR             R1, [SP,#0x130+var_30]
LDR             R2, [SP,#0x130+var_28]
VLDR            S18, =80.0
STR             R2, [R1,#0x28]
LDR             R1, [SP,#0x130+var_108]
LDR             R0, [SP,#0x130+var_2C]
VLDR            S17, [R1,#0x8C]
VLDR            S16, [R1,#0x90]
VLDR            S14, [R1,#0x94]
LDR             R1, [SP,#0x130+var_30]
VMOV.F32        S15, S17
VMLA.F32        S17, S14, S12
STRB            R0, [R1,#0x44]
LDR             R1, [SP,#0x130+var_108]
VMLS.F32        S15, S14, S12
VLDR            S13, [R1,#0xB8]
VLDR            S19, [R1,#0xA4]
VLDR            S10, [R1,#0xA0]
VLDR            S11, [R1,#0xA8]
VSTR            S19, [SP,#0x130+var_D0]
VLDR            S19, [R1,#0xAC]
VMUL.F32        S25, S13, S26
VSTR            S19, [SP,#0x130+var_B8]
VMOV.F32        S19, S17
VMOV.F32        S17, S15
VSTR            S10, [SP,#0x130+var_104]
VSTR            S11, [SP,#0x130+var_E4]
BEQ             loc_298768
CMP             R0, #1
BEQ             loc_2988A0
CMP             R0, #2
BNE             loc_298954
B               loc_2987E8
VLDR            S1, [R1,#0x94]
VDIV.F32        S0, S1, S11
BL              sub_5F6048
VADD.F32        S0, S0, S26
VMOV.F32        S6, S17
VSUB.F32        S9, S16, S18
VLDR            S1, =-1.0
VMOV.F32        S2, S28
VMOV.F32        S21, S16
VMOV.F32        S22, S1
VMOV.F32        S30, S6
VMOV.F32        S6, S17
VMOV.F32        S7, S19
VCVT.U32.F32    S0, S0
VMOV.F32        S8, S25
VMOV.F32        S5, S16
VSTR            S0, [SP,#0x130+var_E8]
VMOV.F32        S0, S27
LDR             R0, [SP,#0x130+var_30]
VSTR            S0, [R0]
LDR             R0, [SP,#0x130+var_30]
VMOV.F32        S29, S0
VMOV.F32        S31, S0
VMOV.F32        S4, S0
VSTR            S0, [R0,#4]
LDR             R0, [SP,#0x130+var_30]
VMOV.F32        S24, S0
VMOV.F32        S3, S0
VMOV.F32        S23, S0
VMOV.F32        S20, S0
VSTR            S28, [R0,#8]
B               loc_298954
VLDR            S1, [R1,#0x98]
VDIV.F32        S0, S1, S10
BL              sub_5F6048
VCVT.U32.F32    S5, S0
VMOV.F32        S0, S27
VMOV.F32        S3, S28
VADD.F32        S7, S19, S18
VMOV.F32        S24, S19
VMOV.F32        S6, S19
VMOV.F32        S8, S25
VMOV.F32        S30, S0
VMOV.F32        S29, S0
VSTR            S5, [SP,#0x130+var_E8]
VMOV.F32        S5, S16
LDR             R0, [SP,#0x130+var_30]
VMOV.F32        S2, S0
VMOV.F32        S4, S3
VMOV.F32        S21, S0
VMOV.F32        S1, S0
VMOV.F32        S31, S5
VLDR            S5, =-1.0
VMOV.F32        S23, S3
VSTR            S5, [R0]
LDR             R0, [SP,#0x130+var_30]
VMOV.F32        S5, S16
VMOV.F32        S20, S0
VMOV.F32        S22, S0
VSTR            S0, [R0,#4]
LDR             R0, [SP,#0x130+var_30]
VSUB.F32        S9, S5, S18
VSTR            S0, [R0,#8]
VLDR            S5, [SP,#0x130+var_E8]
LDR             R0, [SP,#0x130+var_108]
VCVT.F32.U32    S11, S5
VMOV.F32        S5, S16
VLDR            S10, [R0,#0xA4]
VMLA.F32        S5, S10, S11
VLDR            S10, [R0,#0xA8]
VSTR            S10, [SP,#0x130+var_104]
VLDR            S10, [R0,#0xAC]
VSTR            S10, [SP,#0x130+var_D0]
VLDR            S10, [R0,#0xA0]
VSTR            S10, [SP,#0x130+var_E4]
VLDR            S10, [R0,#0xA4]
VSTR            S10, [SP,#0x130+var_B8]
B               loc_298954
VLDR            S1, [R1,#0x98]
VDIV.F32        S0, S1, S10
BL              sub_5F6048
VCVT.U32.F32    S5, S0
VMOV.F32        S0, S27
VMOV.F32        S7, S17
VLDR            S23, =-1.0
VMOV.F32        S4, S28
VMOV.F32        S8, S25
VMOV.F32        S3, S23
VMOV.F32        S30, S0
VSUB.F32        S6, S7, S18
VSTR            S5, [SP,#0x130+var_E8]
LDR             R0, [SP,#0x130+var_30]
VMOV.F32        S5, S16
VMOV.F32        S24, S7
VMOV.F32        S29, S0
VSTR            S28, [R0]
LDR             R0, [SP,#0x130+var_30]
VMOV.F32        S2, S0
VMOV.F32        S31, S5
VMOV.F32        S5, S16
VSTR            S0, [R0,#4]
LDR             R0, [SP,#0x130+var_30]
VMOV.F32        S21, S0
VMOV.F32        S1, S0
VMOV.F32        S20, S0
VSTR            S0, [R0,#8]
VSUB.F32        S9, S5, S18
VLDR            S5, [SP,#0x130+var_E8]
LDR             R0, [SP,#0x130+var_108]
VMOV.F32        S22, S0
VCVT.F32.U32    S11, S5
VMOV.F32        S5, S16
VLDR            S10, [R0,#0xA4]
VMOV.F32        S7, S17
VMLA.F32        S5, S10, S11
VLDR            S10, [R0,#0xA8]
VSTR            S10, [SP,#0x130+var_104]
VLDR            S10, [R0,#0xAC]
VSTR            S10, [SP,#0x130+var_D0]
VLDR            S10, [R0,#0xA0]
VSTR            S10, [SP,#0x130+var_E4]
VLDR            S10, [R0,#0xA4]
VSTR            S10, [SP,#0x130+var_B8]
LDR             R0, [SP,#0x130+var_30]
BIC             R1, R5, #0xFF
VLDR            S25, =0.0
ADD             R2, R0, #0x18
VSTR            S6, [R0,#0xC]
VMOV.F32        S6, S0
VSTR            S6, [R0,#0x10]
VSTR            S9, [R0,#0x14]
VMUL.F32        S6, S2, S2
VSTM            R2, {S7-S8}
LDR             R2, [SP,#0x130+var_2C]
VSTR            S5, [R0,#0x20]
VMOV.F32        S5, S0
ORR             R0, R1, R2
STR             R0, [SP,#0x130+var_78]
VMLA.F32        S6, S5, S5
VMLA.F32        S6, S4, S4
VSQRT.F32       S7, S6
VDIV.F32        S6, S28, S7
VMUL.F32        S2, S2, S6
VMUL.F32        S5, S5, S6
VMUL.F32        S4, S4, S6
VSTR            S2, [SP,#0x130+var_C8]
VMUL.F32        S2, S3, S3
VSTR            S5, [SP,#0x130+var_BC]
VSTR            S4, [SP,#0x130+var_DC]
VMLA.F32        S2, S0, S0
VMLA.F32        S2, S1, S1
VSQRT.F32       S4, S2
VDIV.F32        S2, S28, S4
VMUL.F32        S3, S3, S2
VMUL.F32        S0, S0, S2
VMUL.F32        S1, S1, S2
VSTR            S3, [SP,#0x130+var_D4]
VSTR            S0, [SP,#0x130+var_D8]
VSTR            S1, [SP,#0x130+var_AC]
LDR             R0, [SP,#0x130+var_2C]
CMP             R0, #0
LDR             R0, [SP,#0x130+var_108]
VLDR            S0, [R0,#0x9C]
VSTR            S0, [SP,#0x130+var_E0]
VLDREQ          S16, [R0,#0xC4]
VLDRNE          S16, [R0,#0xC0]
LDR             R0, =off_6CE970
LDR             R1, [SP,#0x130+var_30]
LDR             R0, [R0]
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [R1,#0x2C]
LDR             R0, [SP,#0x130+var_E8]
LDR             R1, [SP,#0x130+var_E0]
MUL             R1, R0, R1
LDR             R0, [SP,#0x130+var_30]
ADD             R0, R0, #0x2C ; ','
BL              sub_625E58
LDR             R0, [SP,#0x130+var_E8]
CMP             R0, #0
MOV             R0, #0
STR             R0, [SP,#0x130+var_A8]
BLS             loc_299328
VMOV.F32        S0, S20
VSTR            S24, [SP,#0x130+var_A4]
ADD             R0, SP, #0x130+var_118
VSTR            S0, [SP,#0x130+var_A0]
VSTR            S21, [SP,#0x130+var_88]
B               loc_298A74
DCFS 0.5
DCFS 2.0
DCFS 1.0
DCFS 0.0
DCFS 80.0
DCFS -1.0
DCD off_6CE970
VMUL.F32        S0, S23, S16
STR             R0, [SP,#0x130+var_74]
LDR             R0, [SP,#0x130+var_30]
ADD             R9, R0, #0x38 ; '8'
VMOV.F32        S28, S0
VMUL.F32        S0, S20, S16
VMOV.F32        S27, S0
VMUL.F32        S0, S22, S16
VMOV.F32        S26, S0
LDR             R0, [SP,#0x130+var_E0]
VLDR            S16, =0.0
CMP             R0, #0
MOV             R0, #0
STR             R0, [SP,#0x130+var_94]
BLS             loc_2992FC
VLDR            S0, [SP,#0x130+var_C8]
VLDR            S1, [SP,#0x130+var_BC]
VMOV.F32        S2, S30
VMUL.F32        S0, S0, S25
VMUL.F32        S3, S1, S25
VLDR            S1, [SP,#0x130+var_DC]
VLDR            S4, [SP,#0x130+var_D8]
VLDR            S5, [SP,#0x130+var_AC]
VMUL.F32        S1, S1, S25
VMUL.F32        S4, S4, S16
VMUL.F32        S6, S5, S16
VLDR            S5, [SP,#0x130+var_A4]
LDR             R0, [SP,#0x130+var_2C]
VADD.F32        S0, S2, S0
VMOV.F32        S2, S29
CMP             R0, #1
VADD.F32        S2, S2, S3
VMOV.F32        S3, S31
VADD.F32        S1, S3, S1
VLDR            S3, [SP,#0x130+var_D4]
VMUL.F32        S3, S3, S16
VADD.F32        S5, S5, S3
VLDR            S3, [SP,#0x130+var_A0]
VADD.F32        S3, S3, S4
VLDR            S4, [SP,#0x130+var_88]
VADD.F32        S4, S4, S6
VADD.F32        S17, S0, S5
VLDREQ          S0, =14.0
VADD.F32        S22, S2, S3
VADD.F32        S21, S1, S4
VSUBEQ.F32      S17, S17, S0
BEQ             loc_298B3C
CMP             R0, #2
VLDREQ          S0, =14.0
VADDEQ.F32      S17, S17, S0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R4, R0
LDR             R0, [SP,#0x130+var_108]
ADD             R0, R0, #0xB0
VLDM            R0, {S0-S1}
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
VMOV.F32        S18, S0
MOV             R0, R4
BL              sub_464278
VMUL.F32        S20, S0, S18
VLDR            S19, =0.0
MOV             R0, R4
BL              sub_4642E0
VMUL.F32        S0, S0, S18
VADD.F32        S24, S17, S20
VMOV.F32        S1, S28
VMOV.F32        S2, S27
VADD.F32        S23, S22, S19
LDR             R0, =dword_6D1F40
VADD.F32        S19, S17, S1
VADD.F32        S18, S22, S2
VADD.F32        S20, S21, S0
VMOV.F32        S0, S26
VADD.F32        S17, S21, S0
BL              sub_546DB0
MOV             R0, R0,LSL#2
LDR             R1, [SP,#0x130+var_78]
MOV             R0, R0,LSR#16
LDR             R5, [SP,#0x130+var_28]
MOV             R0, R0,LSL#8
BIC             R1, R1, #0xFF00
AND             R0, R0, #0xFF00
ORR             R0, R0, R1
STR             R0, [SP,#0x130+var_78]
LDR             R0, =off_6CE970
MOV             R3, #0
ADD             R6, SP, #0x130+var_11C
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x448
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_298CD0
ADD             R0, R0, #0x48 ; 'H'
BL              sub_14F198
MOV             R8, #1
MOV             R7, #0
STRB            R8, [R0,#-0x45]
STRB            R7, [R0,#-0x44]
STRB            R7, [R0,#0x3F8]
STRB            R8, [R0,#-0x43]
STR             R7, [R0,#0x3FC]
SUB             R4, R0, #0x48 ; 'H'
MOV             R1, R7
STRB            R8, [R0,#-0x42]
BL              sub_14C3E8
MOV             R1, #1
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14C450
LDR             R1, [R5,#8]
MOV             R2, #0
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14E6E0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14C430
STRB            R7, [R4,#0x13A]
VSTR            S24, [R4,#0x10]
VSTR            S23, [R4,#0x14]
VSTR            S20, [R4,#0x18]
VSTR            S19, [R4,#0x1C]
VSTR            S18, [R4,#0x20]
VSTR            S17, [R4,#0x24]
VLDR            S0, [SP,#0x130+var_78]
VSTR            S0, [R4,#0x28]
STR             R5, [R4,#0x2C]
LDR             R0, [SP,#0x130+var_78]
ANDS            R0, R0, #0xFF
BEQ             loc_298CC4
CMP             R0, #1
BEQ             loc_298CA4
CMP             R0, #2
BNE             loc_298CD0
B               loc_298CB4
MOV             R0, #0xD
STRB            R0, [R4]
STRB            R7, [R4,#2]
B               loc_298CD0
MOV             R0, #0xD
STRB            R0, [R4]
STRB            R8, [R4,#2]
B               loc_298CD0
MOV             R0, #5
STRB            R0, [R4]
STRB            R7, [R4,#2]
ADD             R0, R6, #4
STR             R0, [SP,#0x130+var_114]
STR             R0, [SP,#0x130+var_118]
STR             R4, [SP,#0x130+var_11C]
LDR             R2, [R9]
LDR             R1, [R9,#4]
LDR             R4, =0x2AAAAAAB
LDR             R0, [SP,#0x130+var_30]
SUB             R2, R1, R2
LDR             R3, [R9,#8]
SMULL           R12, R2, R4, R2
ADD             R10, R0, #0x2C ; ','
MOV             R0, R9
MOV             R12, R2,ASR#1
SUB             R2, R12, R2,ASR#31
ADD             R12, R2, #1
CMP             R12, R3
BLS             loc_298D74
LDR             R0, [R10,#4]
MOV             R1, #1
LDR             R2, [R10]
CMP             R0, #1
MOVLS           R0, R1
MOV             R1, #0
STRD            R0, R1, [SP,#0x130+var_FC]
STR             R2, [SP,#0x130+var_100]
STR             R1, [SP,#0x130+var_F4]
STR             R1, [SP,#0x130+var_F0]
STR             R1, [SP,#0x130+var_EC]
LDR             R0, [R10,#0x14]
MOV             R5, R12
ADD             R6, SP, #0x130+var_100
MOV             R1, R0,LSL#1
CMP             R1, R5
MOVCC           R1, R5
MOV             R0, R6
BL              sub_625E58
CMP             R0, #0
NOP
BNE             loc_298DC4
B               loc_298DAC
CMP             R1, #0
BEQ             loc_298D9C
LDR             R3, [SP,#0x130+var_11C]
ADD             R2, SP, #0x130+var_118
STR             R3, [R1],#4
STR             R2, [R1]
LDR             R2, [SP,#0x130+var_114]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R1, [SP,#0x130+var_114]
LDR             R1, [R0,#4]
ADD             R1, R1, #0xC
STR             R1, [R9,#4]
B               loc_299270
MOV             R1, R5
MOV             R0, R6
BL              sub_625E58
CMP             R0, #0
NOP
BEQ             loc_298E94
ADD             R8, R10, #0xC
LDR             R0, =0x2AAAAAAB
LDM             R8, {R8,R11}
SUB             R1, R11, R8
SMULL           R0, R1, R0, R1
LDR             R0, [SP,#0x130+var_EC]
MOV             R2, R1,ASR#1
SUB             R2, R2, R1,ASR#31
CMP             R2, R0
ADD             R1, SP, #0x130+var_F4
BHI             loc_29907C
STR             R1, [SP,#0x130+var_8C]
LDR             R5, [SP,#0x130+var_F0]
LDR             R6, [SP,#0x130+var_F4]
CMP             R8, R11
BNE             loc_298FB8
CMP             R6, R5
BEQ             loc_298E74
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_298E60
LDR             R7, [R4]
CMP             R7, #0
BEQ             loc_298E60
LDR             R0, [R7,#0x444]
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
ADD             R0, R7, #0x48 ; 'H'
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x48 ; 'H'
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_298E0C
LDR             R0, [SP,#0x130+var_8C]
LDR             R1, [R0]
STR             R1, [R0,#4]
B               loc_29907C
DCFS 14.0
DCD dword_6D1F40
DCD 0x448
DCD 0x2AAAAAAB
ADD             R8, R6, #0xC
LDR             R5, [SP,#0x130+var_F0]
LDR             R6, [SP,#0x130+var_F4]
MOV             R10, #0
STR             R10, [SP,#0x130+var_EC]
CMP             R6, R5
BEQ             loc_298F18
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_298F04
LDR             R7, [R4]
CMP             R7, #0
BEQ             loc_298F04
LDR             R0, [R7,#0x444]
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
ADD             R0, R7, #0x48 ; 'H'
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x48 ; 'H'
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_298EB0
STR             R10, [R8]
STR             R10, [R8,#4]
LDR             R0, [SP,#0x130+var_F8]
STR             R10, [SP,#0x130+var_F8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R5, [SP,#0x130+var_F0]
LDR             R6, [SP,#0x130+var_F4]
CMP             R6, R5
BEQ             loc_298FA8
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_298F94
LDR             R7, [R4]
CMP             R7, #0
BEQ             loc_298F94
LDR             R0, [R7,#0x444]
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
ADD             R0, R7, #0x48 ; 'H'
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x48 ; 'H'
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_298F40
LDR             R0, [SP,#0x130+var_F8]
CMP             R0, #0
BEQ             loc_299270
B               loc_299268
CMP             R6, R5
BEQ             loc_299028
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_299014
LDR             R7, [R4]
CMP             R7, #0
BEQ             loc_299014
LDR             R0, [R7,#0x444]
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
ADD             R0, R7, #0x48 ; 'H'
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x48 ; 'H'
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_298FC0
LDR             R0, [SP,#0x130+var_8C]
CMP             R8, R11
LDR             R0, [R0]
BEQ             loc_299074
MOVS            R2, R0
BEQ             loc_299064
VLDR            S0, [R8]
ADD             R1, R8, #4
VSTR            S0, [R2]
STR             R1, [R0,#4]
LDR             R3, [R8,#8]
ADD             R2, R0, #4
STR             R3, [R0,#8]
STR             R2, [R3]
STR             R2, [R8,#8]
ADD             R8, R8, #0xC
CMP             R8, R11
ADD             R0, R0, #0xC
BNE             loc_299038
LDR             R1, [SP,#0x130+var_8C]
STR             R0, [R1,#4]
ADD             R4, SP, #0x130+var_F0
LDR             R2, [SP,#0x130+var_F4]
LDM             R4, {R1,R3}
ADD             R12, SP, #0x130+var_100
LDR             R0, =0x2AAAAAAB
SUB             R1, R1, R2
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
ADD             R0, R0, #1
CMP             R0, R3
BHI             loc_2990E4
LDR             R0, [SP,#0x130+var_F0]
CMP             R0, #0
BEQ             loc_2990D8
LDR             R2, [SP,#0x130+var_11C]
ADD             R1, SP, #0x130+var_118
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x130+var_114]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x130+var_114]
LDR             R0, [SP,#0x130+var_F0]
ADD             R0, R0, #0xC
STR             R0, [SP,#0x130+var_F0]
MOV             R0, R10
ADD             R1, SP, #0x130+var_100
LDM             R0, {R2,R5}
MOV             R4, #0
ADD             R11, R12, #0xC
VLDM            R1, {S0-S1}
ADD             R1, R10, #8
STR             R2, [SP,#0x130+var_100]
STR             R5, [SP,#0x130+var_FC]
ADD             R10, R10, #0xC
VSTM            R0, {S0-S1}
ADD             R3, R10, #8
LDR             R0, [R1]
VLDR            S0, [SP,#0x130+var_F8]
STR             R0, [SP,#0x130+var_F8]
VSTR            S0, [R1]
LDR             R0, [R10]
VLDR            S0, [SP,#0x130+var_F4]
STR             R0, [SP,#0x130+var_F4]
VSTR            S0, [R10]
LDR             R1, [R10,#4]
LDR             R0, [SP,#0x130+var_F0]
STR             R1, [SP,#0x130+var_F0]
STR             R0, [R10,#4]
LDR             R0, [SP,#0x130+var_EC]
LDR             R1, [R3]
STR             R0, [R3]
LDR             R6, [SP,#0x130+var_F0]
LDR             R7, [SP,#0x130+var_F4]
STR             R4, [SP,#0x130+var_EC]
CMP             R7, R6
BEQ             loc_2991CC
SUB             R6, R6, #0xC
ADD             R1, R6, #4
LDR             R0, [R6,#8]
MOV             R5, R6
CMP             R0, R1
BNE             loc_2991B8
LDR             R8, [R5]
CMP             R8, #0
BEQ             loc_2991B8
LDR             R0, [R8,#0x444]
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
ADD             R0, R8, #0x48 ; 'H'
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x48 ; 'H'
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_299164
STR             R4, [R11]
STR             R4, [R11,#4]
LDR             R0, [SP,#0x130+var_F8]
STR             R4, [SP,#0x130+var_F8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R5, [SP,#0x130+var_F0]
LDR             R6, [SP,#0x130+var_F4]
CMP             R6, R5
BEQ             loc_29925C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_299248
LDR             R7, [R4]
CMP             R7, #0
BEQ             loc_299248
LDR             R0, [R7,#0x444]
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
ADD             R0, R7, #0x48 ; 'H'
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x48 ; 'H'
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_2991F4
LDR             R0, [SP,#0x130+var_F8]
CMP             R0, #0
BEQ             loc_299270
NOP
BL              sub_2FF5D4
LDR             R0, =dword_6D1F40
VLDR            S1, [SP,#0x130+var_D0]
VLDR            S0, [SP,#0x130+var_104]
BL              sub_47EAA4
VADD.F32        S16, S0, S16
LDR             R0, [SP,#0x130+var_74]
LDR             R1, [SP,#0x130+var_114]
CMP             R1, R0
BNE             loc_2992D4
LDR             R0, [SP,#0x130+var_11C]
CMP             R0, #0
BEQ             loc_2992D4
MOV             R4, R0
LDR             R0, [R0,#0x444]
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
ADD             R0, R4, #0x48 ; 'H'
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x48 ; 'H'
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x130+var_118]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x130+var_94]
ADD             R0, R0, #1
MOV             R1, R0
STR             R0, [SP,#0x130+var_94]
LDR             R0, [SP,#0x130+var_E0]
CMP             R1, R0
BCC             loc_298AB0
LDR             R0, =dword_6D1F40
VLDR            S1, [SP,#0x130+var_B8]
VLDR            S0, [SP,#0x130+var_E4]
BL              sub_47EAA4
VADD.F32        S25, S0, S25
LDR             R0, [SP,#0x130+var_A8]
LDR             R1, [SP,#0x130+var_E8]
ADD             R0, R0, #1
CMP             R0, R1
STR             R0, [SP,#0x130+var_A8]
BCC             loc_298A98
LDR             R1, [SP,#0x130+var_30]
MOV             R0, #1
STRB            R0, [R1,#0x24]
ADD             SP, SP, #0xC0
VPOP            {D8-D15}
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
