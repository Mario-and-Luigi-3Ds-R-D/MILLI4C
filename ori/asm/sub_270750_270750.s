PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#0x584]
LDR             R4, [R5,#0x580]
CMP             R0, R4
BEQ             locret_270780
LDR             R0, [R4]
BL              sub_27D46C
LDR             R0, [R5,#0x584]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_270768
POP             {R4-R6,PC}
