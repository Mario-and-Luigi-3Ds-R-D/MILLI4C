PUSH            {R4-R8,LR}
CMP             R1, #0
MOVEQ           R4, #0
LDR             R0, [R0]
ADDEQ           R5, R0, #0x14800
ADDEQ           R5, R5, #0x284
BEQ             loc_1CC84C
ADD             R0, R0, #0x14800
ADD             R0, R0, #0x284
MOV             R7, R0
BL              sub_5EA334
MOV             R5, #0
MOV             R6, R0
MOV             R4, R5
MOV             R1, R4
MOV             R0, R7
BL              sub_5EA50C
ADD             R1, R4, #1
ADD             R0, R0, R5
AND             R4, R1, #0xFF
UXTH            R5, R0
CMP             R4, #2
BCC             loc_1CC7EC
SUB             R0, R6, R5
MOV             R1, #0
UXTH            R0, R0
MOV             R3, #1
MOV             R2, R0,LSR#1
SUB             R0, R0, R2
UXTH            R4, R0
MOV             R0, R7
BL              loc_4D4AFC
MOV             R2, R4
MOV             R0, R7
POP             {R4-R8,LR}
MOV             R1, #1
MOV             R3, R1
B               loc_4D4AFC
MOV             R1, R4
MOV             R0, R5
BL              loc_4D3B44
ADD             R0, R4, #1
AND             R4, R0, #0xFF
CMP             R4, #2
BCC             loc_1CC84C
POP             {R4-R8,PC}
