PUSH            {R4-R6,LR}
MOV             R6, R0
MOV             R4, #0
RSB             R0, R4, R4,LSL#6
ADD             R0, R6, R0,LSL#4
ADD             R5, R0, #0x38 ; '8'
ADD             R0, R0, #0x8C
BL              sub_536F74
ADD             R0, R5, #0x170
NOP
BL              sub_1E8C00
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1E8BB4
ADD             R4, R6, #0x800
ADD             R0, R6, #0x800
ADD             R4, R4, #0x18
ADD             R0, R0, #0x6C ; 'l'
BL              sub_536F74
ADD             R0, R4, #0x170
POP             {R4-R6,LR}
NOP
