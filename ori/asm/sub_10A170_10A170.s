PUSH            {R4-R8,LR}
SUB             SP, SP, #0xF0
ADD             R0, SP, #0x108+var_90
BL              sub_113A5C
ADD             R0, SP, #0x108+var_F8
BL              sub_111F70
LDR             R8, =dword_6ED9B8
MOV             R2, #0x800000
MOV             R1, #0x1000
LDR             R0, [R8]
LDR             R3, [R0,#0xC]
MOV             R0, R8
BLX             R3
MOV             R7, R0
MOV             R1, R0
MOV             R3, #0x11
MOV             R2, #0x1000
ADD             R0, SP, #0x108+var_90
BL              sub_113924
LDR             R0, [R8]
MOV             R1, #0x8000
ADD             R5, SP, #0x108+var_F8
ADD             R6, SP, #0x108+var_90
LDR             R3, [R0,#0xC]
MOV             R4, R1
MOV             R2, #0x800000
MOV             R0, R8
BLX             R3
MOV             R2, R0
MOV             R3, R4
MOV             R1, R6
MOV             R0, R5
BL              sub_11CA18
LDRH            R0, [SP,#0x108+var_D2]
ORR             R0, R0, #1
STRH            R0, [SP,#0x108+var_D2]
ADD             R0, SP, #0x108+var_50
BL              sub_1203CC
ADD             R0, SP, #0x108+var_B8
BL              sub_1170D0
ADD             R0, SP, #0x108+var_F8
STR             R0, [SP,#0x108+var_38]
LDR             R1, =aRomCommonHomen; "rom:/Common/HomeNixSign.cg"
ADD             R0, SP, #0x108+var_50
BL              sub_10D2AC
MOV             R5, #0
MOV             R0, #0x7F
STR             R0, [SP,#0x108+var_AC]
MOV             R3, R5
MOV             R2, R5
ADD             R1, SP, #0x108+var_B8
ADD             R0, SP, #0x108+var_50
STR             R5, [SP,#0x108+var_108]
STR             R8, [SP,#0x108+var_B0]
BL              sub_10D374
LDR             R0, [SP,#0x108+var_F0]
ADD             R4, SP, #0x108+var_F8
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
CMP             R0, #0
BEQ             loc_10A284
LDR             R0, [SP,#0x108+var_F0]
ADD             R1, R4, #0xC
LDR             R2, [R0]
LDR             R2, [R2]
BLX             R2
ADD             R0, R4, #0x14
BL              sub_120E7C
MOV             R1, #1
ADD             R0, SP, #0x108+var_B8
BL              sub_10D594
MOV             R1, R0
LDR             R0, =unk_6EB9FC
BL              sub_11CCD8
ADD             R0, SP, #0x108+var_50
NOP
BL              sub_10D33C
ADD             R0, SP, #0x108+var_50
NOP
BL              sub_116ED4
LDRH            R0, [SP,#0x108+var_D2]
TST             R0, #1
LDRNE           R0, [SP,#0x108+var_DC]
CMPNE           R0, #0
BEQ             loc_10A2D0
BL              sub_110D10
STR             R5, [SP,#0x108+var_DC]
ADD             R0, SP, #0x108+var_90
BL              sub_1139AC
MOV             R0, R7
NOP
BL              sub_110D10
LDR             R2, =unk_6EB9FC
MOV             R0, #0x100
STR             R0, [SP,#0x108+var_100]
LDR             R1, =unk_672D54
MOV             R3, #0
ADD             R0, R2, #0x14
STR             R5, [SP,#0x108+var_108]
STR             R5, [SP,#0x108+var_104]
BL              sub_1137FC
LDR             R2, =unk_6EA338
LDR             R0, =unk_6EBB14
MOV             R1, #0
BL              sub_10D5AC
LDR             R0, =byte_6CF938
STR             R5, [R0,#(dword_6CF940 - 0x6CF938)]
ADD             R0, SP, #0x108+var_F8
BL              sub_111FD8
ADD             R0, SP, #0x108+var_90
NOP
BL              sub_113ADC
ADD             SP, SP, #0xF0
POP             {R4-R8,PC}
