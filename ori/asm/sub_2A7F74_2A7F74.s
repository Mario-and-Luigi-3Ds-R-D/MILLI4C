PUSH            {R4-R9,LR}
MOV             R6, R0
MOV             R7, R1
MOV             R0, #3
VPUSH           {D8}
VMOV.F32        S17, S0
LDR             R4, [R6]
SUB             SP, SP, #0x34
LDR             R1, [R4,#4]
BICS            R0, R0, R1
BNE             loc_2A8008
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
BEQ             loc_2A8008
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
BNE             loc_2A7FD0
ADD             R0, R4, #0xCC
BL              sub_6347DC
VLDR            S16, =0.0
CMP             R0, #2
BCC             loc_2A81D8
ADD             R0, R4, #0x64 ; 'd'
VLDM            R0, {S0-S1}
VMLA.F32        S0, S1, S17
VMOV            R0, S0
VSTR            S0, [R4,#0x64]
CMP             R0, #0x3F800000
BLT             loc_2A81D8
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
BEQ             loc_2A81BC
ADD             R0, R4, #0xCC
BL              sub_6347DC
CMP             R0, #1
NOP
BNE             loc_2A81AC
LDR             R0, [R4,#0x168]
LDR             R2, [R4,#0x178]
LDR             R0, [R0]
CMP             R2, R0
SUBCC           R1, R0, R2
SUBHI           R1, R2, R0
BEQ             loc_2A81AC
LDR             R3, [R4,#0x60]
CMP             R3, R1
BCS             loc_2A80CC
CMP             R0, R2
SUBCS           R2, R0, R3
ADDCC           R2, R3, R0
ADD             R0, SP, #0x58+var_54
STR             R0, [SP,#0x58+var_2C]
STR             R0, [SP,#0x58+var_28]
MOV             R1, SP
MOV             R0, R4
BL              sub_5B71F4
LDR             R0, [R5,#0xC]
LDR             R1, [R5,#8]
SUB             R2, R0, R1
SMULL           R3, R2, R8, R2
MOV             R3, R2,ASR#4
SUB             R2, R3, R2,ASR#31
SUB             R12, R2, #1
LDRD            R2, R3, [R5]
CMP             R3, R2
BCS             loc_2A8134
SUB             R0, R0, R2
SUB             R1, R3, R1
SMULL           R2, R0, R8, R0
SMULL           R2, R1, R8, R1
MOV             R9, R0,ASR#4
SUB             R0, R9, R0,ASR#31
MOV             R2, R1,ASR#4
SUB             R1, R2, R1,ASR#31
ADD             R0, R0, R1
B               loc_2A8144
SUB             R0, R3, R2
SMULL           R1, R0, R8, R0
MOV             R1, R0,ASR#4
SUB             R0, R1, R0,ASR#31
CMP             R12, R0
BLS             loc_2A81A4
LDR             R0, [SP,#0x58+var_58]
STR             R0, [R3],#4
ADD             R0, SP, #0x58+var_2C
STR             R3, [R3,#0x28]
STR             R3, [R3,#0x2C]
LDM             R0, {R1,R2}
CMP             R1, R2
LDRNE           R0, [R3,#0x28]
BEQ             loc_2A8190
CMP             R0, #0
VLDRNE          S0, [R1]
ADD             R1, R1, #4
VSTRNE          S0, [R0]
CMP             R1, R2
ADD             R0, R0, #4
BNE             loc_2A8170
STR             R0, [R3,#0x2C]
LDR             R1, [R5,#4]
MOV             R0, R5
MOV             R2, #1
BL              sub_63489C
STR             R0, [R5,#4]
MOV             R0, R4
BL              sub_5B7B9C
LDR             R0, [R4,#0x64]
CMP             R0, #0x3F800000
BGE             loc_2A8044
B               loc_2A81D8
VSTR            S16, [R4,#0x64]
MOV             R0, R4
BL              sub_5B7B9C
LDR             R1, [R4,#0x188]
CMP             R1, #0
LDRNE           R0, [R4,#0x18C]
BLXNE           R1
LDR             R0, [R6]
LDR             R1, [R0,#0x178]
SUBS            R4, R1, R7
BEQ             loc_2A828C
ADD             R0, R0, #0xCC
BL              sub_6347DC
CMP             R0, #2
NOP
BCC             loc_2A8230
LDR             R5, [R6]
MOV             R1, #1
ADD             R0, R5, #0x168
LDR             R8, [R5,#0x178]
VSTR            S16, [R5,#0x64]
BL              sub_62D444
LDR             R1, [R5,#0x168]
MOV             R2, R8
MOV             R0, R5
BL              sub_5B71F4
MOV             R0, R5
NOP
BL              sub_5B7B9C
LDR             R0, [R6,#8]
CMP             R4, #0
MOVGE           R1, R4
RSBLT           R1, R4, #0
CMP             R1, R0
LDR             R5, [R6]
LDRCC           R0, [R6,#4]
BCC             loc_2A8268
CMP             R4, #0
RSBLT           R4, R4, #0
SUB             R2, R4, R0,LSR#1
MOV             R1, R0,LSR#1
MOV             R0, R2
BL              sub_127F6C
STR             R0, [R5,#0x60]
LDR             R0, [R6]
LDR             R1, [R0,#4]
TST             R1, #8
BEQ             loc_2A82A8
LDR             R1, [R0,#0x178]
CMP             R1, R7
STRNE           R7, [R0,#0x178]
BLNE            sub_5B7E3C
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8}
POP             {R4-R9,PC}
DCFS 256.0
DCFS 0.0
DCFS 1.0
DCD 0x4EC4EC4F
STR             R7, [R0,#0x178]
MOV             R4, R0
VSTR            S16, [R0,#0x64]
MOV             R1, #1
ADD             R0, R0, #0x168
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R0, R4
MOV             R2, R7
BL              sub_5B71F4
MOV             R0, R4
NOP
BL              sub_5B7B9C
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8}
POP             {R4-R9,PC}
