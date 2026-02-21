PUSH            {R4-R6,LR}
ADD             R4, R3, #8
LDR             R12, =off_6D1648
LDM             R4, {R5,R6}
LDR             R0, =0x13C30
LDR             R12, [R12]
ADD             R0, R0, R6,LSL#2
LDR             R6, =0x1FFB
ADD             R12, R12, R5,LSL#2
LDR             R12, [R12,#0xBC]
ADD             R5, R12, R0
LDR             R0, [R5]
BIC             R12, R6, R0
VMOV            S0, R12
LDRH            R0, [R3,#2]
VCVT.F32.U32    S0, S0
BL              sub_145730
LDR             R0, [R4,#8]
BIC             R0, R6, R0
STR             R0, [R5]
MOV             R0, #0
POP             {R4-R6,PC}
