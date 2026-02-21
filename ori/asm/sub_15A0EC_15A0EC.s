PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xFC]
MOV             R5, R1
BIC             R0, R0, #0x10
STR             R0, [R4,#0xFC]
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R1, [R0,#0x1B4]
BIC             R1, R1, #0x10
STR             R1, [R0,#0x1B4]
LDR             R0, [R4,#0xFC]
TST             R0, #1
BEQ             loc_15A198
LDRB            R0, [R5,#8]
TST             R0, #1
BEQ             loc_15A18C
LDRD            R0, R1, [R4,#0xC8]
ADD             R2, R4, #0xD8
STRD            R0, R1, [R4,#0xD0]
LDRD            R0, R1, [R5]
STRD            R0, R1, [R4,#0xC8]
ADD             R1, R4, #0xC8
MOV             R0, R4
BL              sub_15A6EC
CMP             R0, #0
MOVNE           R0, R4
BLNE            sub_159FBC
MOV             R0, R4
BL              sub_15A33C
LDR             R0, [R4,#4]
ADD             R1, R4, #0xC8
BL              sub_505BC0
LDR             R0, [R4,#0xFC]
ORR             R0, R0, #0x10
STR             R0, [R4,#0xFC]
POP             {R4-R6,PC}
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_159FBC
LDR             R0, [R4,#4]
POP             {R4-R6,LR}
MOV             R3, #1
MOV             R2, R3
MOV             R1, #0
B               sub_507CD8
