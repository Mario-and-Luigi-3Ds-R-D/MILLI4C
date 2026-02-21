PUSH            {R4,LR}
MOV             R4, R0
BL              sub_22CF20
LDR             R0, [R4]
ADD             R2, R4, #0x164
MOV             R1, #0
LDR             R3, [R0,#0xF0]
MOV             R0, R4
BLX             R3
LDR             R0, [R4]
ADD             R2, R4, #0x3F8
MOV             R1, #0
LDR             R3, [R0,#0x178]
MOV             R0, R4
BLX             R3
LDR             R0, [R4]
ADD             R2, R4, #0x400
ADD             R2, R2, #0x28 ; '('
MOV             R1, #0
LDR             R3, [R0,#0x194]
MOV             R0, R4
POP             {R4,LR}
BX              R3
