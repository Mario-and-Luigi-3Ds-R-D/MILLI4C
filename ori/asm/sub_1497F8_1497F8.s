PUSH            {R4-R6,LR}
MOV             R6, R0
LDR             R0, [R2]
MOV             R5, R1
MOV             R4, R2
LDR             R1, [R0,#0x4C]
MOV             R0, R2
BLX             R1
CMP             R0, #0
BEQ             loc_14983C
LDR             R0, [R4]
ADD             R6, R6, #0x10
LDR             R1, [R0,#0x4C]
MOV             R0, R4
BLX             R1
STR             R0, [R6,R5,LSL#2]
POP             {R4-R6,PC}
LDR             R0, [R4]
LDR             R1, [R0,#0x50]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             locret_149838
LDR             R0, [R4]
ADD             R6, R6, #0x10
LDR             R1, [R0,#0x50]
MOV             R0, R4
BLX             R1
LDR             R0, [R0,#0x58]
ADD             R1, R6, R5,LSL#2
STR             R0, [R1,#0x30]
POP             {R4-R6,PC}
