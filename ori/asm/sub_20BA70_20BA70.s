PUSH            {R4,LR}
LDR             R12, [R2,#8]
LDR             R3, [R2,#0xC]
CMP             R1, #0
AND             R12, R12, #0xFF
AND             R3, R3, #0xFF
ADD             R12, R12, R12,LSL#1
ADDNE           R1, R1, #4
ADD             R12, R0, R12,LSL#2
ADD             R3, R12, R3,LSL#2
ADD             R3, R3, #0x800
MOVEQ           R1, #0
VLDR            S0, [R3,#0x2B4]
LDRH            R3, [R2,#2]
MOV             R2, R1
MOV             R1, R0
MOV             R0, R3
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
