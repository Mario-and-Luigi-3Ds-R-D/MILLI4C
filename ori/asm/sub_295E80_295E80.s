LDR             R1, =off_6BC5D8
PUSH            {R4,LR}
ADD             R4, R0, #0x14
STR             R1, [R0]
LDR             R0, [R0,#0x1C]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_295EAC
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
SUB             R4, R4, #0xC
STR             R0, [R1,#4]
STR             R1, [R0]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_295EDC
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
ADD             R1, R4, #4
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
SUB             R0, R4, #8
POP             {R4,PC}
