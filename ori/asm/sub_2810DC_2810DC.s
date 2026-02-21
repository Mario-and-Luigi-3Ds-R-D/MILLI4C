PUSH            {R4,LR}
ADD             R4, R0, #4
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             loc_2810FC
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_281130
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_281124
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4]
POP             {R4,PC}
LDR             R2, [R4,#4]
ADD             R1, R4, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R4,#4]
STR             R1, [R4,#8]
B               loc_281124
