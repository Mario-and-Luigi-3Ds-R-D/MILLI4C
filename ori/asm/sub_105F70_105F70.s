PUSH            {R4-R6,LR}
LDR             R0, =byte_6EB9E0
BL              sub_106990
BL              sub_109CD4
LDR             R0, =dword_6CF8B8
LDR             R2, =dword_6EB9D4
MOV             R4, #0
STR             R4, [R0]
LDRD            R0, R1, [R2]
CMP             R0, R1
BEQ             loc_105FAC
SUB             R0, R1, R0
BIC             R0, R0, #3
SUB             R0, R1, R0
STR             R0, [R2,#(dword_6EB9D8 - 0x6EB9D4)]
LDR             R1, =dword_6EB9C8
LDR             R0, [R1,#(dword_6EB9CC - 0x6EB9C8)]
LDR             R2, [R1]
CMP             R2, R0
BEQ             loc_105FD0
SUB             R2, R0, R2
BIC             R2, R2, #0xF
SUB             R0, R0, R2
STR             R0, [R1,#(dword_6EB9CC - 0x6EB9C8)]
NOP
BL              sub_109B90
LDR             R0, =dword_6EB9D4
LDR             R0, [R0]
CMP             R0, #0
BLNE            sub_110D10
LDR             R0, =dword_6EB9C8
LDR             R0, [R0]
CMP             R0, #0
BLNE            sub_110D10
LDR             R5, =dword_6CF8BC
LDR             R0, [R5]
CMP             R0, #0
BEQ             locret_106010
BL              sub_110D10
STR             R4, [R5]
POP             {R4-R6,PC}
