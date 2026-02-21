PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6BBD2C
ADD             R5, R4, #0x12400
ADD             R5, R5, #0x2C8
STR             R0, [R4]
LDR             R0, [R5]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_2585F8
BL              sub_110D10
STR             R6, [R5]
ADD             R5, R4, #0x12400
ADD             R5, R5, #0x2EC
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_258614
BL              sub_110D10
STR             R6, [R5]
ADD             R0, R4, #0x48 ; 'H'
BL              sub_5BDB70
SUB             R0, R0, #0x48 ; 'H'
POP             {R4-R6,PC}
