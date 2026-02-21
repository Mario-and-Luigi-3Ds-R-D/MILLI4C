PUSH            {R4-R6,LR}
ADD             R4, R0, #0x10000
ADD             R4, R4, #0x26C0
MOV             R5, R0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_298650
BL              sub_110D10
MOV             R0, #0
STR             R0, [R4]
ADD             R4, R5, #0x12400
ADD             R4, R4, #0x2C4
ADD             R1, R5, #0x12400
LDR             R0, [R4,#8]
ADD             R1, R1, #0x2C8
CMP             R0, R1
BNE             loc_298684
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_298684
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
STR             R0, [R1,#4]
STR             R1, [R0]
SUB             R0, R4, #0x12400
SUB             R0, R0, #0x288
BL              sub_5BDB70
SUB             R0, R0, #0x3C ; '<'
POP             {R4-R6,PC}
