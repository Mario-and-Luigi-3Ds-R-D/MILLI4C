PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
LDR             R5, =off_67DC1C
LDR             R1, [R0]
LDR             R0, [R4]
LDR             R1, [R1,#0xC8]
TST             R1, #7
BEQ             loc_18EC60
LDR             R1, [R0,#0xD8]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
ADD             R5, R5, #0xB8
MOV             R3, #1
LDM             R5, {R1,R2}
LDR             R12, [R0,#0x50]
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
LDR             R2, [R0,#0xC8]
MOV             R1, #0
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R5, R5, #0xC0
MOV             R3, #1
LDM             R5, {R1,R2}
LDR             R12, [R0,#0x50]
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
