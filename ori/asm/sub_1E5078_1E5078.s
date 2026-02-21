PUSH            {R4,LR}
ADD             R4, R0, #4
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             loc_1E50A8
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R4]
CMP             R0, #0
BNE             loc_1E508C
SUB             R0, R4, #4
POP             {R4,LR}
B               sub_300FD4
