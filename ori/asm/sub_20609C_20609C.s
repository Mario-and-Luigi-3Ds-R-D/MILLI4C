MOV             R3, #0
PUSH            {R4,LR}
ADD             R12, R0, R3,LSL#3
LDR             R12, [R12,#0x2B4]
CMP             R12, #0
BEQ             loc_2060C8
CMP             R1, #0
ADDNE           R1, R1, #4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4,PC}
ADD             R3, R3, #1
CMP             R3, #0x100
BLT             loc_2060A4
MOV             R0, #0
POP             {R4,PC}
