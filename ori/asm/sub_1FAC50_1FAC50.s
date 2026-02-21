PUSH            {R4-R8,LR}
MOV             R6, R0
ADD             R0, R0, #0x12400
LDR             R1, =off_6CE970
VLDR            S1, =0.0039062
ADD             R0, R0, #0x33C
VPUSH           {D8}
LDR             R1, [R1]
LDR             R5, [R0]
ADD             R1, R1, #0x190000
ADD             R1, R1, #0xDE00
LDR             R4, [R5,#8]
LDRSH           R1, [R1,#(loc_19DEE0+2 - 0x19DE00)]
CMP             R4, R5
VMOV            S0, R1
MOVNE           R7, #0
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
BEQ             loc_1FAD48
LDRB            R1, [R4,#0xC]
MOV             R0, R4
CMP             R1, #0
BEQ             loc_1FACE0
LDR             R1, [R0,#8]
LDR             R2, [R0,#4]
STR             R2, [R1,#4]
ADD             R1, R0, #4
MOV             R4, R2
LDM             R1, {R1,R2}
STR             R2, [R1,#8]
STR             R7, [R0,#8]
STR             R7, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
B               loc_1FAD3C
LDRB            R1, [R0,#0xD]
CMP             R1, #0
BEQ             loc_1FAD3C
LDR             R1, [R0]
VMOV.F32        S0, S16
LDR             R1, [R1,#0x14]
BLX             R1
LDRB            R1, [R4,#0xC]
MOV             R0, R4
CMP             R1, #0
BEQ             loc_1FAD3C
ADD             R1, R0, #4
LDM             R1, {R1,R2}
MOV             R4, R1
STR             R1, [R2,#4]
ADD             R1, R0, #4
LDM             R1, {R1,R2}
STR             R2, [R1,#8]
STR             R7, [R0,#8]
STR             R7, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_1FAC9C
LDR             R0, [R6,#0xC]
CMP             R0, #0
BEQ             loc_1FAD70
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R6,#0xC]
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_1FAD74
MOV             R0, #0
VPOP            {D8}
POP             {R4-R8,PC}
