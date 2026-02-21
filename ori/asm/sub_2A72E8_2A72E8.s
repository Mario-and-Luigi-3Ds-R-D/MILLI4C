PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R5, R0, #0x300
MOVS            R0, R1
STRH            R0, [R5,#0xF4]
BEQ             locret_2A735C
LDR             R6, =off_6CE970
LDR             R2, =0x138F24
CMP             R0, #0x1000
LDR             R1, [R6]
ADD             R3, R1, R2; loc_138F24
BEQ             loc_2A7360
SUB             R1, R0, #0x1000
SUBS            R1, R1, #1
BEQ             loc_2A7378
BL              sub_47FF54
CMP             R0, #0
BEQ             locret_2A735C
LDRH            R1, [R5,#0xF4]
LDR             R0, [R6]
BL              sub_52F508
ADD             R0, R0, #0x100
LDR             R3, [R6]
LDRH            R1, [R0,#0xC0]
LDR             R0, =0x138F9C
MOV             R2, #0
ADD             R0, R0, R3; loc_138F9C
BL              sub_571558
STR             R0, [R4,#0x3F8]
POP             {R4-R6,PC}
MOV             R2, #0
MOV             R1, #0xC
MOV             R0, R3
BL              sub_571558
STR             R0, [R4,#0x3F8]
POP             {R4-R6,PC}
MOV             R2, #0
MOV             R1, #0xD
MOV             R0, R3
BL              sub_571558
STR             R0, [R4,#0x3F8]
POP             {R4-R6,PC}
