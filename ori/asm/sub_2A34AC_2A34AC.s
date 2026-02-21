PUSH            {R4-R10,LR}
MOV             R6, R0
LDR             R7, =off_6CE970
VLDR            S2, =0.0039062
VPUSH           {D8}
SUB             SP, SP, #0x38
LDR             R0, [R7]
VLDR            S0, [R6,#0x98]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S1, R0
ADD             R0, R6, #0x100
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
VMUL.F32        S17, S0, S2
VMOV.F32        S0, S17
BL              sub_5A2484
LDM             R0, {R1,R2}
VMOV.F32        S0, S17
LDR             R0, [R0,#8]
ADD             R3, R6, #0x24 ; '$'
STR             R0, [R6,#0x2C]
ADD             R0, R6, #0x158
STM             R3, {R1,R2}
BL              sub_4E625C
LDR             R0, [R0]
ADD             R4, R6, #0x190
STR             R0, [R6,#0x9C]
LDR             R1, [R6,#0x194]
MOV             R0, #3
BICS            R0, R0, R1
BNE             loc_2A3598
LDR             R5, [R4,#0x54]
VLDR            S0, =256.0
VMUL.F32        S0, S17, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R8, R0
LDR             R0, [R4,#0x58]
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R5, R0,LSL#5
CMP             R0, R5
BEQ             loc_2A3598
MOV             R1, R8
ADD             R0, R5, #0x10
BL              sub_123CE8
MOV             R0, R5
NOP
BL              sub_592F14
LDR             R0, [R4,#0x58]
LDR             R1, [R4,#0x54]
ADD             R5, R5, #0x160
ADD             R2, R0, R0,LSL#1
ADD             R0, R2, R0,LSL#3
ADD             R0, R1, R0,LSL#5
CMP             R0, R5
BNE             loc_2A3560
ADD             R0, R4, #0xCC
BL              sub_6347DC
VLDR            S16, =0.0
CMP             R0, #2
MOV             R9, #0
BCC             loc_2A376C
ADD             R0, R4, #0x64 ; 'd'
VLDM            R0, {S0-S1}
VMLA.F32        S0, S1, S17
VMOV            R0, S0
VSTR            S0, [R4,#0x64]
CMP             R0, #0x3F800000
BLT             loc_2A376C
LDR             R8, =0x4EC4EC4F
VLDR            S17, =1.0
ADD             R5, R4, #0x168
LDR             R1, [R4,#0x180]
CMP             R1, #0
LDRNE           R0, [R4,#0x184]
BLXNE           R1
VLDR            S0, [R4,#0x64]
MOV             R2, #1
MOV             R0, R5
VSUB.F32        S0, S0, S17
VSTR            S0, [R4,#0x64]
LDR             R1, [R5]
BL              sub_63489C
STR             R0, [R5]
LDR             R0, [R0]
LDR             R1, [R4,#0x178]
CMP             R0, R1
BEQ             loc_2A3750
ADD             R0, R4, #0xCC
BL              sub_6347DC
CMP             R0, #1
NOP
BNE             loc_2A3740
LDR             R0, [R4,#0x168]
LDR             R2, [R4,#0x178]
LDR             R0, [R0]
CMP             R2, R0
SUBCC           R1, R0, R2
SUBHI           R1, R2, R0
BEQ             loc_2A3740
LDR             R3, [R4,#0x60]
CMP             R3, R1
BCS             loc_2A3660
CMP             R0, R2
SUBCS           R2, R0, R3
ADDCC           R2, R3, R0
ADD             R0, SP, #0x60+var_5C
STR             R0, [SP,#0x60+var_34]
STR             R0, [SP,#0x60+var_30]
MOV             R1, SP
MOV             R0, R4
BL              sub_5B71F4
LDR             R2, [R5,#0xC]
LDR             R3, [R5,#8]
SUB             R0, R2, R3
SMULL           R1, R0, R8, R0
MOV             R1, R0,ASR#4
SUB             R0, R1, R0,ASR#31
SUB             R12, R0, #1
LDR             R0, [R5,#4]
LDR             R1, [R5]
CMP             R0, R1
BCS             loc_2A36CC
SUB             R1, R2, R1
SUB             R2, R0, R3
SMULL           R3, R1, R8, R1
SMULL           R3, R2, R8, R2
MOV             R3, R1,ASR#4
SUB             R1, R3, R1,ASR#31
MOV             R10, R2,ASR#4
SUB             R2, R10, R2,ASR#31
ADD             R1, R1, R2
B               loc_2A36DC
SUB             R1, R0, R1
SMULL           R2, R1, R8, R1
MOV             R2, R1,ASR#4
SUB             R1, R2, R1,ASR#31
CMP             R12, R1
BLS             loc_2A3738
LDR             R1, [SP,#0x60+var_60]
STR             R1, [R0],#4
STR             R0, [R0,#0x28]
STR             R0, [R0,#0x2C]
LDRD            R2, R3, [SP,#0x60+var_34]
CMP             R2, R3
LDRNE           R1, [R0,#0x28]
BEQ             loc_2A3724
CMP             R1, #0
VLDRNE          S0, [R2]
ADD             R2, R2, #4
VSTRNE          S0, [R1]
CMP             R2, R3
ADD             R1, R1, #4
BNE             loc_2A3704
STR             R1, [R0,#0x2C]
LDR             R1, [R5,#4]
MOV             R0, R5
MOV             R2, #1
BL              sub_63489C
STR             R0, [R5,#4]
MOV             R0, R4
BL              sub_5B7B9C
LDR             R0, [R4,#0x64]
CMP             R0, #0x3F800000
BGE             loc_2A35D8
B               loc_2A376C
VSTR            S16, [R4,#0x64]
MOV             R0, R4
BL              sub_5B7B9C
LDR             R1, [R4,#0x188]
CMP             R1, #0
LDRNE           R0, [R4,#0x18C]
BLXNE           R1
LDR             R1, [R7]
LDR             R0, [R6,#0x308]
ADD             R1, R1, #0x100000
ADD             R1, R1, #0x9D000
LDR             R5, [R1,#(loc_19D254 - 0x19D000)]
SUBS            R4, R0, R5
BEQ             loc_2A3828
ADD             R0, R6, #0x25C
BL              sub_6347DC
CMP             R0, #2
NOP
BCC             loc_2A37D0
LDR             R8, [R6,#0x308]
ADD             R7, R6, #0x190
VSTR            S16, [R6,#0x1F4]
MOV             R1, #1
ADD             R0, R6, #0x2F8
BL              sub_62D444
LDR             R1, [R7,#0x168]
MOV             R2, R8
MOV             R0, R7
BL              sub_5B71F4
MOV             R0, R7
NOP
BL              sub_5B7B9C
CMP             R4, #0
MOVGE           R0, R4
RSBLT           R0, R4, #0
CMP             R0, #0x14
MOVLT           R0, #1
BLT             loc_2A3804
LDR             R0, =0x66666667
CMP             R4, #0
RSBLT           R4, R4, #0
SUB             R1, R4, #0xA
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#2
SUB             R0, R1, R0,ASR#31
STR             R0, [R6,#0x1F0]
LDR             R1, [R6,#0x194]
ADD             R0, R6, #0x190
TST             R1, #8
BEQ             loc_2A38C4
LDR             R1, [R0,#0x178]
CMP             R1, R5
STRNE           R5, [R0,#0x178]
BLNE            sub_5B7E3C
LDRB            R0, [R6,#0xFD]
CMP             R0, #0
BEQ             loc_2A38B8
CMP             R0, #1
BEQ             loc_2A3904
CMP             R0, #2
BEQ             loc_2A38B8
CMP             R0, #3
BNE             loc_2A38B8
ADD             R0, R6, #0x100
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_2A38B8
ADD             R0, R6, #0x180
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_2A38B8
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
B               loc_2A38A0
DCD off_6CE970
DCFS 0.0039062
DCFS 256.0
DCFS 0.0
DCFS 1.0
DCD 0x4EC4EC4F
DCD 0x66666667
STR             R0, [SP,#0x60+var_60]
LDR             R0, [R6]
LDR             R2, [R0,#0x3C]
MOV             R0, R6
BLX             R2
STRB            R9, [R6,#0xFD]
ADD             SP, SP, #0x38 ; '8'
VPOP            {D8}
POP             {R4-R10,PC}
STR             R5, [R0,#0x178]
MOV             R4, R0
VSTR            S16, [R0,#0x64]
MOV             R1, #1
ADD             R0, R0, #0x168
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R0, R4
MOV             R2, R5
BL              sub_5B71F4
MOV             R0, R4
NOP
BL              sub_5B7B9C
NOP
NOP
B               loc_2A3828
ADD             R0, R6, #0x100
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_2A38B8
ADD             R0, R6, #0x180
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #2
STRBGE          R0, [R6,#0xFD]
ADD             SP, SP, #0x38 ; '8'
VPOP            {D8}
POP             {R4-R10,PC}
