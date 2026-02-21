PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R6, R1
MOV             R4, #0
ADD             R0, R5, R4,LSL#2
LDR             R0, [R0,#0x218]
CMP             R0, #0
BEQ             loc_198E58
LDR             R1, [R0]
LDR             R2, [R1,#0x144]
MOV             R1, R6
BLX             R2
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_198E38
POP             {R4-R6,PC}
