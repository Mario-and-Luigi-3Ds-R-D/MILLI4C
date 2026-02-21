PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R1]
MOV             R5, R1
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_2AE4D0
CMP             R0, #1
BEQ             loc_2AE4E8
MOV             R1, R5
MOV             R0, R4
POP             {R4-R6,LR}
MOV             R2, #0
B               sub_2AE500
ADD             R2, R4, #0x15000
MOV             R1, R5
MOV             R0, R4
POP             {R4-R6,LR}
ADD             R2, R2, #0x208
B               sub_2AE500
ADD             R2, R4, #0x15000
MOV             R1, R5
MOV             R0, R4
POP             {R4-R6,LR}
ADD             R2, R2, #0x210
NOP
