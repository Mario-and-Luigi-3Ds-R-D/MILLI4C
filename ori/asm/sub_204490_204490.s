PUSH            {R4-R9,LR}
MOV             R5, R1
ADD             R1, R2, #8
MOV             R9, R0
LDR             R0, [R2,#0x10]
MOV             R4, R2
LDM             R1, {R1,R2}
SUB             SP, SP, #0x34
SXTH            R7, R0
LDR             R0, =off_6CE970
UXTH            R1, R1
SXTH            R8, R2
LDR             R0, [R0]
BL              sub_52F538
MOV             R6, R0
ADD             R0, SP, #0x50+var_48
BL              sub_2A251C
MOV             R0, #0
STR             R0, [SP,#0x50+var_50]
STR             R0, [SP,#0x50+var_4C]
MOV             R3, R7
MOV             R2, R8
ADD             R1, SP, #0x50+var_48
MOV             R0, R6
BL              sub_5ED4B0
ADD             R0, SP, #0x50+var_48
BL              sub_5CE564
VMOV            S0, R0
CMP             R5, #0
LDRH            R0, [R4,#2]
ADDNE           R2, R5, #4
MOVEQ           R2, #0
MOV             R1, R9
VCVT.F32.U32    S0, S0
BL              sub_145730
ADD             SP, SP, #0x34 ; '4'
MOV             R0, #0
POP             {R4-R9,PC}
