PUSH            {R4-R11,LR}
MOV             R8, R0
MOV             R7, #0
LDR             R0, =0x10645C
VPUSH           {D8-D9}
ADD             R0, R0, R8
SUB             SP, SP, #0xC
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
LDRNE           R5, [R4,#8]
MOVEQ           R5, #0
BEQ             loc_1D2A94
LDR             R10, =0xC004
VLDR            S18, =2.0
VLDR            S19, =4.0
VLDR            S17, =-1000.0
VLDR            S16, =0.0
ADD             R9, R8, #0x190000
ORR             R11, R10, R10,ASR#15
ADD             R9, R9, #0xCF00
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_1D2A80
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
LDR             R6, [R0,#0x18]
CMP             R6, #0
BEQ             loc_1D2A80
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
MOV             R1, R10
LDRB            R0, [R0,#0x495]
CMP             R0, #0
MOVNE           R1, R11
MOV             R0, R8
BL              sub_52FACC
MOV             R1, R0
LDR             R0, [R6]
MOV             R2, #0
LDR             R3, [R0,#0x58]
MOV             R0, R6
BLX             R3
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R6
BL              sub_14C548
MOV             R0, #1
STRB            R0, [R6,#0xF3]
LDRB            R0, [R9,#0x28]
VSTR            S17, [SP,#0x40+var_40]
VSTR            S16, [SP,#0x40+var_3C]
CMP             R0, #0
VMOVNE.F32      S0, S18
VMOVEQ.F32      S0, S19
MOV             R2, SP
VSTR            S16, [SP,#0x40+var_38]
MOV             R1, #0
ADD             R0, R6, #0x1DC
BL              sub_5A25D0
LDR             R0, =off_6CE970
LDR             R12, =0xFFE683CC
LDR             R2, =0x30082
MOV             R3, #0
LDR             R0, [R0]
MOV             R1, R6
SUB             R0, R0, R12
BL              sub_503720
MOVS            R4, R5
MOVEQ           R5, #0
LDRNE           R5, [R4,#8]
CMP             R4, R7
BNE             loc_1D29A8
LDR             R2, =off_65415C
ADD             R0, R8, #0x1A0000
ADD             R0, R0, #0x5C ; '\'
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R11,PC}
