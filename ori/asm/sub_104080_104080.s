PUSH            {R4-R6,LR}
LDR             R4, =0x6C8124
LDR             R5, =0x6C8124
CMP             R4, R5
BCS             locret_1040A8
LDR             R0, [R4]
BLX             R0
ADD             R4, R4, #4
CMP             R4, R5
BCC             loc_104094
POP             {R4-R6,PC}
