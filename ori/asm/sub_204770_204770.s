PUSH            {R4,LR}
LDR             R3, [R2,#8]
CMP             R1, #0
ADDNE           R1, R1, #4
AND             R3, R3, #0xFF
ADD             R12, R0, R3,LSL#2
LDRH            R3, [R2,#2]
MOV             R2, R1
MOV             R1, R0
VLDR            S0, [R12,#0x190]
MOV             R0, R3
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
