PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
CMP             R0, #9
BEQ             locret_134240
LDR             R0, [R4,#8]
CMP             R0, #0
BNE             locret_134240
ADD             R0, R4, #0x34 ; '4'
BL              sub_13F878
MOV             R1, R0
MOV             R0, #0x100
BL              sub_2FEFCC
LDR             R1, [R4,#0x48]
ADD             R0, R0, R1
MOV             R0, R0,LSL#22
MOV             R0, R0,LSR#22
STR             R0, [R4,#0x48]
POP             {R4,PC}
