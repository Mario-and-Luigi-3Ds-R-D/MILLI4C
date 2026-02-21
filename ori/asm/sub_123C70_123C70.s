PUSH            {R4}
LDRH            R4, [R0,#0xA]
MOV             R2, #0
STR             R2, [R0]
STRH            R1, [R0,#8]
MOV             R12, #0x100
MOV             R3, #1
BIC             R1, R4, #6
STRH            R12, [R0,#4]
ORR             R1, R1, #1
STRH            R3, [R0,#6]
STRH            R1, [R0,#0xA]
POP             {R4}
BX              LR
