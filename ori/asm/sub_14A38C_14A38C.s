PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R6, R1
MOV             R7, R2
MOV             R8, R3
MOV             R4, #0
STR             R2, [R0,#0x30]
ADD             R0, R6, R4
AND             R1, R0, #0xFF
MOV             R2, #0
MOV             R0, R7
BL              sub_5F1648
STR             R0, [R5,R4,LSL#2]
ADD             R4, R4, #1
CMP             R4, #0xA
BLT             loc_14A3A8
MOV             R0, #0
STRB            R8, [R5,#0x34]
STR             R0, [R5,#0x28]
STR             R0, [R5,#0x2C]
POP             {R4-R8,PC}
