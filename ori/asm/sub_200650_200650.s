PUSH            {R4,LR}
LDR             R1, [R0,#0x120]
TST             R1, #4
BEQ             locret_200688
LDR             R0, =off_6D1648
LDR             R0, [R0]
CMP             R0, #0
BEQ             locret_200688
TST             R1, #1
BNE             locret_200688
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
MOV             R1, #0
STR             R1, [R0,#0x1CC]
POP             {R4,PC}
