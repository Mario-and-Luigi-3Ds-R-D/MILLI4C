PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xA8]
CMP             R0, #0
BNE             locret_19B420
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0xAC
BL              sub_10A358
CMP             R0, #0
BLNE            sub_1F65D8
STR             R0, [R4,#0xA8]
POP             {R4,PC}
