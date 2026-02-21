ADD             R2, R0, #0x14400
ADD             R0, R0, #0x14400
MOV             R1, #0
ADD             R0, R0, #4
STR             R1, [R2]
STR             R1, [R0]
BX              LR
