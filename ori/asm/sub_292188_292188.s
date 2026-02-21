PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R1, =off_6BC4D8
ADD             R4, R0, #8
STR             R1, [R0]
LDR             R0, [R0,#8]
CMP             R0, #0
BEQ             loc_2921B4
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R4,#8]
ADD             R2, R4, #4
CMP             R1, R2
BNE             loc_2921E0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_292200
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_292200
ADD             R0, R4, #4
CMP             R1, R0
BEQ             loc_292200
LDR             R2, [R0]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R0]
STR             R0, [R0,#4]
MOV             R1, #0
STR             R1, [R4]
LDR             R1, [R4,#4]!
LDR             R0, [R4,#4]
STR             R0, [R1,#4]
STR             R1, [R0]
MOV             R0, R5
POP             {R4-R6,LR}
B               sub_300FD4
