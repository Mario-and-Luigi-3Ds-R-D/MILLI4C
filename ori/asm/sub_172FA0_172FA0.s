PUSH            {R4-R6,LR}
MOV             R5, R0
BL              sub_1E5C94
MOV             R4, #0
LDR             R0, [R5,#4]
ADD             R1, R4, R4,LSL#2
ADD             R1, R1, R4,LSL#5
ADD             R2, R5, R1,LSL#3
ADD             R1, R0, #0x13800
ADD             R0, R2, #0x800
ADD             R1, R1, #0x374
ADD             R0, R0, #0x328
BL              loc_2325B0
ADD             R4, R4, #1
CMP             R4, #6
BLT             loc_172FB0
POP             {R4-R6,PC}
