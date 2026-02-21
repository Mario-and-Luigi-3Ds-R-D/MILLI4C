PUSH            {R4-R6,LR}
MOV             R6, R0
ADD             R0, R0, #0x14000
ADD             R0, R0, #0x710
ADD             R5, R6, #0x15000
LDR             R1, [R0]
LDR             R0, [R5,#0xA8]
ADD             R4, R6, #0x14400
CMP             R1, #0
ADD             R4, R4, #0x18
AND             R0, R0, #1
BEQ             loc_15FD48
CMP             R0, #0
BEQ             loc_15FD38
MOV             R2, #0
LDR             R0, [R4]
MOV             R3, #2
MOV             R1, R2
BL              sub_3A2B2C
MOV             R3, #2
LDR             R0, [R4]
MOV             R2, #0
MOV             R1, R3
BL              sub_3A2B2C
LDR             R0, [R4]
MOV             R3, #2
MOV             R2, #0
MOV             R1, #1
BL              sub_3A2B2C
LDR             R0, [R5,#0xA8]
BIC             R0, R0, #1
STR             R0, [R5,#0xA8]
POP             {R4-R6,PC}
CMP             R0, #0
BNE             loc_15FD8C
LDR             R0, [R4]
MOV             R3, #2
MOV             R2, #1
MOV             R1, #0
BL              sub_3A2B2C
MOV             R3, #2
LDR             R0, [R4]
MOV             R2, #1
MOV             R1, R3
BL              sub_3A2B2C
MOV             R2, #1
LDR             R0, [R4]
MOV             R3, #2
MOV             R1, R2
BL              sub_3A2B2C
LDR             R0, [R5,#0xA8]
ORR             R0, R0, #1
STR             R0, [R5,#0xA8]
LDR             R0, [R4]
BL              sub_5DA46C
CMP             R0, #0
NOP
BNE             locret_15FD44
MOV             R0, R6
POP             {R4-R6,LR}
MOV             R2, #0
MOV             R1, R2
B               sub_15FB30
