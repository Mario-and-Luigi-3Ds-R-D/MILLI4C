PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x1F0]
MOV             R0, R4
BLX             R1
MOV             R1, #0x80
ADD             R0, R4, #0xCC
BL              sub_59BE7C
ADD             R0, R4, #0xCC
BL              sub_4B1570
ADD             R0, R4, #0xCC
BL              sub_59C598
LDR             R0, [R4]
LDR             R1, [R0,#0x290]
MOV             R0, R4
POP             {R4,LR}
BX              R1
