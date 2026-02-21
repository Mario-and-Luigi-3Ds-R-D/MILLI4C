LDR             R0, =byte_6D23B8
LDR             R0, [R0,#(dword_6D23DC - 0x6D23B8)]
ADD             R2, R0, #0x9200
LDR             R3, [R0]
CMP             R3, R1
BNE             loc_113650
MOV             R0, #0
BX              LR
ADD             R0, R0, #0x248
CMP             R2, R0
BHI             loc_11363C
MOV             R0, #1
BX              LR
