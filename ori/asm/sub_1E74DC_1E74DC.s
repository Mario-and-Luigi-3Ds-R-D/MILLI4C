MOV             R0, #0
STR             R0, [R1,#0x2F8]
ADD             R2, R1, #0x334
STR             R0, [R1,#0x2FC]
STR             R0, [R1,#0x300]
LDM             R2, {R2,R3,R12}
STR             R0, [R1,#0x34C]
ADD             R1, R1, #0x340
STM             R1, {R2,R3,R12}
BX              LR
