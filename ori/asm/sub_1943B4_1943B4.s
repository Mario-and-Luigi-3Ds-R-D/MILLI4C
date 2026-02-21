PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R1, #0
LDR             R2, [R0,#0x3C8]
MOV             R0, R4
BLX             R2
MOV             R5, R0
LDR             R0, [R4,#0x7FC]
LDR             R2, [R0,#0x1C]
LDRB            R1, [R0,#0x6C]
LDR             R0, [R0,#4]
BL              sub_136824
MOV             R1, R0
LDR             R0, [R5,#0x7FC]
POP             {R4-R6,LR}
B               sub_593084
