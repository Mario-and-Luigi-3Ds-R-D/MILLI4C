PUSH            {R4,LR}
ADD             R1, R0, #0x400
MOV             R4, R0
LDR             R0, [R0,#0x758]
ADD             R1, R1, #0x358
LDR             R2, [R0,#0x24]
MOV             R0, R1
BLX             R2
LDR             R0, [R4]
LDR             R1, [R0,#0x318]
MOV             R0, R4
POP             {R4,LR}
BX              R1
