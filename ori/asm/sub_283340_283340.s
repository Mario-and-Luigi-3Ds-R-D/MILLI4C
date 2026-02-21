PUSH            {R4-R8,LR}
ADD             R5, R0, #0x20 ; ' '
ADD             R1, R5, #4
LDR             R0, [R0,#0x28]
MOV             R8, #0
CMP             R0, R1
BNE             loc_2833A8
LDR             R4, [R5]
CMP             R4, #0
BEQ             loc_2833A8
LDR             R0, [R4,#0x428]
CMP             R0, #0
BEQ             loc_28338C
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R4,#0x428]
CMP             R0, #0
STRNE           R8, [R0,#0x64]
STRNE           R8, [R4,#0x428]
LDR             R1, =off_6C0770
ADD             R0, R4, #8
STR             R1, [R4,#0x424]
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
ADD             R1, R5, #4
SUB             R7, R5, #0x18
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R8, [R5,#-4]
LDR             R6, [R5,#-0xC]
LDR             R5, [R5,#-8]
CMP             R6, R5
BEQ             loc_28341C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_283408
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_283408
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_2833D0
STR             R8, [R7,#0xC]
STR             R8, [R7,#0x10]
LDR             R0, [R7,#8]
STR             R8, [R7,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R6, [R7,#0xC]!
LDR             R5, [R7,#4]
CMP             R6, R5
BEQ             loc_283490
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_28347C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_28347C
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_283444
LDR             R0, [R7,#-4]
SUB             R4, R7, #4
CMP             R0, #0
BLNE            sub_2FF5D4
SUB             R0, R4, #0x10
POP             {R4-R8,PC}
