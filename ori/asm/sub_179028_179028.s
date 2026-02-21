LDR             R1, =dword_6ED6E0
PUSH            {R4,LR}
LDR             R0, [R3,#8]
LDR             R2, =dword_6EF03C
STR             R0, [R1]
LDR             R0, =off_6D1648
ADR             R1, aRomRoPuzzleCro; "rom:/RO/Puzzle.cro"
LDR             R0, [R0]
ADD             R0, R0, #0x4000
ADD             R0, R0, #0x180
BL              sub_1E85D8
MOV             R0, #0
POP             {R4,PC}
