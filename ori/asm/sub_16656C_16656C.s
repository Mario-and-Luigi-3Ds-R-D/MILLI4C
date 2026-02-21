LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
BL              sub_1E45C8
MOV             R4, R0
BL              sub_535C48
LDR             R0, [R4]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x198]
MOV             R0, R4
BLX             R3
LDR             R0, [R4]
MOV             R2, #0
MOV             R1, #1
LDR             R3, [R0,#0x198]
MOV             R0, R4
POP             {R4,LR}
BX              R3
