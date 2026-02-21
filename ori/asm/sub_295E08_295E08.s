PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R1, =off_6BC5D8
ADD             R4, R0, #0x14
STR             R1, [R0]
LDR             R0, [R0,#0x1C]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_295E38
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
LDRD            R0, R1, [R4,#4]
ADD             R4, R5, #8
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R5,#0x10]
ADD             R1, R5, #0xC
CMP             R0, R1
BNE             loc_295E64
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
LDRD            R0, R1, [R4,#4]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, R5
POP             {R4-R6,LR}
B               sub_300FD4
