PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, #0
ADD             R0, R4, R4,LSL#2
ADD             R0, R5, R0,LSL#4
ADD             R0, R0, #0x40 ; '@'
BL              sub_1E8C00
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_1961E4
MOV             R4, #0
RSB             R0, R4, R4,LSL#3
ADD             R0, R0, R4,LSL#6
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x130
BL              sub_536F74
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_196204
LDRB            R0, [R5,#0x374]
BIC             R0, R0, #1
STRB            R0, [R5,#0x374]
POP             {R4-R6,PC}
