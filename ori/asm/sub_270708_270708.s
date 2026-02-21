PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#0x584]
LDR             R4, [R5,#0x580]
CMP             R0, R4
BEQ             locret_27074C
LDR             R0, [R4]
LDR             R0, [R0,#0x71C]
CMP             R0, #0
BEQ             loc_27073C
LDR             R1, [R0]
LDR             R1, [R1,#0x18]
BLX             R1
LDR             R0, [R5,#0x584]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_270720
POP             {R4-R6,PC}
