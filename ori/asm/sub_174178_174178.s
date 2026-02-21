ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, R1
LDR             R1, [R1]
LDR             R1, [R1,#0x24]
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x318]
MOV             R0, R4
POP             {R4,LR}
BX              R1
