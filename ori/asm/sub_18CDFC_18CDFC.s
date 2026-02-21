PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R1, #0
LDR             R2, [R0,#0x198]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
LDR             R1, [R0,#0x19C]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DD7C
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4,LR}
BX              R12
