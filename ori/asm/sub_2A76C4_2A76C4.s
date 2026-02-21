PUSH            {R4-R6,LR}
MOV             R3, R0
LDR             R0, [R0]
ADD             R0, R0, #0x6C ; 'l'
LDR             R4, [R0,#0x28]
AND             R5, R4, #4
ORR             R4, R4, R5,LSL#3
STR             R4, [R0,#0x28]
LDR             R12, [R1]
LDR             R4, [R1,#4]
LDR             R1, [R1,#8]
STR             R12, [R0,#0x1C]!
MOV             R5, R2
STR             R4, [R0,#4]
STR             R1, [R0,#8]
LDR             R4, [R3]
MOV             R1, #7
LDR             R0, [R4,#4]
BICS            R1, R1, R0
BNE             locret_2A7740
TST             R0, #0x80
BEQ             loc_2A7734
MOV             R0, R4
BL              sub_5B7438
MOV             R0, R5
BL              sub_127FD4
MOV             R0, R5
BL              sub_128004
MOV             R1, R5
MOV             R0, R4
BL              sub_5B5828
POP             {R4-R6,PC}
