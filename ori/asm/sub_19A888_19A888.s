PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xB0]
CMP             R0, #0
MOVNE           R0, #0
BNE             locret_19A8C4
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x78 ; 'x'
BL              sub_10A358
CMP             R0, #0
BLNE            sub_29BE6C
STR             R0, [R4,#0xB0]
MOV             R0, #1
POP             {R4,PC}
