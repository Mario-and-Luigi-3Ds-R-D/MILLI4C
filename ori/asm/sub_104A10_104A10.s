PUSH            {R4,LR}
LDR             R4, =dword_6D4B30
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_104A3C
SVC             0x23 ; '#'
MOVS            R1, R0,LSR#31
BNE             locret_104A40
LDR             R0, =dword_698248
LDR             R0, [R0]
STR             R0, [R4]
MOV             R0, #0
POP             {R4,PC}
