PUSH            {R0-R2,R4-R11,LR}
MOV             R5, R1
MOV             R1, #0
MOV             R8, R0
MOV             R11, #0
LDR             R0, =off_6BBEB4
LDR             R10, =off_6CDF98
LDR             R7, =off_6CE970
MOV             R3, R11
VPUSH           {D8-D9}
SUB             SP, SP, #0x58
MOV             R2, R11
STRD            R0, R1, [R8]
ADD             R0, R8, #8
STR             R0, [R8,#0xC]
ADD             R1, R8, #0x10
STR             R0, [R8,#8]
STR             R1, [R8,#0x100]
STR             R1, [R8,#0x104]
STRB            R11, [R8,#0x108]
LDR             R0, [R10]
LDR             R4, [R0,#0x124]
LDR             R0, [R7]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x720
BL              sub_10A358
CMP             R0, #0
BEQ             loc_26B670
ADD             R1, R4, #0x284
ADD             R2, R4, #0x28C
VLDM            R1, {S0-S1}
LDR             R1, [R7]
LDM             R2, {R2,R3}
ADD             R1, R1, #0x68 ; 'h'
BL              sub_27D9C8
MOV             R1, R5
STR             R0, [SP,#0x98+var_5C]
BL              sub_27C660
LDR             R0, [R8,#0xC]
LDR             R6, [SP,#0x98+var_5C]
ADD             R1, R8, #8
CMP             R0, R1
ADD             R5, R8, #4
BNE             loc_26B9E0
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_26B6AC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R6, [R5]
LDR             R0, [R8,#4]
MOV             R5, #0
STR             R8, [R0,#0x71C]
LDR             R1, [R4,#0x610]
ADD             R4, R4, #0x28C
LDM             R4, {R0,R2}
MUL             R9, R0, R2
LDR             R0, [SP,#0x98+var_28]
CMP             R9, #0
MUL             R0, R1, R0
STR             R0, [SP,#0x98+var_58]
BLS             loc_26B9A4
ADD             R0, SP, #0x98+var_8C
VLDR            S19, =0.5
VLDR            S16, =10.0
VLDR            S17, =0.0
VLDR            S18, =1.0
ADD             R10, SP, #0x98+var_74
STR             R0, [SP,#0x98+var_7C]
LDR             R0, =off_6CDF98
MOV             R6, #0
ADD             R7, SP, #0x98+var_78
LDR             R0, [R0]
ADD             R1, R0, #0x12800
LDR             R0, [R1,#4]
CMP             R0, #0
LDR             R2, [R0]
STR             R2, [R1,#4]
LDR             R2, [R1,#8]
SUB             R2, R2, #1
STR             R2, [R1,#8]
BEQ             loc_26B8C4
LDR             R1, [SP,#0x98+var_5C]
ADD             R3, R5, R5,LSL#1
ADD             R2, SP, #0x98+var_8C
ADD             R11, SP, #0x98+var_90
LDR             R1, [R1,#0x6F0]
MOV             R6, #1
LDR             R3, [R1,R3,LSL#2]!
ADD             R1, R1, #4
STR             R1, [SP,#0x98+var_8C]
STR             R3, [SP,#0x98+var_90]
LDR             R3, [R1,#4]
STR             R3, [SP,#0x98+var_88]
STR             R2, [R3]
STR             R2, [R1,#4]
LDR             R1, [SP,#0x98+var_58]
STR             R1, [SP,#0x98+var_84]
BL              sub_14F198
MOV             R1, #4
STRB            R1, [R0,#0x3F4]
LDR             R1, [SP,#0x98+var_90]
MOV             R4, R0
STR             R1, [R0,#0x404]!
ADD             R1, R11, #4
STR             R1, [R0,#4]!
LDR             R1, [SP,#0x98+var_88]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x98+var_88]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#1
MOV             R0, R0,LSL#1
MOV             R1, R0,LSR#16
LDR             R0, =dword_6D1F40
STRB            R1, [R4,#0x3F6]
BL              sub_546DB0
MOV             R0, R0,LSL#2
MOV             R1, R0,LSR#16
LDR             R0, =dword_6D1F40
STRB            R1, [R4,#0x3F7]
BL              sub_546DB0
MOV             R0, R0,LSL#2
MOV             R1, R0,LSR#16
LDR             R0, =dword_6D1F40
STRB            R1, [R4,#0x3F8]
BL              sub_546DB0
MOV             R0, R0,LSL#2
MOV             R1, R0,LSR#16
LDR             R0, =dword_6D1F40
STRB            R1, [R4,#0x3F9]
BL              sub_546DB0
ADD             R0, R0, R0,LSL#2
MOV             R1, R0,LSR#16
LDR             R0, =off_6CE970
STRB            R1, [R4,#0x3FA]
LDR             R1, =0xA004
LDR             R0, [R0]
BL              sub_52FACC
MOV             R1, R0
MOV             R2, #0
MOV             R0, R4
BL              sub_14E6E0
MOV             R1, #1
MOV             R0, R4
BL              sub_14C450
LDR             R1, [SP,#0x98+var_84]
MOV             R2, #2
VMOV.F32        S0, S19
STR             R1, [R4,#0x40]
STRB            R2, [R4,#0xF1]
LDR             R0, [R4,#0x404]
ADD             R1, SP, #0x98+var_4C
BL              sub_5CC1B0
ADD             R1, SP, #0x98+var_4C
MOV             R0, R4
BL              sub_14E984
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R4
BL              sub_14C548
MOV             R0, #0
STRB            R0, [R4,#0xF6]
LDR             R0, =dword_6D1F40
VSTR            S17, [R4,#0x39C]
VSTR            S16, [R4,#0x3A0]
STR             R0, [SP,#0x98+var_94]
MOV             R0, R4
BL              sub_5C5724
MOV             R11, R0
LDR             R0, [SP,#0x98+var_94]
BL              sub_546DB0
MUL             R0, R0, R11
MOV             R1, R0,LSR#16
MOV             R0, R4
BL              sub_14F01C
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
MOV             R0, R4
VSTR            S18, [R4,#0x3FC]
STR             R0, [SP,#0x98+var_78]
ADD             R0, R7, #4
CMP             R6, #0
STR             R0, [SP,#0x98+var_70]
STR             R0, [SP,#0x98+var_74]
BEQ             loc_26B904
LDR             R0, [SP,#0x98+var_7C]
LDR             R1, [SP,#0x98+var_88]
CMP             R1, R0
BNE             loc_26B8F8
LDR             R0, [SP,#0x98+var_90]
CMP             R0, #0
BLNE            sub_300FD4
LDRD            R0, R1, [SP,#0x98+var_8C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R8,#0x104]
LDR             R2, [R8,#0x100]
LDR             R3, =0x2AAAAAAB
ADD             R1, R8, #0x10
SUB             R2, R0, R2
SMULL           R3, R2, R3, R2
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #0x14
BHI             loc_26B968
CMP             R0, #0
ADD             R1, R1, #0xF0
BEQ             loc_26B95C
LDR             R3, [SP,#0x98+var_78]
ADD             R2, SP, #0x98+var_74
STR             R3, [R0],#4
STR             R2, [R0]
LDR             R2, [SP,#0x98+var_70]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [SP,#0x98+var_70]
LDR             R0, [R1,#4]
ADD             R0, R0, #0xC
STR             R0, [R1,#4]
LDR             R0, [SP,#0x98+var_70]
CMP             R0, R10
BNE             loc_26B98C
LDR             R0, [SP,#0x98+var_78]
CMP             R0, #0
BEQ             loc_26B98C
MOV             R1, R0
ADD             R0, SP, #0x98+var_54
BL              sub_5CC87C
LDRD            R0, R1, [SP,#0x98+var_74]
ADD             R5, R5, #1
CMP             R5, R9
STR             R1, [R0,#4]
STR             R0, [R1]
BCC             loc_26B6FC
ADD             SP, SP, #0x58 ; 'X'
MOV             R0, R8
VPOP            {D8-D9}
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
DCD off_6BBEB4
DCD off_6CDF98
DCD off_6CE970
DCFS 0.5
DCFS 10.0
DCFS 0.0
DCFS 1.0
DCD dword_6D1F40
DCD 0xA004
DCD 0x2AAAAAAB
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_26B6AC
