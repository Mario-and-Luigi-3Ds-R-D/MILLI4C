PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, #0
ADD             R0, R4, R4,LSL#2
ADD             R0, R0, R4,LSL#5
ADD             R0, R5, R0,LSL#3
ADD             R0, R0, #0x800
ADD             R0, R0, #0x328
BL              sub_23276C
ADD             R4, R4, #1
CMP             R4, #6
BLT             loc_1E5DBC
MOV             R0, R5
POP             {R4-R6,LR}
NOP
