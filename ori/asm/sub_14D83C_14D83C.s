MOV             R1, #0
ADD             R0, R0, #0x3E0
MOV             R2, R1
MOV             R3, R1
STM             R0, {R1-R3}
BX              LR
