PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R6, R1
MOV             R4, #0
MOV             R2, R6
ADD             R0, R4, R4,LSL#2
MOV             R1, #2
ADD             R0, R5, R0,LSL#4
ADD             R0, R0, #0x40 ; '@'
BL              sub_1E8C6C
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_196244
POP             {R4-R6,PC}
