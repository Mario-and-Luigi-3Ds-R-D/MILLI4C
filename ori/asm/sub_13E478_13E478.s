LDR             R2, =0x7FFF
CMP             R1, R2
MOVGT           R1, R2
CMP             R1, #0
MOV             R2, #0
MOVLT           R1, R2
MOV             R2, R1
STR             R1, [R0,#0x20]
MOV             R1, R0
LDR             R0, =dword_710418
B               sub_13E300
