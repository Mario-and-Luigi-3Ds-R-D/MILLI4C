PUSH            {R4,LR}
MOV             R4, R0
MOV             R3, #0
LDR             R1, =dword_6ED9B8
MOV             R2, R3
MOV             R0, #0x6C ; 'l'
BL              sub_10A358
CMP             R0, #0
BEQ             loc_1E35E0
BL              sub_5370C4
LDR             R1, =off_6B81EC
LDR             R2, =off_68E854; "r" ...
STR             R1, [R0]
STR             R2, [R0,#0x68]
MOV             R3, #0
STR             R0, [R4,#0x10]
LDR             R1, =dword_6ED9B8
MOV             R2, R3
MOV             R0, #4
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1E3610
BL              sub_1E4E98
LDR             R1, =off_6B1980
STR             R1, [R0]
STR             R0, [R4,#0x54]
LDR             R0, [R4]
MOV             R1, #2
LDR             R2, [R0,#0x20]
MOV             R0, R4
POP             {R4,LR}
BX              R2
