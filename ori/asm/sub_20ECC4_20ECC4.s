PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R4, R1
LDR             R7, =off_6CE970
LDR             R0, =0x119888
MOV             R5, R2
VPUSH           {D8}
LDR             R1, [R7]
VLDR            S16, =0.0
ADD             R0, R0, R1
BL              sub_3375F4
CMP             R0, #0
BEQ             loc_20ED28
LDR             R0, =0x120F4C
LDR             R1, [R7]
ADD             R0, R0, R1
BL              sub_5CEA34
CMP             R0, #0
BEQ             loc_20ED28
LDR             R0, [R7]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xD600
LDRSH           R0, [R0,#0xA0]
CMP             R0, #0
BLE             loc_20ED2C
VLDR            S16, =1.0
CMP             R4, #0
LDRH            R0, [R5,#2]
VMOV.F32        S0, S16
ADDNE           R2, R4, #4
MOVEQ           R2, #0
MOV             R1, R6
BL              sub_145730
VPOP            {D8}
MOV             R0, #0
POP             {R4-R8,PC}
