LDR             R1, =off_6BB3E0
PUSH            {R4,LR}
ADD             R4, R0, #8
STR             R1, [R0]
MOV             R1, #0
STR             R1, [R0,#0x1C]
STR             R1, [R0,#0x14]
STR             R1, [R0,#0x18]
LDR             R0, [R0,#0x10]
STR             R1, [R4,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R0, [R4,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
SUB             R0, R4, #8
POP             {R4,PC}
