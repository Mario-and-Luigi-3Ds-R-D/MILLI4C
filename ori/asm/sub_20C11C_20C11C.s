PUSH            {R4-R6,LR}
MOV             R6, R0
LDR             R0, [R2,#8]
MOV             R5, R1
MOV             R4, R2
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
LDR             R0, [R0,#0x3F0]
CMP             R0, #0
BEQ             loc_20C158
LDRB            R1, [R0,#4]
CMP             R1, #0
BEQ             loc_20C15C
MOV             R0, #0
LDRH            R1, [R4]
LDR             R2, [R4,#0xC]
SUB             R1, R1, #0x100
SUBS            R1, R1, #0xA7
CMPNE           R1, #1
AND             R2, R2, #0xFF
BEQ             loc_20C188
CMP             R1, #2
CMPNE           R1, #3
BEQ             loc_20C1C8
B               loc_20C1C0
VLDR            S0, [R4,#0x70]
MOV             R1, R2
BL              sub_3D20BC
LDRH            R0, [R4]
CMP             R0, #0x1A8
BNE             loc_20C1C0
CMP             R5, #0
BEQ             loc_20C1B0
ADD             R2, R5, #4
B               loc_20C1B4
MOV             R2, #0
LDRH            R0, [R4,#2]
MOV             R1, R6
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
LDR             R1, [R4,#0x10]
UXTH            R1, R1
VMOV            S0, R1
MOV             R1, R2
VCVT.F32.U32    S0, S0
BL              sub_3D1FEC
LDRH            R0, [R4]
SUB             R1, R0, #0x100
SUBS            R1, R1, #0xAA
BNE             loc_20C1C0
CMP             R5, #0
BEQ             loc_20C1B0
B               loc_20C1A8
