MOV             R2, R1
MOV             R1, R0
MOV             R0, #4
NOP
SVC             0x3C ; '<'
BX              LR
