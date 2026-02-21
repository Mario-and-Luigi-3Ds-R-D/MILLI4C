PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x330
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_1A3280
LDR             R4, [R4,#4]
LDR             R0, [R4,#0x68]!
CMP             R0, #0
BEQ             loc_1A3250
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_1A3284
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1A3278
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
B               loc_1A3278
