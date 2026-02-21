LDR             R0, [R0,#0x3B0]
CMP             R0, #0
BEQ             locret_14E970
MOV             R2, #1
B               sub_4FE01C
BX              LR
