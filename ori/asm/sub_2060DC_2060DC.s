LDR             R3, =off_6CE970
PUSH            {R4,LR}
LDR             R3, [R3]
ADD             R3, R3, #0x190000
ADD             R3, R3, #0xD600
LDRH            R3, [R3,#0x9E]
CMP             R3, #0
MOVEQ           R0, #0
BEQ             locret_206110
CMP             R1, #0
ADDNE           R1, R1, #4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4,PC}
