PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
CMP             R2, #0xFF
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R5, [R0,#4]
BEQ             loc_19A834
MOV             R12, #0x10
LDR             R3, [R5,#0x4EC]
AND             R2, R12, R2,LSL#4
BIC             R3, R3, #0x10
ORR             R2, R2, R3
STR             R2, [R5,#0x4EC]
CMP             R1, #0
BEQ             loc_19A85C
MOV             R0, R5
BL              sub_16C938
MOV             R1, #1
MOV             R0, R5
BL              sub_16C788
LDR             R0, [R4,#0x1B4]
BIC             R0, R0, #0x40 ; '@'
B               loc_19A87C
MOV             R1, #0xC8
MOV             R0, R5
BL              sub_16C920
MOV             R1, #0
MOV             R0, R5
BL              sub_16C788
LDR             R0, [R4,#0x1B4]
ORR             R0, R0, #0x40 ; '@'
STR             R0, [R4,#0x1B4]
POP             {R4-R6,PC}
