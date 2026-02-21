PUSH            {R4-R6,LR}
ADD             R5, R0, #0x14400
MOV             R6, R0
ADD             R5, R5, #0x94
MOV             R4, #0
RSB             R0, R4, R4,LSL#5
ADD             R0, R0, R4,LSL#6
ADD             R0, R5, R0,LSL#2
BL              sub_1E94A0
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_186E00
MOV             R0, R6
POP             {R4-R6,LR}
NOP
