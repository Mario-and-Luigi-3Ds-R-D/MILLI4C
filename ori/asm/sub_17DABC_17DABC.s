PUSH            {R4-R8,LR}
MOV             R6, R2
MOV             R7, R1
MOV             R5, R3
VPUSH           {D8}
ADD             R4, R3, #8
LDR             R2, [R0]
LDR             R1, [R3,#8]
LDR             R12, [R2,#0x9C]
SXTB            R3, R1
LDR             R2, [R0,#4]
MOV             R1, R6
BLX             R12
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
ADD             R4, R4, #4
LDM             R4, {R1,R3}
ANDS            R2, R1, #0xFF
AND             R1, R3, #0xFF
BEQ             loc_17DB24
CMP             R2, #1
BEQ             loc_17DB3C
CMP             R2, #2
BNE             loc_17DB68
B               loc_17DB54
LDR             R2, [R0]
LDR             R2, [R2,#0x15C]
BLX             R2
VMOV            S0, R0
VCVT.F32.S32    S16, S0
B               loc_17DB68
LDR             R2, [R0]
LDR             R2, [R2,#0x160]
BLX             R2
VMOV            S0, R0
VCVT.F32.S32    S16, S0
B               loc_17DB68
LDR             R2, [R0]
LDR             R2, [R2,#0x164]
BLX             R2
VMOV            S0, R0
VCVT.F32.S32    S16, S0
LDRH            R0, [R5,#2]
MOV             R2, R6
MOV             R1, R7
VMOV.F32        S0, S16
BL              sub_145730
VPOP            {D8}
MOV             R0, #0
POP             {R4-R8,PC}
