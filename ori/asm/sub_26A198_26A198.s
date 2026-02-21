PUSH            {R4,LR}
ADD             R4, R0, #0x12400
ADD             R4, R4, #0x2B4
ADD             R1, R4, #4
LDR             R0, [R4,#8]
CMP             R0, R1
BNE             loc_26A1CC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26A1CC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
STR             R0, [R1,#4]
STR             R1, [R0]
SUB             R0, R4, #0x10000
SUB             R0, R0, #0x2680
BL              sub_5BDB70
SUB             R0, R0, #0x34 ; '4'
POP             {R4,PC}
