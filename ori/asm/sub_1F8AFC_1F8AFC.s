PUSH            {R4-R8,LR}
MOV             R8, #0
ADD             R7, R0, #0x28 ; '('
STR             R8, [R0,#0x3C]
LDR             R6, [R0,#0x34]!
LDR             R5, [R0,#4]
CMP             R6, R5
BEQ             loc_1F8B64
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1F8B50
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1F8B50
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1F8B1C
STR             R8, [R7,#0xC]
STR             R8, [R7,#0x10]
LDR             R0, [R7,#8]
STR             R8, [R7,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R6, [R7,#0xC]!
LDR             R5, [R7,#4]
CMP             R6, R5
BEQ             loc_1F8BD4
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1F8BC0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1F8BC0
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1F8B8C
LDR             R0, [R7,#-4]
SUB             R4, R7, #4
CMP             R0, #0
BLNE            sub_2FF5D4
SUB             R0, R4, #0x30 ; '0'
POP             {R4-R8,PC}
