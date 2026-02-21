PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R1, #0
LDR             R2, [R0,#0xF0]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0xF4]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R3, #0
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DADC
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4,LR}
BX              R12
