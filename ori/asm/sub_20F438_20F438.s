PUSH            {R0-R2,R4-R11,LR}
MOV             R5, R2
VPUSH           {D8-D12}
SUB             SP, SP, #0x330
LDR             R2, [R2,#8]
LDRD            R0, R1, [R5,#0xC]
SXTB            R9, R2
UXTH            R0, R0
STR             R0, [SP,#0x388+var_36C]
UXTH            R0, R1
STR             R0, [SP,#0x388+var_BC]
ADD             R0, R5, #0x74 ; 't'
VLDR            S22, [R5,#0x7C]
VLDM            R0, {S19-S20}
LDR             R0, [R5,#0x28]
STR             R0, [SP,#0x388+var_154]
LDR             R0, [R5,#0x3C]
LDR             R1, [R5,#0x34]
LDR             R4, [R5,#0x30]
VLDR            S18, [R5,#0x8C]
TST             R0, #0xFF
STR             R1, [SP,#0x388+var_374]
LDR             R1, [R5,#0x38]
LDRNE           R8, =0x401
MOVEQ           R8, #0x400
STR             R1, [SP,#0x388+var_370]
MOV             R0, R8
BL              sub_11C418
VMOV            S16, R0
MOV             R0, R8
BL              sub_485B0C
LDR             R12, =off_6CE970
MOV             R0, R4,LSL#25
CMN             R9, #1
AND             R11, R4, #7
MOV             R10, R0,LSR#28
BEQ             loc_20FA58
LDR             R0, =0x1D07
LDR             R2, =sub_1605EC
MOV             R7, #0xA
MOV             R4, #1
SMULBB          R1, R9, R0
LDR             R0, =off_6CE970
STR             R1, [SP,#0x388+var_150]
LDR             R0, [R0]
ADD             R0, R0, R1,LSL#2
ADD             R6, R0, R2
MOV             R0, #0
ADD             R1, SP, #0x388+var_288
STRH            R0, [SP,#0x388+var_368]
STR             R0, [SP,#0x388+var_168]
STRH            R0, [SP,#0x388+var_2E8]
STR             R0, [SP,#0x388+var_164]
STRH            R0, [R1,#0x20]
STR             R0, [SP,#0x388+var_160]
STRH            R0, [R1,#0xA0]
LDR             R2, =unk_6E8CD0
STR             R0, [SP,#0x388+var_15C]
ADD             R0, SP, #0x388+var_368
MOV             R1, #0
STRD            R0, R1, [SP,#0x388+var_380]
STR             R2, [SP,#0x388+var_384]; int
VLDR            S0, [R2,#(flt_6E8EC0 - 0x6E8CD0)]
VSTR            S0, [SP,#0x388+var_378]
LDR             R0, [SP,#0x388+var_378]
MOV             R1, R7
BL              sub_127F6C
CMP             R0, #0
NOP
BEQ             loc_20F564
ADD             R2, R7, R7,LSL#2
ADD             R4, R4, #1
CMP             R4, #0x40 ; '@'
MOV             R7, R2,LSL#1
BCC             loc_20F538
VLDR            S0, [SP,#0x388+var_378]
LDR             R3, =aD_3; "%d"
VSTR            S0, [SP,#0x388+var_388]
LDRD            R0, R1, [SP,#0x388+var_380]
MOV             R2, #0x3F ; '?'
ADD             R0, R0, R1,LSL#7
MOV             R1, #0x40 ; '@'
BL              sub_465A98
LDRD            R0, R1, [SP,#0x388+var_380]
MOV             R7, #0xA
ADD             R0, R0, R1,LSL#2
MOV             R1, #1
STR             R4, [R0,#0x200]
ADD             R0, SP, #0x388+var_368
STR             R0, [SP,#0x388+var_378]; int
LDR             R0, [SP,#0x388+var_384]
STR             R1, [SP,#0x388+var_380]
MOV             R4, R1
VLDR            S0, [R0,#(flt_6E8EC4 - 0x6E8CD0)]
VSTR            S0, [SP,#0x388+var_388]
LDR             R0, [SP,#0x388+var_388]
MOV             R1, R7
BL              sub_127F6C
CMP             R0, #0
NOP
BEQ             loc_20F5E0
ADD             R2, R7, R7,LSL#2
ADD             R4, R4, #1
CMP             R4, #0x40 ; '@'
MOV             R7, R2,LSL#1
BCC             loc_20F5B4
LDR             R1, [SP,#0x388+var_380]
LDR             R0, [SP,#0x388+var_378]
LDR             R3, =aD_3; "%d"
MOV             R2, #0x3F ; '?'
ADD             R0, R0, R1,LSL#7
MOV             R1, #0x40 ; '@'
BL              sub_465A98
LDR             R1, [SP,#0x388+var_380]
LDR             R0, [SP,#0x388+var_378]
MOV             R7, #0xA
ADD             R0, R0, R1,LSL#2
STR             R4, [R0,#0x200]
LDR             R1, [SP,#0x388+var_384]
ADD             R0, SP, #0x388+var_368
STR             R0, [SP,#0x388+var_380]
MOV             R0, #2
STR             R0, [SP,#0x388+var_37C]
VLDR            S0, [R1,#(flt_6E8EC8 - 0x6E8CD0)]
MOV             R4, #1
VSTR            S0, [SP,#0x388+var_388]
LDR             R0, [SP,#0x388+var_388]
MOV             R1, R7
BL              sub_127F6C
CMP             R0, #0
NOP
BEQ             loc_20F65C
ADD             R2, R7, R7,LSL#2
ADD             R4, R4, #1
CMP             R4, #0x40 ; '@'
MOV             R7, R2,LSL#1
BCC             loc_20F630
LDRD            R0, R1, [SP,#0x388+var_380]
LDR             R3, =aD_3; "%d"
MOV             R2, #0x3F ; '?'
ADD             R0, R0, R1,LSL#7
MOV             R1, #0x40 ; '@'
BL              sub_465A98
LDR             R0, [SP,#0x388+var_37C]
LDR             R1, [SP,#0x388+var_380]
MOV             R7, #0xA
ADD             R0, R1, R0,LSL#2
STR             R4, [R0,#0x200]
LDR             R1, [SP,#0x388+var_384]
ADD             R0, SP, #0x388+var_368
STR             R0, [SP,#0x388+var_380]
MOV             R0, #3
STR             R0, [SP,#0x388+var_37C]; int
VLDR            S0, [R1,#(flt_6E8ECC - 0x6E8CD0)]
MOV             R4, #1
VSTR            S0, [SP,#0x388+var_384]
LDR             R0, [SP,#0x388+var_384]
MOV             R1, R7
BL              sub_127F6C
CMP             R0, #0
NOP
BEQ             loc_20F6D4
ADD             R2, R7, R7,LSL#2
ADD             R4, R4, #1
CMP             R4, #0x40 ; '@'
MOV             R7, R2,LSL#1
BCC             loc_20F6A8
VLDR            S0, [SP,#0x388+var_384]
LDR             R3, =aD_3; "%d"
VSTR            S0, [SP,#0x388+var_388]
LDRD            R0, R1, [SP,#0x388+var_380]
MOV             R2, #0x3F ; '?'
ADD             R0, R0, R1,LSL#7
MOV             R1, #0x40 ; '@'
BL              sub_465A98
LDR             R0, [SP,#0x388+var_37C]
LDR             R1, [SP,#0x388+var_380]
ADD             R0, R1, R0,LSL#2
STR             R4, [R0,#0x200]
LDR             R0, =dword_6E8ED0
ADD             R4, R6, #0x7000
CMP             R0, #0
MOVNE           R1, #0xFFFFFFFF
STR             R0, [R4,#0x2F0]
STRNE           R1, [R0]
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x138000
ADD             R0, R0, #0xF60
LDR             R0, [R0,#0x20]
MOV             R1, R0
MOV             R0, R6
BL              sub_5463E4
LDR             R0, [SP,#0x388+var_154]
LDR             R1, [R4,#0x3B8]
LDR             R7, =0x139014
AND             R0, R0, #1
EOR             R0, R0, #1
BIC             R1, R1, #1
ORR             R0, R0, R1
STR             R0, [R4,#0x3B8]
LDR             R0, =0x7418
ADD             R2, SP, #0x388+var_368
MOV             R3, #0
STR             R8, [R0,R6]
LDR             R0, =off_6CE970
LDR             R1, [SP,#0x388+var_36C]
LDR             R0, [R0]
ADD             R4, R0, R7
LDR             R0, [SP,#0x388+var_150]
ADD             R0, R4, R0,LSL#2
ADD             R0, R0, #0x27400
ADD             R0, R0, #0x1D8
BL              sub_545B80
LDR             R1, =0x4A2E4
MOV             R0, #0xFF
STRB            R0, [R1,R4]
LDR             R0, [SP,#0x388+var_374]
BL              sub_146084
MOV             R4, R0
LDR             R0, [SP,#0x388+var_370]
BL              sub_146084
LDR             R1, =off_6CE970
LDRH            LR, [R4,#0xA]
LDRH            R3, [R0,#0xA]
LDR             R12, [R1]
LDRSH           R1, [R0,#4]
STR             R1, [SP,#0x388+var_374]; int
LDRSH           R1, [R0,#6]
STR             R1, [SP,#0x388+var_370]; int
LDRSH           R1, [R4,#4]
STR             R1, [SP,#0x388+var_388]; float
LDRSH           R2, [R4,#6]
ADD             R1, R12, R7
STR             R1, [SP,#0x388+var_36C]
LDRSH           R1, [R4,#8]
ADD             R2, R2, R2,LSR#31
STR             R1, [SP,#0x388+var_380]; char
AND             R1, LR, #0xFF
STR             R1, [SP,#0x388+var_138]
LDR             R1, [SP,#0x388+var_374]
AND             LR, R3, #0xFF
MOV             R3, R2,ASR#1; int
ADD             R7, R1, R1,LSR#31
LDR             R1, [SP,#0x388+var_370]
MOV             R7, R7,ASR#1
ADD             R12, R1, R1,LSR#31
LDR             R1, [SP,#0x388+var_388]
MOV             R12, R12,ASR#1
ADD             R1, R1, R1,LSR#31
MOV             R1, R1,ASR#1
STR             R1, [SP,#0x388+var_144]
LDR             R1, [R4]
LDRSH           R2, [R0,#8]
VLDR            S2, [R0]
VLDR            S1, [R0,#0xC]
ADD             R0, SP, #0x388+var_374
STR             R1, [SP,#0x388+var_140]
VLDR            S0, [R4,#0xC]
STM             R0, {R2,LR}
ADD             R0, SP, #0x388+var_37C
STM             R0, {R7,R12}
LDR             R0, [SP,#0x388+var_380]
LDR             R2, [SP,#0x388+var_138]
STMEA           SP, {R0,R2}
VSTR            S2, [SP,#0x388+var_380]
LDR             R0, [SP,#0x388+var_150]
LDR             R1, [SP,#0x388+var_36C]
LDR             R2, [SP,#0x388+var_144]; int
ADD             R0, R1, R0,LSL#2
ADD             R0, R0, #0x27400
LDR             R1, [SP,#0x388+var_140]; int
ADD             R0, R0, #0x1D8; int
BL              sub_5462C8
LDR             R0, [SP,#0x388+var_BC]
VLDR            S24, =0.0
CMP             R0, #0
BEQ             loc_20FCCC
VSTR            S24, [SP,#0x388+var_11C]
VSTR            S24, [SP,#0x388+var_118]
VSTR            S24, [SP,#0x388+var_108]
VSTR            S24, [SP,#0x388+var_104]
VLDR            S0, =-8.0
VLDR            S1, =32.0
VLDR            S2, =8.0
VSTR            S24, [SP,#0x388+var_100]
ADD             R2, SP, #0x388+var_114
VLDR            S4, =-200.0
VLDR            S5, =120.0
VLDR            S6, =200.0
VLDR            S7, =-120.0
MOV             R0, #5
VSTM            R2, {S0-S2}
ADD             R2, SP, #0x388+var_FC
VSTR            S24, [SP,#0x388+var_F0]
MOV             R1, #8
VSTM            R2, {S0-S2}
ADD             R2, SP, #0x388+var_12C
VLDR            S3, =4096.0
MOV             R7, #0
VSTM            R2, {S4-S7}
STRB            R0, [SP,#0x388+var_EC]
LDR             R0, =dword_6581F0
STRB            R1, [SP,#0x388+var_EB]
VSTR            S3, [SP,#0x388+var_E8]
LDR             R0, [R0]
STR             R0, [SP,#0x388+var_E4]
VSTR            S24, [SP,#0x388+var_E0]
VSTR            S24, [SP,#0x388+var_DC]
MOV             R0, R8
STRB            R7, [SP,#0x388+var_D8]
STR             R6, [SP,#0x388+var_130]
BL              sub_11C418
MOV             R4, R0
MOV             R0, R8
BL              sub_485B0C
MOV             R2, R0
RSB             R3, R4, #0
RSB             R12, R2, #0
MOV             R0, R0,LSR#1
ADD             R2, R3, R3,LSR#31
MOV             R1, R4,LSR#1
VMOV            S1, R0
VMOV            S0, R1
MOV             R0, R2,ASR#1
ADD             R1, R12, R12,LSR#31
VMOV            S3, R0
MOV             R1, R1,ASR#1
VMOV            S2, R1
VCVT.F32.U32    S1, S1
VCVT.F32.U32    S0, S0
VMOV.F32        S25, S24
VCVT.F32.S32    S3, S3
LDR             R0, =off_6CE970
VCVT.F32.S32    S2, S2
VSTR            S3, [SP,#0x388+var_12C]
VSTR            S1, [SP,#0x388+var_128]
VSTR            S0, [SP,#0x388+var_124]
VSTR            S2, [SP,#0x388+var_120]
VSTR            S25, [SP,#0x388+var_E4]
LDR             R1, [SP,#0x388+var_BC]
LDR             R0, [R0]
BL              sub_52F538
MOV             R4, R0
LDR             R0, [R0]
CMP             R8, #0x400
BEQ             loc_20FAF8
LDR             R3, [R0,#0x24]
MOV             R2, #0
ADD             R1, SP, #0x388+var_8C
MOV             R0, R4
BLX             R3
LDR             R0, =off_6CE970
MOV             R1, #0
LDR             R2, [R0]
LDR             R0, =0x121134
ADD             R0, R0, R2
BL              sub_59CDE8
VLDR            S0, [SP,#0x388+var_84]
ADD             R2, R0, #0x1E8
ADD             R1, R0, #0x1A8
VNEG.F32        S0, S0
ADD             R0, SP, #0x388+var_148
BL              sub_47FD3C
VLDR            S0, [SP,#0x388+var_13C]
VLDR            S1, [SP,#0x388+var_148]
ADD             R0, SP, #0x388+var_B8
VSUB.F32        S0, S0, S1
VCVT.F32.U32    S1, S16
VDIV.F32        S16, S1, S0
BL              sub_2A251C
MOV             R0, #1
MOV             R3, #0xFFFFFFFF
STMEA           SP, {R0,R7}
MOV             R2, R3
ADD             R1, SP, #0x388+var_B8
MOV             R0, R4
BL              sub_5ED4B0
ADD             R0, SP, #0x388+var_B8
NOP
BL              sub_5CE564
CMP             R0, #0
NOP
BEQ             loc_20FBA4
ADD             R1, SP, #0x388+var_78
ADD             R0, SP, #0x388+var_B8
BL              sub_5CE338
VLDR            S21, [SP,#0x388+var_78]
VLDR            S23, [SP,#0x388+var_74]
VLDR            S17, [SP,#0x388+var_70]
VLDR            S25, [SP,#0x388+var_6C]
B               loc_20FC68
LDR             R0, =0x139014
LDR             R2, [R12]
LDR             R1, =0x44A58
ADD             R0, R0, R2
ADD             R1, R1, R0
LDR             R2, =0x1D07
LDRB            R1, [R1]
ADD             R0, R0, #0x27400
ADD             R0, R0, #0x1D8
SMULBB          R2, R1, R2
ADD             R1, R0, R2,LSL#2
MOV             R2, R0
CMP             R2, R1
BEQ             loc_20FABC
LDR             R3, =0x72E4
LDR             R3, [R3,R2]
CMN             R3, #1
BNE             loc_20FAB0
LDR             R3, =0x5830
LDR             R3, [R3,R2]
TST             R3, #1
BEQ             loc_20FABC
ADD             R2, R2, #0x7400
ADD             R2, R2, #0x1C
B               loc_20FA88
CMP             R1, R2
BEQ             loc_20FAE4
SUB             R0, R2, R0
LDR             R2, =0x2346EEE1
SMULL           R2, R0, R2, R0
MOV             R2, R0,ASR#12
SUB             R0, R2, R0,ASR#31
SXTB            R9, R0
CMN             R9, #1
BNE             loc_20F4CC
MOV             R0, #0
ADD             SP, SP, #0x330
VPOP            {D8-D12}
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
LDR             R3, [R0,#0x2C]
MOV             R2, #1
ADD             R1, SP, #0x388+var_8C
MOV             R0, R4
BLX             R3
LDR             R0, =off_6CE970
VLDR            S0, [SP,#0x388+var_84]
LDR             R0, [R0]
VNEG.F32        S0, S0
ADD             R2, R0, #0x10C000
ADD             R1, R0, #0x10C000
ADD             R2, R2, #0x620
ADD             R1, R1, #0x5E0
ADD             R0, SP, #0x388+var_148
BL              sub_47FD3C
NOP
NOP
B               loc_20F9E8
DCD 0x401
DCD off_6CE970
DCD 0x1D07
DCD sub_1605EC
DCD unk_6E8CD0
DCD aD_3
DCD dword_6E8ED0
DCD 0x7418
DCD 0x139014
DCD 0x4A2E4
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
DCD 0x121134
DCD 0x44A58
DCD 0x72E4
DCD 0x5830
DCD 0x2346EEE1
LDRSB           R0, [R4,#0xF6]
LDR             R1, =unk_642F32
VLDR            S1, =0.5
ADD             R0, R1, R0,LSL#1
LDRH            R0, [R0]
VMOV            S0, R0
LDR             R0, [SP,#0x388+var_BC]
VCVT.F32.U32    S17, S0
VNMUL.F32       S21, S17, S1
VMUL.F32        S23, S17, S1
BL              sub_47FF3C
CMP             R0, #0
NOP
BEQ             loc_20FBF8
LDR             R0, =off_6CE970
LDR             R1, [SP,#0x388+var_BC]
LDR             R0, [R0]
BL              sub_52F480
VLDR            S17, [R0,#0x15C]
NOP
B               loc_20FC68
LDR             R0, [R4]
LDR             R1, [R0,#0x54]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_20FC68
LDR             R0, [R4]
LDR             R1, [R0,#0x54]
MOV             R0, R4
BLX             R1
STRB            R7, [SP,#0x388+var_388]
STRH            R7, [SP,#0x388+var_384]
STRH            R7, [SP,#0x388+var_380]
STRH            R7, [SP,#0x388+var_37C]
STRH            R7, [SP,#0x388+var_388+2]
STRH            R7, [SP,#0x388+var_384+2]
STRH            R7, [SP,#0x388+var_380+2]
STRH            R7, [SP,#0x388+var_37C+2]
LDRB            R1, [R0,#0x30]
CMP             R1, #1
BNE             loc_20FC5C
LDR             R0, [R0,#0x9C]
MOV             R1, R0
MOV             R0, SP
BL              sub_146444
LDRSH           R0, [SP,#0x388+var_384]
VMOV            S0, R0
VCVT.F32.S32    S17, S0
VMUL.F32        S3, S25, S16
VMUL.F32        S0, S21, S16
VMUL.F32        S2, S23, S16
ADD             R0, SP, #0x388+var_8C
ADD             R2, SP, #0x388+var_E0
VLDM            R0, {S4-S5}
ADD             R0, SP, #0x388+var_114
ADD             R1, SP, #0x388+var_378
VMUL.F32        S1, S17, S16
VSTM            R0, {S0-S3}
ADD             R0, SP, #0x388+var_11C
VSTM            R0, {S4-S5}
ADD             R0, SP, #0x388+var_130
STRB            R11, [SP,#0x388+var_EC]
STRB            R10, [SP,#0x388+var_EB]
VSTR            S18, [SP,#0x388+var_E8]
VSTM            R2, {S19-S20}
BL              sub_3A3488
VMOV.F32        S16, S22
LDRSB           R11, [SP,#0x388+var_370]
LDRSB           R10, [SP,#0x388+var_370+1]
VLDR            S18, [SP,#0x388+var_36C]
VLDR            S19, [SP,#0x388+var_378]
VLDR            S17, [SP,#0x388+var_374]
B               loc_20FD00
MOV             R0, R8
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
MOV             R0, R8
VCVT.F32.U32    S0, S0
VADD.F32        S19, S0, S19
BL              sub_485B0C
MOV             R0, R0,LSR#1
VMOV            S0, R0
VMOV.F32        S16, S22
VCVT.F32.U32    S0, S0
VSUB.F32        S17, S0, S20
LDR             R4, =off_6CE970
LDR             R0, =0x139014
LDR             R2, =0x2CE0E
LDR             R3, [SP,#0x388+var_150]
LDR             R1, [R4]
MOV             R12, #0
CMP             R8, #0x400
ADD             R0, R0, R1
ORR             R1, R2, R2,ASR#14
ADD             R0, R0, R3,LSL#2
ADD             R2, R2, R0
ADD             R3, R0, R1
ADD             R1, R0, #0x2CC00
ADD             R0, R0, #0x2CC00
STRB            R11, [R2]
ADD             R0, R0, #0x214
STRB            R10, [R3]
VSTR            S18, [R1,#0x210]
STRB            R12, [R0]
BEQ             loc_20FE20
LDR             R2, [R4]
LDR             R0, =0x121134
MOV             R1, #0
ADD             R0, R0, R2
BL              sub_59CDE8
MOV             R4, R0
NOP
BL              sub_5E8254
VMOV.F32        S18, S0
MOV             R0, R4
BL              sub_5E8230
VMOV.F32        S2, S0
VNEG.F32        S0, S16
VMOV.F32        S1, S18
VCMP.F32        S18, S24
LDR             R1, =0x587C
MOV             R0, #1
VMRS            APSR_nzcv, FPSCR
STRB            R0, [R1,R6]
ADD             R1, R6, #0x5800
VCMPNE.F32      S2, S24
MOV             R0, R6
VSTR            S0, [R1,#0x2AC]
VMRSNE          APSR_nzcv, FPSCR
BEQ             loc_20FDBC
NOP
BL              sub_2C292C
ADD             R0, R6, #0x5800
LDR             R1, =0x5830
VSTR            S19, [R0,#0x48]
VSTR            S17, [R0,#0x4C]
VSTR            S19, [R0,#0x2A4]
VSTR            S17, [R0,#0x2A8]
LDR             R1, [R1,R6]
MOV             R0, R6
TST             R1, #1
BEQ             loc_20FDF0
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
BLX             R1
VMOV            S0, R9
LDR             R0, [SP,#0x388+var_2C]
LDR             R1, [SP,#0x388+var_30]
CMP             R0, #0
ADDNE           R2, R0, #4
VCVT.F32.S32    S0, S0
LDRH            R0, [R5,#2]
MOVEQ           R2, #0
BL              sub_145730
MOV             R0, #0
NOP
B               loc_20FAE8
LDR             R0, [R4]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_5E824C
LDR             R0, [R4]
VMOV.F32        S18, S0
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_5E8228
VMOV.F32        S2, S0
VMOV.F32        S0, S16
VMOV.F32        S1, S18
VCMP.F32        S18, S24
LDR             R0, =0x587C
MOV             R1, #0
VMRS            APSR_nzcv, FPSCR
STRB            R1, [R0,R6]
ADD             R1, R6, #0x5800
VCMPNE.F32      S2, S24
MOV             R0, R6
VSTR            S0, [R1,#0x2AC]
VMRSNE          APSR_nzcv, FPSCR
BEQ             loc_20FDBC
B               loc_20FDB4
