PUSH            {R4-R6,LR}
CMP             R2, #0
LDR             R5, =off_6CE970
MOV             R4, R0
BEQ             loc_14C66C
CMP             R2, #1
BEQ             loc_14C63C
CMP             R2, #2
BNE             loc_14C6A4
B               loc_14C694
NOP
BL              sub_4800C0
LDR             R0, [R5]
MOV             R2, R4
MOV             R3, #1
ADD             R0, R0, #0x10C000
MOV             R1, R2
ADD             R0, R0, #0x214
BL              sub_5F1314
NOP
NOP
B               loc_14C6A4
MOV             R2, R1
MOV             R1, R0
LDR             R0, [R5]
MOV             R3, #1
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_5F1314
NOP
NOP
B               loc_14C6A4
LDM             R1, {R0,R2}
LDR             R1, [R1,#8]
STR             R1, [R4,#8]
STM             R4, {R0,R2}
MOV             R0, R4
POP             {R4-R6,PC}
