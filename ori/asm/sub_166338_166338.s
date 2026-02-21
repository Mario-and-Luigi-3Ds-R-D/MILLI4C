PUSH            {R4-R6,LR}
CMP             R1, #0xD
MOV             R4, R0
MOV             R6, R1
BNE             loc_16635C
ADD             R0, R4, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
MOV             R6, R0
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_1E45C8
ADD             R4, R4, #0x17800
ADD             R4, R4, #0x2C8
MOV             R5, R0
LDRB            R1, [R4]
MOV             R2, R6
BL              sub_5354E8
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x198]
MOV             R0, R5
BLX             R3
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, #1
LDR             R3, [R0,#0x198]
MOV             R0, R5
POP             {R4-R6,LR}
BX              R3
