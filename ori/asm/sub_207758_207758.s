PUSH            {R4-R7,LR}
ADD             R0, R2, #0x10
ADD             R1, R2, #8
VPUSH           {D8}
SUB             SP, SP, #0xC
LDM             R0, {R0,R3,R12}
LDM             R1, {R1,R4}
AND             R6, R0, #0xFF
LDR             R0, =off_6CE970
SXTH            R5, R12
AND             R7, R4, #0xFF
UXTH            R1, R1
LDR             R0, [R0]
VLDR            S16, [R2,#0x7C]
AND             R4, R3, #0xFF
BL              sub_528FF0
CMP             R4, #0xFF
BEQ             loc_2077DC
MOV             R3, R6
VLDR            S0, =256.0
MOV             R2, R4
STR             R5, [SP,#0x28+var_28]
VMUL.F32        S0, S16, S0
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
STR             R1, [SP,#0x28+var_24]
MOV             R1, R7
BL              sub_14F048
ADD             SP, SP, #0xC
MOV             R0, #0
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R1, [R0]
LDR             R1, [R1,#0x50]
BLX             R1
MOV             R2, R6
MOV             R1, R7
BL              sub_4FDA70
NOP
NOP
B               loc_2077CC
