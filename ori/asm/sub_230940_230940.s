PUSH            {R4,LR}
MOV             R4, R0
BL              sub_22CF38
LDR             R0, [R4]
ADD             R1, R4, #0x164
LDR             R2, [R0,#0xF4]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x3F8
LDR             R2, [R0,#0x17C]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x400
ADD             R1, R1, #0x28 ; '('
LDR             R2, [R0,#0x198]
MOV             R0, R4
POP             {R4,LR}
BX              R2
