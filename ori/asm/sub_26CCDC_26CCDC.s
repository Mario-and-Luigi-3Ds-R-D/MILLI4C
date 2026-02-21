PUSH            {R4-R8,LR}
ADD             R4, R0, #0x1C
ADD             R1, R4, #4
LDR             R0, [R0,#0x24]
CMP             R0, R1
BNE             loc_26CD08
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26CD08
BL              sub_273C74
BL              sub_300FD4
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
MOV             R8, #0
SUB             R7, R4, #0x1C
STR             R0, [R1,#4]
STR             R1, [R0]
STR             R8, [R4,#-8]
LDR             R5, [R4,#-0xC]!
LDR             R6, [R4,#-4]
CMP             R6, R5
BEQ             loc_26CD90
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_26CD7C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26CD7C
ADD             R0, R0, #0x400
ADD             R0, R0, #4
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26CD34
STR             R8, [R7,#0xC]
STR             R8, [R7,#0x10]
LDR             R0, [R7,#8]
STR             R8, [R7,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R6, [R7,#0xC]!
LDR             R5, [R7,#4]
CMP             R6, R5
BEQ             loc_26CE14
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_26CE00
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26CE00
ADD             R0, R0, #0x400
ADD             R0, R0, #4
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26CDB8
LDR             R0, [R7,#-4]
SUB             R4, R7, #0xC
CMP             R0, #0
BLNE            sub_2FF5D4
MOV             R0, R4
POP             {R4-R8,PC}
