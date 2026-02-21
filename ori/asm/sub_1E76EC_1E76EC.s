MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
MOV             R0, R1
LDR             R1, [R1]
MOV             R12, R2
ADD             R2, R0, #0x58 ; 'X'
LDR             R3, [R1,#0x10]
MOV             R1, R12
BX              R3
