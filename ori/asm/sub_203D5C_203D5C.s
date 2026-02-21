PUSH            {R4-R6,LR}
MOV             R12, R1
LDR             R1, [R2,#0xC]
LDR             R3, [R2,#8]
AND             R4, R1, #0xFF
AND             R5, R3, #0xFF00
AND             R1, R3, #0xFF
CMP             R5, #0x7000
ADDEQ           R1, R0, R1,LSL#3
ADDEQ           R1, R1, #0x800
ADDEQ           R1, R1, #0x2E4
BEQ             loc_203D98
CMP             R5, #0x7100
MOVNE           R1, #0
BEQ             loc_203DB0
CMP             R4, #0
VLDR            S0, =0.0
BEQ             loc_203DCC
CMP             R4, #1
BNE             loc_203DE8
B               loc_203DDC
LDR             R3, =off_6CE970
LDR             R5, [R3]
MOV             R3, #0xA0
ADD             R1, R3, R1,LSL#3
LDR             R5, [R5,#4]
ADD             R1, R1, R5
B               loc_203D98
LDRH            R1, [R1]
VMOV            S0, R1
VCVT.F32.U32    S0, S0
B               loc_203DE8
LDRH            R1, [R1,#2]
VMOV            S0, R1
VCVT.F32.U32    S0, S0
CMP             R12, #0
LDRH            R3, [R2,#2]
ADDNE           R1, R12, #4
MOVEQ           R1, #0
MOV             R2, R1
MOV             R1, R0
MOV             R0, R3
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
