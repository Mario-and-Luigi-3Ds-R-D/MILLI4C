PUSH            {R4-R9,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R9, R2
LDR             R1, =0x3E7
MOV             R6, R3
VPUSH           {D8-D10}
SUB             SP, SP, #0x6C
MOV             R8, #0
LDR             R0, [R0]
ADD             R0, R0, R5
CMP             R0, R1
STR             R0, [R4]
MOVHI           R0, R1
STR             R0, [R4]
BL              sub_4635D8
BIC             R0, R7, #0xFF
MOV             R1, R8,LSL#8
ORR             R0, R0, R8
AND             R1, R1, #0xFF00
BIC             R0, R0, #0xFF00
ORR             R0, R0, R1
MOV             R8, #1
VLDR            S16, =-1.0
BIC             R0, R0, #0xFF
ORR             R0, R0, R6
MOV             R1, R8,LSL#8
BIC             R0, R0, #0xFF00
AND             R1, R1, #0xFF00
CMP             R6, #0
VMOV.F32        S17, S16
ORR             R7, R0, R1
VLDM            R9, {S18-S20}
ADDNE           R0, R4, #0x21C00
ADD             R4, R4, #4
VLDRNE          S16, [R0,#0x24C]
CMP             R5, #0
BLE             loc_2970D0
CMP             R8, #0
BEQ             loc_296C50
LDR             R3, =off_6CE970
VLDR            S0, =0.005
LDR             R0, =0xFFE683CC
CMP             R6, #0
VMUL.F32        S0, S18, S0
LDR             R3, [R3]
LDRNE           R1, =0x300B4
LDREQ           R1, =0x300B5
MOV             R2, #0
SUB             R0, R3, R0
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
BGE             loc_296CA8
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S1
ADD             R0, SP, #0xA0+var_98
MOV             R12, SP
ADD             R2, SP, #0xA0+var_98
VSTR            S0, [SP,#0xA0+var_7C]
VSTM            R0, {S18-S20}
VLDR            S18, =0.0
VLDR            S0, [R4,#0x13C]
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BLS             loc_296E30
VLDR            S1, [R4,#0x144]
VCMP.F32        S1, S18
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R4,#0x148]
VCMPEQ.F32      S1, S18
VMRSEQ          APSR_nzcv, FPSCR
VLDREQ          S1, [R4,#0x14C]
VCMPEQ.F32      S1, S18
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_296E30
LDR             R0, [R4,#0x140]
CMP             R0, #0
VMULEQ.F32      S6, S0, S0
MOVEQ           R5, #0
BEQ             loc_296D20
CMP             R0, #1
VMULEQ.F32      S4, S0, S0
MOVEQ           R3, #0
BEQ             loc_296DB0
B               loc_296E30
LDR             R0, [R4,#0x920]
LDR             R3, [R4,#0x924]
CMP             R3, R0
BEQ             loc_296E30
VLDR            S4, [R2,#8]
VLDR            S1, [R2]
VLDR            S5, [R2,#4]
VLDR            S0, [R0,#4]
ADD             R1, R0, #8
VSUB.F32        S0, S0, S1
VLDM            R1, {S2-S3}
VSUB.F32        S2, S2, S5
VSUB.F32        S3, S3, S4
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S3, S3
VCMPE.F32       S6, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_296DA0
VLDR            S0, [R4,#0x144]
ADD             R5, R5, #1
CMP             R5, #0x20 ; ' '
VADD.F32        S0, S1, S0
VSTR            S0, [R2]
VLDR            S1, [R4,#0x148]
VADD.F32        S0, S5, S1
VSTR            S0, [R2,#4]
VLDR            S1, [R4,#0x14C]
VADD.F32        S0, S4, S1
VSTR            S0, [R2,#8]
BCC             loc_296D20
B               loc_296E30
ADD             R0, R0, #0x10
CMP             R3, R0
BNE             loc_296D3C
B               loc_296E30
LDR             R0, [R4,#0x920]
LDR             R1, [R4,#0x924]
CMP             R1, R0
VLDRNE          S0, [R2]
VLDRNE          S3, [R2,#4]
BEQ             loc_296E30
VLDR            S2, [R0,#4]
VLDR            S1, [R0,#8]
VSUB.F32        S2, S2, S0
VSUB.F32        S1, S1, S3
VMUL.F32        S2, S2, S2
VMLA.F32        S2, S1, S1
VCMPE.F32       S4, S2
VMRS            APSR_nzcv, FPSCR
BLE             loc_296E24
VLDR            S1, [R4,#0x144]
ADD             R3, R3, #1
CMP             R3, #0x20 ; ' '
VADD.F32        S0, S0, S1
VSTR            S0, [R2]
VLDR            S1, [R4,#0x148]
VADD.F32        S0, S3, S1
VSTR            S0, [R2,#4]
VLDR            S0, [R2,#8]
VLDR            S1, [R4,#0x14C]
VADD.F32        S0, S0, S1
VSTR            S0, [R2,#8]
BCC             loc_296DB0
B               loc_296E30
ADD             R0, R0, #0x10
CMP             R1, R0
BNE             loc_296DC8
MOV             R2, #0
ADD             R1, R12, #0x14
MOV             R0, R4
BL              sub_5C4F84
VLDR            S1, [R4,#0x1DC]
VLDR            S0, [SP,#0xA0+var_8C]
VLDR            S2, =0.5
VCMPE.F32       S16, S18
VMLA.F32        S0, S1, S2
VSTR            S0, [SP,#0xA0+var_8C]
VLDR            S1, [R4,#0x180]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xA0+var_8C]
VLDR            S2, [R4,#0x184]
VLDR            S1, [SP,#0xA0+var_88]
VADD.F32        S2, S1, S2
VSTR            S2, [SP,#0xA0+var_88]
VLDR            S3, [R4,#0x188]
VLDR            S1, [SP,#0xA0+var_84]
VADD.F32        S1, S1, S3
VSTR            S1, [SP,#0xA0+var_84]
LDR             R0, [R4,#0x128]
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S17, S18
STR             R0, [SP,#0xA0+var_78]
VLDRCC          S16, [R4,#0x12C]
VSTR            S16, [SP,#0xA0+var_74]
VMRS            APSR_nzcv, FPSCR
BCS             loc_296ED8
VLDR            S3, [SP,#0xA0+var_98]
ADD             R0, SP, #0xA0+var_94
VLDR            S17, [R4,#0x130]
VSUB.F32        S3, S0, S3
VLDM            R0, {S4-S5}
VSUB.F32        S2, S2, S4
VSUB.F32        S0, S1, S5
VMUL.F32        S1, S3, S3
VMLA.F32        S1, S2, S2
VLDR            S2, [R4,#0x134]
VMLA.F32        S1, S0, S0
VSQRT.F32       S0, S1
VMLA.F32        S17, S2, S0
ADD             R0, R4, #0x168
ADD             R3, SP, #0xA0+var_54
ADD             R5, SP, #0xA0+var_60
VSTR            S17, [SP,#0xA0+var_70]
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
STM             R5, {R1-R3}
ADD             R5, R4, #0x800
LDRH            R1, [R0,#0x10]
ADD             R5, R5, #0x128
STRH            R1, [SP,#0xA0+var_3C]
LDRH            R0, [R0,#0x12]
STRH            R0, [SP,#0xA0+var_3A]
LDR             R0, [R4,#0x71C]
ADD             R0, R0, #1
AND             R0, R0, #0x1F
CMP             R0, #0x20 ; ' '
STR             R0, [R4,#0x71C]
BCS             loc_296FE4
ADD             R1, R0, R0,LSL#2
ADD             R1, R1, R0,LSL#7
ADD             R0, R5, R1,LSL#5
LDR             R1, [R0,#0x74]
CMP             R1, #3
BCS             loc_296FA8
B               loc_296F90
DCD 0x3E7
DCFS -1.0
DCD 0x300B4
DCD 0x300B5
DCFS 0.005
DCD 0xFFE683CC
DCD off_6CE970
DCFS 0.0
DCFS 0.5
LDR             R2, [R0,#4]
LDR             R0, [R0,#0x28]
LDR             R1, [R2,#0x30C]
ADD             R1, R1, R0
MOV             R0, R2
BL              sub_5B9E14
LDR             R0, [R4,#0x71C]
CMP             R0, #0x20 ; ' '
BCS             loc_296FE4
ADD             R1, R0, R0,LSL#2
ADD             R1, R1, R0,LSL#7
MOV             R2, #0x68 ; 'h'
ADD             R0, R5, R1,LSL#5
MOV             R1, SP
ADD             R0, R0, #8
BL              sub_127EB8
LDR             R1, [R4,#0x71C]
ADD             R0, R4, #0x21C00
ADD             R0, R0, #0x128
CMP             R1, #0x20 ; ' '
BCC             loc_296FEC
NOP
BL              sub_2FE484
ADD             R2, R1, R1,LSL#2
ADD             R1, R2, R1,LSL#7
ADD             R3, R5, R1,LSL#5
ADD             R5, R0, #0x118
LDM             R5, {R5,R12}
SUB             R1, R12, R5
MOV             R1, R1,ASR#2
SUB             R6, R1, #1
ADD             R1, R0, #0x110
LDM             R1, {R1,R2}
CMP             R2, R1
SUBCS           R1, R2, R1
MOVCS           R1, R1,ASR#2
BCS             loc_297034
SUB             R1, R12, R1
SUB             R12, R2, R5
MOV             R1, R1,ASR#2
ADD             R1, R1, R12,ASR#2
CMP             R6, R1
BLS             loc_297080
STR             R3, [R2]
LDR             R1, [R0,#0x114]
LDR             R2, [R0,#0x11C]
LDR             R3, [R0,#0x118]
ADD             R1, R1, #4
CMP             R2, R1
BHI             loc_297068
SUB             R2, R3, R2
BIC             R2, R2, #3
ADD             R1, R1, R2
B               loc_29707C
CMP             R3, R1
BLS             loc_29707C
SUB             R2, R2, R3
BIC             R2, R2, #3
ADD             R1, R1, R2
STR             R1, [R0,#0x114]
LDRD            R2, R3, [SP,#0xA0+var_98]
LDR             R0, [R4,#0x924]
LDR             R5, [R4,#0x920]
LDR             R1, [SP,#0xA0+var_90]
LDR             R12, [R4,#0x138]
SUB             R5, R0, R5
ADD             R5, R8, R5,ASR#4
CMP             R5, #0x20 ; ' '
BHI             loc_2970C4
CMP             R0, #0
BEQ             loc_2970B8
STR             R1, [R0,#0xC]
STR             R12, [R0]
STRD            R2, R3, [R0,#4]
LDR             R0, [R4,#0x924]
ADD             R0, R0, #0x10
STR             R0, [R4,#0x924]
ADD             SP, SP, #0x6C ; 'l'
VPOP            {D8-D10}
POP             {R4-R9,PC}
LDR             R0, [R4,#0x30C]
ADD             R1, R0, R5
MOV             R0, R4
BL              sub_5B9E14
ADD             SP, SP, #0x6C ; 'l'
VPOP            {D8-D10}
POP             {R4-R9,PC}
