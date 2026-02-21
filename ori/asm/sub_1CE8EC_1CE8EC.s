LDR             R1, =off_6B1648
LDR             R2, =off_6B77D0
STR             R1, [R0]
STR             R2, [R0,#0x40]
LDR             R2, =off_6C075C
ADD             R1, R0, #0x4C ; 'L'
STR             R2, [R0,#0x4C]
LDR             R2, [R0,#0x50]
CMP             R2, #0
BEQ             locret_1CE920
MOV             R3, #0
STR             R3, [R2,#0x184]
STR             R3, [R1,#4]
BX              LR
