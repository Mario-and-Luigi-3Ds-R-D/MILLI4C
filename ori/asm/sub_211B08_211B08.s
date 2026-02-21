PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R3, [R2,#8]
ADD             R1, R2, #0xC
LDM             R1, {R1,R12}
AND             R5, R3, #0xFF00
AND             R3, R3, #0xFF
CMP             R5, #0x7000
ADDEQ           R3, R0, R3,LSL#3
ADDEQ           R3, R3, #0x800
UXTH            R1, R1
UXTH            R12, R12
ADDEQ           R3, R3, #0x2E4
BEQ             loc_211B4C
CMP             R5, #0x7100
MOVNE           R3, #0
BEQ             loc_211B88
LDRH            R5, [R3,#2]
LDR             R3, [R3,#4]
CMP             R4, #0
MLA             R1, R1, R5, R12
ADD             R1, R3, R1,LSL#2
LDRH            R3, [R2,#2]
VLDR            S0, [R1]
ADDNE           R1, R4, #4
MOVEQ           R1, #0
MOV             R2, R1
MOV             R1, R0
MOV             R0, R3
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
LDR             R5, =off_6CE970
LDR             R6, [R5]
MOV             R5, #0xA0
ADD             R3, R5, R3,LSL#3
LDR             R6, [R6,#4]
ADD             R3, R3, R6
B               loc_211B4C
