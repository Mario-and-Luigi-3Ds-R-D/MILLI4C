PUSH            {R4-R6,LR}
MOV             R4, R2
MOV             R6, R0
MOV             R5, R1
LDRD            R0, R1, [R4,#8]
AND             R1, R1, #0xFF
UXTH            R0, R0
BL              sub_20FED4
ADD             R1, R0, #0x100
CMP             R5, #0
LDRSB           R1, [R1,#0xAA]
LDRH            R0, [R4,#2]
ADDNE           R2, R5, #4
VMOV            S0, R1
MOVEQ           R2, #0
MOV             R1, R6
VCVT.F32.S32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
