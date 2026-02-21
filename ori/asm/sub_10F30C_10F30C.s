PUSH            {R4,LR}
LDR             R4, =byte_6D2498
LDR             R1, [R4,#(off_6D24D8 - 0x6D2498)]
CMP             R1, #0
LDRNE           R0, [R4,#(dword_6D2518 - 0x6D2498)]
BLXNE           R1
LDR             R1, [R4,#(off_6D24DC - 0x6D2498)]
CMP             R1, #0
BEQ             locret_10F33C
LDR             R0, [R4,#(dword_6D251C - 0x6D2498)]
POP             {R4,LR}
BX              R1
POP             {R4,PC}
