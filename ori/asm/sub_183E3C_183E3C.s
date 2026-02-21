PUSH            {R4-R6,LR}
MOV             R4, R3
LDR             R5, =off_6D1648
LDR             R6, =0x1FFB
LDR             R0, [R5]
LDR             R0, [R0,#0xA4]
ADD             R0, R0, #0x4A000
LDR             R0, [R0,#0x2E8]
BIC             R3, R6, R0
VMOV            S0, R3
LDRH            R0, [R4,#2]
VCVT.F32.U32    S0, S0
BL              sub_145730
LDR             R0, [R5]
LDR             R1, [R4,#8]
LDR             R0, [R0,#0xA4]
BIC             R1, R6, R1
ADD             R0, R0, #0x4A000
STR             R1, [R0,#0x2E8]
MOV             R0, #0
POP             {R4-R6,PC}
