PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
LDR             R0, [R5]
BL              sub_5C8540
CMP             R0, #0
BEQ             loc_162C10
LDR             R0, [R5]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x19C]
BLX             R1
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_68E834
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
