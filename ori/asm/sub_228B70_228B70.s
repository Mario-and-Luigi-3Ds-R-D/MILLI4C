PUSH            {R4-R11,LR}
MOV             R6, R0
MOV             R5, R1
MOV             R10, R2
MOV             R9, R3
MOV             R11, #0
VPUSH           {D8-D9}
SUB             SP, SP, #0x6C
BL              sub_4635D8
BIC             R0, R4, #0xFF
MOV             R8, #1
VLDM            R10, {S17-S19}
ORR             R0, R0, R11
MOV             R1, R8,LSL#8
VLDR            S16, =-1.0
BIC             R0, R0, #0xFF00
AND             R1, R1, #0xFF00
CMP             R5, #0
ORR             R7, R0, R1
ADD             R4, R6, #4
BLE             loc_2290EC
CMP             R8, #0
BEQ             loc_228BF8
CMP             R11, #0
LDRNE           R1, =0x300B4
BEQ             loc_228CC8
LDR             R0, =off_6CE970
VLDR            S0, =0.005
LDR             R3, =0xFFE683CC
MOV             R2, #0
VMUL.F32        S0, S17, S0
LDR             R0, [R0]
SUB             R0, R0, R3
BL              sub_503414
VMOV            S1, R5
LDR             R0, [R4,#0x104]
SXTB            R1, R7
CMP             R1, #0
STR             R0, [SP,#0xA0+var_A0]
LDRNE           R0, [R4,#0x10C]
VCVT.F32.S32    S1, S1
MOVEQ           R0, #0
STR             R5, [SP,#0xA0+var_80]
STR             R0, [SP,#0xA0+var_9C]
VLDR            S0, [R4,#0x118]
VLDR            S2, [R4,#0x11C]
ADD             R1, R4, #0x120
VMLA.F32        S0, S2, S1
VLDM            R1, {S1-S2}
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S2
BGE             loc_228C50
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S1
ADD             R0, SP, #0xA0+var_98
MOV             R3, SP
ADD             R2, SP, #0xA0+var_98
VSTR            S0, [SP,#0xA0+var_7C]
VSTM            R0, {S17-S19}
VLDR            S17, =0.0
VLDR            S0, [R4,#0x13C]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_228E30
VLDR            S1, [R4,#0x144]
VCMP.F32        S1, S17
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R4,#0x148]
VCMPEQ.F32      S1, S17
VMRSEQ          APSR_nzcv, FPSCR
VLDREQ          S1, [R4,#0x14C]
VCMPEQ.F32      S1, S17
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_228E30
LDR             R0, [R4,#0x140]
CMP             R0, #0
VMULEQ.F32      S4, S0, S0
MOVEQ           R7, #0
BEQ             loc_228D20
CMP             R0, #1
VMULEQ.F32      S3, S0, S0
MOVEQ           R12, #0
BEQ             loc_228DB0
B               loc_228E30
CMP             R9, #0
LDREQ           R1, =0x300B5
BEQ             loc_228BD8
CMP             R9, #1
LDREQ           R1, =0x300B6
BEQ             loc_228BD8
CMP             R9, #2
LDREQ           R1, =0x300B7
BEQ             loc_228BD8
CMP             R9, #3
LDREQ           R1, =0x300B8
BEQ             loc_228BD8
CMP             R9, #4
LDREQ           R1, =0x300B9
BEQ             loc_228BD8
CMP             R9, #5
LDREQ           R1, =0x300BA
BEQ             loc_228BD8
CMP             R9, #6
LDREQ           R1, =0x300BB
LDRNE           R1, =0x300BC
B               loc_228BD8
LDR             R0, [R4,#0x920]
LDR             R12, [R4,#0x924]
CMP             R12, R0
BEQ             loc_228E30
VLDR            S5, [R2,#8]
VLDR            S1, [R2]
VLDR            S6, [R2,#4]
VLDR            S0, [R0,#4]
VLDR            S3, [R0,#8]
VLDR            S2, [R0,#0xC]
VSUB.F32        S0, S0, S1
VSUB.F32        S3, S3, S6
VSUB.F32        S2, S2, S5
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S3, S3
VMLA.F32        S0, S2, S2
VCMPE.F32       S4, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_228DA0
VLDR            S0, [R4,#0x144]
ADD             R7, R7, #1
CMP             R7, #0x20 ; ' '
VADD.F32        S0, S1, S0
VSTR            S0, [R2]
VLDR            S1, [R4,#0x148]
VADD.F32        S0, S6, S1
VSTR            S0, [R2,#4]
VLDR            S1, [R4,#0x14C]
VADD.F32        S0, S5, S1
VSTR            S0, [R2,#8]
BCC             loc_228D20
B               loc_228E30
ADD             R0, R0, #0x10
CMP             R12, R0
BNE             loc_228D3C
B               loc_228E30
LDR             R0, [R4,#0x920]
LDR             R1, [R4,#0x924]
CMP             R1, R0
VLDRNE          S0, [R2]
VLDRNE          S4, [R2,#4]
BEQ             loc_228E30
VLDR            S2, [R0,#4]
VLDR            S1, [R0,#8]
VSUB.F32        S2, S2, S0
VSUB.F32        S1, S1, S4
VMUL.F32        S2, S2, S2
VMLA.F32        S2, S1, S1
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
BLE             loc_228E24
VLDR            S1, [R4,#0x144]
ADD             R12, R12, #1
CMP             R12, #0x20 ; ' '
VADD.F32        S0, S0, S1
VSTR            S0, [R2]
VLDR            S1, [R4,#0x148]
VADD.F32        S0, S4, S1
VSTR            S0, [R2,#4]
VLDR            S0, [R2,#8]
VLDR            S1, [R4,#0x14C]
VADD.F32        S0, S0, S1
VSTR            S0, [R2,#8]
BCC             loc_228DB0
B               loc_228E30
ADD             R0, R0, #0x10
CMP             R1, R0
BNE             loc_228DC8
MOV             R2, #0
ADD             R1, R3, #0x14
MOV             R0, R4
BL              sub_5C4F84
VLDR            S1, [R4,#0x1DC]
VLDR            S0, [SP,#0xA0+var_8C]
VLDR            S2, =0.5
VMLA.F32        S0, S1, S2
VSTR            S0, [SP,#0xA0+var_8C]
VLDR            S1, [R4,#0x180]
VADD.F32        S3, S0, S1
VSTR            S3, [SP,#0xA0+var_8C]
VLDR            S1, [R4,#0x184]
VLDR            S0, [SP,#0xA0+var_88]
VADD.F32        S2, S0, S1
VSTR            S2, [SP,#0xA0+var_88]
VLDR            S1, [R4,#0x188]
VLDR            S0, [SP,#0xA0+var_84]
VADD.F32        S1, S0, S1
VMOV.F32        S0, S16
VCMPE.F32       S0, S17
VSTR            S1, [SP,#0xA0+var_84]
LDR             R0, [R4,#0x128]
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S16, S17
STR             R0, [SP,#0xA0+var_78]
VLDRCC          S0, [R4,#0x12C]
VSTR            S0, [SP,#0xA0+var_74]
VMRS            APSR_nzcv, FPSCR
BCS             loc_228EDC
VLDR            S5, [SP,#0xA0+var_98]
VLDR            S0, [SP,#0xA0+var_90]
VLDR            S4, [SP,#0xA0+var_94]
VSUB.F32        S3, S3, S5
VSUB.F32        S0, S1, S0
VSUB.F32        S2, S2, S4
VLDR            S16, [R4,#0x130]
VMUL.F32        S1, S3, S3
VMLA.F32        S1, S2, S2
VLDR            S2, [R4,#0x134]
VMLA.F32        S1, S0, S0
VSQRT.F32       S0, S1
VMLA.F32        S16, S2, S0
ADD             R0, R4, #0x168
ADD             R3, SP, #0xA0+var_54
ADD             R7, SP, #0xA0+var_60
VSTR            S16, [SP,#0xA0+var_70]
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R4, #0x174
ADD             R3, SP, #0xA0+var_48
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R4, #0x150
ADD             R3, SP, #0xA0+var_6C
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R1, R4, #0x15C
ADD             R0, R4, #0x100
LDM             R1, {R1-R3}
STM             R7, {R1-R3}
LDRH            R1, [R0,#0x10]
STRH            R1, [SP,#0xA0+var_3C]
LDRH            R0, [R0,#0x12]
STRH            R0, [SP,#0xA0+var_3A]
B               loc_228F74
DCFS -1.0
DCD 0x300B4
DCFS 0.005
DCD 0xFFE683CC
DCD off_6CE970
DCFS 0.0
DCD 0x300B5
DCD 0x300B6
DCD 0x300B7
DCD 0x300B8
DCD 0x300B9
DCD 0x300BA
DCD 0x300BB
DCD 0x300BC
DCFS 0.5
LDR             R0, [R4,#0x71C]
ADD             R7, R4, #0x800
ADD             R7, R7, #0x128
ADD             R0, R0, #1
AND             R0, R0, #0x1F
CMP             R0, #0x20 ; ' '
STR             R0, [R4,#0x71C]
BCS             loc_229000
ADD             R1, R0, R0,LSL#2
ADD             R1, R1, R0,LSL#7
ADD             R0, R7, R1,LSL#5
LDR             R1, [R0,#0x74]
CMP             R1, #3
BCS             loc_228FC4
LDR             R2, [R0,#4]
LDR             R0, [R0,#0x28]
LDR             R1, [R2,#0x30C]
ADD             R1, R1, R0
MOV             R0, R2
BL              sub_5B9E14
LDR             R0, [R4,#0x71C]
CMP             R0, #0x20 ; ' '
BCS             loc_229000
ADD             R1, R0, R0,LSL#2
ADD             R1, R1, R0,LSL#7
MOV             R2, #0x68 ; 'h'
ADD             R0, R7, R1,LSL#5
MOV             R1, SP
ADD             R0, R0, #8
BL              sub_127EB8
LDR             R1, [R4,#0x71C]
ADD             R0, R4, #0x21C00
ADD             R0, R0, #0x128
CMP             R1, #0x20 ; ' '
BCC             loc_229008
NOP
BL              sub_2FE484
ADD             R2, R1, R1,LSL#2
ADD             R1, R2, R1,LSL#7
LDR             R3, [R0,#0x110]
ADD             R2, R7, R1,LSL#5
ADD             R7, R0, #0x118
LDM             R7, {R7,R12}
SUB             R1, R12, R7
MOV             R1, R1,ASR#2
SUB             R9, R1, #1
LDR             R1, [R0,#0x114]
CMP             R1, R3
SUBCS           R3, R1, R3
MOVCS           R3, R3,ASR#2
BCS             loc_229050
SUB             R3, R12, R3
SUB             R12, R1, R7
MOV             R3, R3,ASR#2
ADD             R3, R3, R12,ASR#2
CMP             R9, R3
BLS             loc_22909C
STR             R2, [R1]
LDR             R1, [R0,#0x114]
LDR             R2, [R0,#0x11C]
LDR             R3, [R0,#0x118]
ADD             R1, R1, #4
CMP             R2, R1
BHI             loc_229084
SUB             R2, R3, R2
BIC             R2, R2, #3
ADD             R1, R1, R2
B               loc_229098
CMP             R3, R1
BLS             loc_229098
SUB             R2, R2, R3
BIC             R2, R2, #3
ADD             R1, R1, R2
STR             R1, [R0,#0x114]
ADD             R0, SP, #0xA0+var_98
LDR             R7, [R4,#0x920]
LDM             R0, {R1,R3}
LDR             R0, [R4,#0x924]
LDR             R2, [SP,#0xA0+var_90]
LDR             R12, [R4,#0x138]
SUB             R7, R0, R7
ADD             R7, R8, R7,ASR#4
CMP             R7, #0x20 ; ' '
BHI             loc_2290FC
CMP             R0, #0
BEQ             loc_2290DC
ADD             R7, R0, #4
STR             R2, [R0,#0xC]
STR             R12, [R0]
STM             R7, {R1,R3}
LDR             R0, [R4,#0x924]
ADD             R0, R0, #0x10
STR             R0, [R4,#0x924]
B               loc_2290FC
LDR             R1, [R4,#0x30C]
MOV             R0, R4
ADD             R1, R1, R5
BL              sub_5B9E14
LDR             R1, [R6]
LDR             R0, =0x3E7
ADD             R1, R1, R5
CMP             R1, R0
MOVLS           R0, R1
STR             R0, [R6]
ADD             SP, SP, #0x6C ; 'l'
VPOP            {D8-D9}
POP             {R4-R11,PC}
