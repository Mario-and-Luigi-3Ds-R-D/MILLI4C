PUSH            {R4-R6,LR}
ADD             R0, R2, #0x10
ADD             R1, R2, #8
VPUSH           {D8}
SUB             SP, SP, #8
LDM             R0, {R0,R3}
LDM             R1, {R1,R12}
VLDR            S16, [R2,#0x78]
SXTB            R4, R0
LDR             R0, =off_6CE970
UXTH            R1, R1
SXTH            R5, R3
SXTB            R6, R12
LDR             R0, [R0]
BL              sub_528EB0
LDR             R1, [R0]
LDR             R1, [R1,#0x4C]
BLX             R1
CMP             R0, #0
BEQ             loc_20A08C
MOV             R3, R5
VLDR            S0, =256.0
MOV             R2, R4
MOV             R1, R6
VMUL.F32        S0, S16, S0
VCVT.S32.F32    S0, S0
VSTR            S0, [SP,#0x20+var_20]
BL              sub_592DC0
ADD             SP, SP, #8
MOV             R0, #0
VPOP            {D8}
POP             {R4-R6,PC}
