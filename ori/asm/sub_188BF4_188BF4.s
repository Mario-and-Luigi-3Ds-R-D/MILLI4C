PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R1, #0
LDR             R2, [R0,#0xD0]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BNE             locret_188C4C
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x148]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DABC
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4,LR}
BX              R12
POP             {R4,PC}
