PUSH            {R4,LR}
LDR             R3, [R2,#8]
MOV             R3, R3,LSL#20
MOV             R3, R3,LSR#20
ADD             R3, R0, R3,LSL#3
LDR             R3, [R3,#0x2B4]
CMP             R3, #0
MOVEQ           R0, #0
BEQ             locret_212748
CMP             R1, #0
ADDNE           R1, R1, #4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4,PC}
