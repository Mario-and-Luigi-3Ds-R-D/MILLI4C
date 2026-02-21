PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R6, R1
LDR             R7, =off_653D88
MOV             R4, #0
MOV             R2, #0x10
ADD             R1, R7, R4,LSL#4
ADD             R0, R5, R4,LSL#5
BL              sub_1103A4
ADD             R4, R4, #1
CMP             R4, #0x14
BLT             loc_1CF270
MOV             R0, #1
STRB            R0, [R5,#0x284]
MOV             R1, R6; int
MOV             R0, R5; int
POP             {R4-R8,LR}
B               sub_1CF120
