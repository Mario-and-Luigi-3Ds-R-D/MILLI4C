PUSH            {R4-R6,LR}
ADD             R1, R2, #8
VPUSH           {D8}
LDR             R0, [R2,#0x10]
LDM             R1, {R1,R4}
VLDR            S16, [R2,#0x74]
SXTH            R5, R0
LDR             R0, =off_6CE970
UXTH            R1, R1
LDR             R0, [R0]
BL              sub_528EB0
VLDR            S0, =256.0
AND             R1, R4, #0xFF
VMUL.F32        S0, S16, S0
VCVT.S32.F32    S0, S0
VMOV            R2, S0
SXTH            R3, R2
MOV             R2, R5
BL              sub_14C548
VPOP            {D8}
MOV             R0, #0
POP             {R4-R6,PC}
