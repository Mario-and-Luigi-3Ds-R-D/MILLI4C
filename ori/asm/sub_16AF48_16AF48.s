PUSH            {R4,LR}
LDR             R4, =off_6D1648
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
CMP             R0, #0
BEQ             locret_16AF80
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
POP             {R4,LR}
B               sub_37F74C
POP             {R4,PC}
