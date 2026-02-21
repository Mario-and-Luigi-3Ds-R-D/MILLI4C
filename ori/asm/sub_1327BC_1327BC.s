LDR             R1, [R0,#8]
SUBS            R1, R1, #1
STR             R1, [R0,#8]
BNE             locret_1327D8
MOV             R1, #0
STR             R1, [R0,#4]
B               sub_120FBC
BX              LR
