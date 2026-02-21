PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, #0
ADD             R0, R5, R4,LSL#3
LDR             R0, [R0,#0x2B4]
CMP             R0, #0
BLNE            sub_533330
ADD             R4, R4, #1
CMP             R4, #0x100
BLT             loc_206050
MOV             R0, #0
POP             {R4-R6,PC}
