PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x40]
BLX             R1
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x28]
LDR             R0, =off_67E364
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4,LR}
BX              R12
