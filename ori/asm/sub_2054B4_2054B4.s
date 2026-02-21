PUSH            {R4-R7,LR}
MOV             R4, R2
MOV             R7, R1
VPUSH           {D8}
SUB             SP, SP, #0x34
LDR             R0, [R2,#8]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
MOV             R6, R0
LDR             R0, [R4,#0x20]
VLDR            S16, [R4,#0x84]
MOV             R3, #1
MOV             R2, R4
SXTH            R5, R0
MOV             R1, R7
ADD             R0, SP, #0x50+var_48
BL              sub_47C3A0
VLDR            S0, =256.0
STR             R5, [SP,#0x50+var_50]
LDRB            R3, [SP,#0x50+var_28]
VMUL.F32        S0, S16, S0
ADD             R2, SP, #0x50+var_48
ADD             R1, R4, #0x74 ; 't'
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
STR             R0, [SP,#0x50+var_4C]
VLDR            S0, [SP,#0x50+var_24]
MOV             R0, R6
BL              sub_14D61C
ADD             SP, SP, #0x34 ; '4'
MOV             R0, #0
VPOP            {D8}
POP             {R4-R7,PC}
