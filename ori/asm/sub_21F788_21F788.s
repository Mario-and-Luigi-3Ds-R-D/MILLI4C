PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#0x1C4]
LDR             R1, [R5,#0xF8]
BIC             R0, R0, #2
CMP             R1, #0
MOVNE           R4, #0
STR             R0, [R5,#0x1C4]
BEQ             locret_21F7D0
RSB             R0, R4, R4,LSL#3
ADD             R0, R0, R4,LSL#4
MOV             R1, #0
ADD             R0, R5, R0,LSL#3
ADD             R0, R0, #0x54 ; 'T'
BL              sub_194BC0
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_21F7AC
POP             {R4-R6,PC}
