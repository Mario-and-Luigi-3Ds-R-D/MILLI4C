ADD             R12, R0, #0xC
ADD             R2, R2, R1
STM             R12, {R1,R2}
MOV             R3, #0
STR             R1, [R0,#4]
STR             R1, [R0,#8]
STR             R3, [R1]
LDR             R0, [R0,#0x10]
STR             R3, [R1,#4]!
STR             R0, [R1,#4]
BX              LR
