PUSH            {R4,LR}
LDR             R4, =off_6CE970
LDR             R12, =0x19CF48
LDR             R3, [R2,#0xC]
LDR             R4, [R4]
AND             R3, R3, #0xFF
ADD             R4, R4, R12
LDR             R12, [R2,#8]
LDR             R4, [R4]
ANDS            R12, R12, R4
MOVNE           R12, #1
CMP             R12, R3
MOVEQ           R0, #0
BEQ             locret_2052F4
CMP             R1, #0
ADDNE           R1, R1, #4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4,PC}
